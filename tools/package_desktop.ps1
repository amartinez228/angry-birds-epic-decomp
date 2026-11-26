param([string]$Destination = (Join-Path ([Environment]::GetFolderPath('Desktop')) 'Epic Rust'))

$ErrorActionPreference = 'Stop'
$projectRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$Destination = [IO.Path]::GetFullPath($Destination)
$desktopRoot = [IO.Path]::GetFullPath([Environment]::GetFolderPath('Desktop'))
if (-not $Destination.StartsWith($desktopRoot + '\', [StringComparison]::OrdinalIgnoreCase)) {
    throw 'The package destination must be a folder inside Desktop.'
}
$release = Join-Path $projectRoot 'target\release\epic-client.exe'
if (-not (Test-Path -LiteralPath $release)) { throw 'Build the release executable first.' }
New-Item -ItemType Directory -Path $Destination -Force | Out-Null
$backupRoot = Join-Path $Destination ('previous-builds\' + (Get-Date -Format 'yyyyMMdd-HHmmss'))

function Copy-PackageFile([string]$Source, [string]$Relative) {
    $targetPath = Join-Path $Destination $Relative
    if (Test-Path -LiteralPath $targetPath) {
        $sourceHash = (Get-FileHash -LiteralPath $Source -Algorithm SHA256).Hash
        $targetHash = (Get-FileHash -LiteralPath $targetPath -Algorithm SHA256).Hash
        if ($sourceHash -eq $targetHash) { return }
        $backupPath = Join-Path $backupRoot $Relative
        New-Item -ItemType Directory -Path ([IO.Path]::GetDirectoryName($backupPath)) -Force | Out-Null
        Copy-Item -LiteralPath $targetPath -Destination $backupPath
    }
    New-Item -ItemType Directory -Path ([IO.Path]::GetDirectoryName($targetPath)) -Force | Out-Null
    Copy-Item -LiteralPath $Source -Destination $targetPath -Force
}

foreach ($folder in @('crates', 'tools', 'content', 'assets', 'analysis', 'original')) {
    $sourceFolder = Join-Path $projectRoot $folder
    if (-not (Test-Path -LiteralPath $sourceFolder)) { continue }
    foreach ($file in Get-ChildItem -LiteralPath $sourceFolder -File -Recurse) {
        if ($file.FullName -match '[\\/]__pycache__[\\/]') { continue }
        $relative = $file.FullName.Substring($projectRoot.Length).TrimStart('\')
        Copy-PackageFile $file.FullName $relative
    }
}
foreach ($name in @('Cargo.toml', 'Cargo.lock', '.gitignore', 'README.md', 'CONTINUING.md', 'THIRD_PARTY_NOTICES.md', 'RECONSTRUCTION.json')) {
    Copy-PackageFile (Join-Path $projectRoot $name) $name
}
Copy-PackageFile $release 'Epic Rust.exe'
$launcher = "@echo off`r`ncd /d `"%~dp0`"`r`nstart `"`" `"%~dp0Epic Rust.exe`"`r`n"
[IO.File]::WriteAllText((Join-Path $Destination 'Play Epic Rust.cmd'), $launcher, [Text.Encoding]::ASCII)
$expected = (Get-FileHash -LiteralPath $release -Algorithm SHA256).Hash
if ((Get-FileHash -LiteralPath (Join-Path $Destination 'Epic Rust.exe') -Algorithm SHA256).Hash -ne $expected) {
    throw 'Packaged executable hash mismatch.'
}
'Updated: ' + $Destination
'Release SHA256: ' + $expected
if (Test-Path -LiteralPath $backupRoot) { 'Changed previous files preserved at: ' + $backupRoot }
'Play saves (local.data) are preserved.'
