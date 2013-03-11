param(
    [Alias('c')]
    [string]$command,
    [Alias('p')]
    [string]$packageName,
    [Alias('d')]
    [string]$directory,
    [Alias('v')]
    [string]$version,
    [Alias('u')]
    [string]$url
)

$scriptRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)
$packagesRoot = ((Get-Item $scriptRoot).parent.parent.FullName)

Import-Module $scriptRoot\InstallModule.psm1

$params = ""
$h1 = "-" * 80

if (!(Test-NullOrEmpy $version)) {  $params = "$params -Version $version".Trim() }
if (!(Test-NullOrEmpy $url)) {  $params = "$params -URL $url".Trim() }
if (!(Test-NullOrEmpy $directory)) {  $params = "$params -Directory $directory".Trim() }

switch -wildcard ($command) {
    "Install" {
        . (Get-ChildItem $packagesRoot -Recurse | ?{$_.Name -Match "$packageName.ps1"} | Select -First 1).FullName

        $command = "Install-$packageName $params"

        Write-Host "Invoking $command" -ForegroundColor Green
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
