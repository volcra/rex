param(
    [string]$command,
    [string]$packageName,
    [string]$version,
    [string]$url,
    [string]$directory
)

Import-Module $PSScriptRoot\InstallModule.psm1

$params = ""
$h1 = "=" * 80

if (!(Test-NullOrEmpy $version)) {  $params = "$params -Version $version" }
if (!(Test-NullOrEmpy $url)) {  $params = "$params -URL $url" }
if (!(Test-NullOrEmpy $directory)) {  $params = "$params -Directory $directory" }

switch -wildcard ($command) {
    "Install" {
        . (Get-ChildItem $pwd -Recurse | ?{$_.Name -Match "$packageName.ps1"} | Select -First 1).FullName

        $command = "Install-$packageName $params"
        Write-Host "Invoking $command"  -ForegroundColor Green
        Write-Host $h1 -ForegroundColor Green
        Invoke-Expression $command
    }

    "Help" {
        Show-RexHelp
    }

    default {
        Show-RexHelp
    }
}
