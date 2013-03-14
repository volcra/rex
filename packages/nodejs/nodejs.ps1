function Install-NodeJS($version='v0.8.22-x64', $url="http://nodejs.org/dist/v0.8.22/x64/node-$version.msi", $directory='C:\temp\bin\nodejs') {
    $exe = Install-Exe $version $url $directory

    Write-Host "Running $exe" -ForegroundColor Yellow
    Write-Host "Installation will continue on Node JS setup." -ForegroundColor Yellow
    . $exe

    Write-Host "Press any key to continue ..." -ForegroundColor Cyan
    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}