# install-mods.ps1
# Downloads the files listed in mods.lock.tsv (mods) and, if it exists, datapacks.lock.tsv (data packs)
# from their original source (Modrinth) and verifies their SHA-512 hash.
# Only downloads what is missing or does not match the hash.
param(
    [string]$LockFile          = (Join-Path $PSScriptRoot "mods.lock.tsv"),
    [string]$ModsDir           = (Join-Path $PSScriptRoot "mods"),
    [string]$DatapacksLockFile = (Join-Path $PSScriptRoot "datapacks.lock.tsv")
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = "SilentlyContinue"   # speeds up Invoke-WebRequest on Windows PowerShell 5.1

function Sync-Files {
    param([string]$Lock, [string]$Dir)

    New-Item -ItemType Directory -Force -Path $Dir | Out-Null

    foreach ($line in Get-Content -LiteralPath $Lock) {
        if ([string]::IsNullOrWhiteSpace($line) -or $line.StartsWith("#")) { continue }
        $name, $sha, $url = $line -split "`t"
        $dest = Join-Path $Dir $name

        if ((Test-Path -LiteralPath $dest) -and ((Get-FileHash -Algorithm SHA512 -LiteralPath $dest).Hash.ToLower() -eq $sha)) { continue }

        Write-Host "Downloading $name"
        $tmp = "$dest.part"
        Invoke-WebRequest -Uri $url -OutFile $tmp -UserAgent "rxdo5/MCServerKits" -UseBasicParsing
        if ((Get-FileHash -Algorithm SHA512 -LiteralPath $tmp).Hash.ToLower() -ne $sha) {
            Remove-Item -LiteralPath $tmp -Force
            throw "Hash mismatch: $name"
        }
        Move-Item -Force -LiteralPath $tmp -Destination $dest
    }
}

if (-not (Test-Path -LiteralPath $LockFile)) { throw "$LockFile not found" }

Sync-Files -Lock $LockFile -Dir $ModsDir
Write-Host "Mods are up to date."

# Data packs (optional): they go in <level-name>\datapacks so Minecraft loads them automatically,
# even before the world has been created.
if (Test-Path -LiteralPath $DatapacksLockFile) {
    $level = "world"
    $props = Join-Path $PSScriptRoot "server.properties"
    if (Test-Path -LiteralPath $props) {
        $m = Select-String -LiteralPath $props -Pattern '^level-name=(.+)$' | Select-Object -First 1
        if ($m) { $level = $m.Matches[0].Groups[1].Value.Trim() }
    }
    Sync-Files -Lock $DatapacksLockFile -Dir (Join-Path $PSScriptRoot (Join-Path $level "datapacks"))
    Write-Host "Data packs are up to date."
}
