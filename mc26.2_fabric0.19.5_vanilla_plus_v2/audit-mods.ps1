# audit-mods.ps1
# Identifies every .jar in the mods folder on Modrinth (by SHA-512 hash) and generates:
#   - mods-audit.csv : what each mod is, the license its author declares, and whether it is on Modrinth
#   - mods.lock.tsv  : name <TAB> sha512 <TAB> official download URL (used by install-mods.*)
#
# Usage (from the kit folder, where mods\ is located):
#   powershell -ExecutionPolicy Bypass -File .\audit-mods.ps1
param(
    [string]$ModsDir = ".\mods"
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$Api = "https://api.modrinth.com/v2"
$Headers = @{ "User-Agent" = "rxdo5/MCServerKits (mod audit script)" }
$Here = (Resolve-Path ".").Path

$jars = Get-ChildItem -Path $ModsDir -Filter *.jar -File
if (-not $jars) { throw "No .jar files found in $ModsDir" }

# 1) SHA-512 hash of every jar
$byHash = @{}
foreach ($j in $jars) {
    $h = (Get-FileHash -Algorithm SHA512 -Path $j.FullName).Hash.ToLower()
    $byHash[$h] = $j.Name
}

# 2) Ask Modrinth which version matches each hash
$hashList = @($byHash.Keys)
$body = @{ hashes = $hashList; algorithm = "sha512" } | ConvertTo-Json -Compress
$versions = Invoke-RestMethod -Method Post -Uri "$Api/version_files" -Headers $Headers `
    -ContentType "application/json" -Body $body

$found = @{}
foreach ($p in $versions.PSObject.Properties) { $found[$p.Name] = $p.Value }

# 3) Project data (title, slug, license)
$projectIds = @($found.Values | ForEach-Object { $_.project_id } | Sort-Object -Unique)
$projects = @{}
for ($i = 0; $i -lt $projectIds.Count; $i += 100) {
    $last = [Math]::Min($i + 99, $projectIds.Count - 1)
    $chunk = @($projectIds[$i..$last])
    $ids = '["' + ($chunk -join '","') + '"]'
    $res = Invoke-RestMethod -Uri ("$Api/projects?ids=" + [uri]::EscapeDataString($ids)) -Headers $Headers
    foreach ($proj in $res) { $projects[$proj.id] = $proj }
}

# 4) Rough classification based on the license declared by the author
$free = @("MIT","Apache-2.0","BSD-2-Clause","BSD-3-Clause","ISC","Zlib","Unlicense","CC0-1.0",
          "MPL-2.0","LGPL-2.1-only","LGPL-2.1-or-later","LGPL-3.0-only","LGPL-3.0-or-later",
          "GPL-2.0-only","GPL-2.0-or-later","GPL-3.0-only","GPL-3.0-or-later",
          "AGPL-3.0-only","AGPL-3.0-or-later")

$rows = @()
$lock = @()
foreach ($h in $byHash.Keys) {
    $name = $byHash[$h]
    if ($found.ContainsKey($h)) {
        $v = $found[$h]
        $proj = $projects[$v.project_id]
        $file = $v.files | Where-Object { $_.hashes.sha512 -eq $h } | Select-Object -First 1
        if (-not $file) { $file = $v.files | Select-Object -First 1 }
        $lic = "$($proj.license.id)"
        if ($free -contains $lic) {
            $redistribution = "Free license: redistribution allowed with conditions (attribution / license text)"
        } else {
            $redistribution = "REVIEW: custom, reserved or unknown license -> download from the source"
        }
        $rows += [pscustomobject]@{
            File           = $name
            Status         = "On Modrinth"
            Project        = $proj.title
            License        = $lic
            LicenseName    = $proj.license.name
            Redistribution = $redistribution
            Web            = "https://modrinth.com/$($proj.project_type)/$($proj.slug)"
        }
        $lock += "$name`t$h`t$($file.url)"
    } else {
        $rows += [pscustomobject]@{
            File           = $name
            Status         = "NOT found on Modrinth"
            Project        = ""
            License        = ""
            LicenseName    = ""
            Redistribution = "Look it up manually (CurseForge / GitHub / the author's site) and check its license"
            Web            = ""
        }
    }
}

$rows = $rows | Sort-Object Status, File
$rows | Export-Csv -Path (Join-Path $Here "mods-audit.csv") -NoTypeInformation -Encoding UTF8

$header = "# name`tsha512`turl"
$text = $header + "`n" + (($lock | Sort-Object) -join "`n") + "`n"
[IO.File]::WriteAllText((Join-Path $Here "mods.lock.tsv"), $text)

$rows | Format-Table File, Status, License -AutoSize
$notFound = @($rows | Where-Object { $_.Status -ne "On Modrinth" }).Count
$review = @($rows | Where-Object { $_.Redistribution -like "REVIEW*" }).Count
Write-Host ""
Write-Host "Total: $($rows.Count) | Not found on Modrinth: $notFound | License to review: $review"
Write-Host "Generated: mods-audit.csv and mods.lock.tsv"
