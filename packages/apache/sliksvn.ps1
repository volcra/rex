function Install-SlikSvn($version='1.7.8-x64', $url="http://www.sliksvn.com/pub/Slik-Subversion-1.7.8-x64.msi", $directory='C:\temp\bin\sliksvn') {
    $exe = Install-Exe $version $url $directory

    Write-Host "Running $exe" -ForegroundColor Yellow
    Write-Host "Installation will continue on Subversion setup." -ForegroundColor Yellow
    . $exe
}