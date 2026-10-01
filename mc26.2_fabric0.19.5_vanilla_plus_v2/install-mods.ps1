# install-mods.ps1
# Downloads the mods listed in mods.lock.tsv from their original source (Modrinth)
# and verifies their SHA-512 hash. Only downloads what is missing or does not match the hash.
param(
    [string]$LockFile = (Join-Path $PSScriptRoot "mods.lock.tsv"),
    [string]$ModsDir  = (Join-Path $PSScriptRoot "mods")
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = "SilentlyContinue"   # speeds up Invoke-WebRequest on Windows PowerShell 5.1

if (-not (Test-Path $LockFile)) { throw "$LockFile not found" }
New-Item -ItemType Directory -Force -Path $ModsDir | Out-Null

foreach ($line in Get-Content $LockFile) {
    if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith("#")) { continue }
    $name, $sha, $url = $line -split "`t"
    $dest = Join-Path $ModsDir $name

    if ((Test-Path $dest) -and ((Get-FileHash -Algorithm SHA512 -Path $dest).Hash.ToLower() -eq $sha)) { continue }

    Write-Host "Downloading $name"
    $tmp = "$dest.part"
    Invoke-WebRequest -Uri $url -OutFile $tmp -UserAgent "rxdo5/MCServerKits" -UseBasicParsing
    if ((Get-FileHash -Algorithm SHA512 -Path $tmp).Hash.ToLower() -ne $sha) {
        Remove-Item $tmp -Force
        throw "Hash mismatch: $name"
    }
    Move-Item -Force -Path $tmp -Destination $dest
}

Write-Host "Mods are up to date."
