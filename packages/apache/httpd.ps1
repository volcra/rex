function Install-Httpd($version='2.2.22-win32-x86-no_ssl', $url='http://www.apache.org/dist/httpd/binaries/win32/httpd-2.2.22-win32-x86-no_ssl.msi', $directory='C:\temp\server\httpd') {
	$exe = Install-Exe $version $url $directory

	Write-Host "Running $exe" -ForegroundColor Yellow
	Write-Host "Installation will continue on its own process" -ForegroundColor Yellow
	. $exe
}