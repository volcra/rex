function Install-Cygwin($version='1.7.17-1', $url='http://cygwin.com/setup.exe', $directory='C:\temp\cygwin') {
	$root = Join-Path $directory 'root'
	$localPackageDir = Join-Path $directory 'setup'
	$exe = Install-Exe $version $url $directory

	if (Test-Path HKCU:\Software\Cygwin) {
		Remove-Item HKCU:\Software\Cygwin -Force -Recurse
	}

	if (Test-Path HKLM:\Software\Wow6432Node\Cygwin) {
		Remove-Item HKLM:\Software\Wow6432Node\Cygwin -Force -Recurse
	}

	Write-Host "Running $exe -D -P p7zip,zip,unzip,curl,wget,vim,openssh -R $root -l $localPackageDir -q -n" -ForegroundColor Yellow
	#. $exe -D -P p7zip,zip,unzip,curl,wget,vim,openssh -R $root -l $localPackageDir -q -n
	#Start-Process -FilePath $exe -ArgumentList "-D", "-P", "p7zip,zip,unzip,curl,wget,vim,openssh", "-R", $root, "-l", $setup, "-q", "-n"
	. $exe
	Write-Host "Installation will continue in Cygwin setup."

#io_stream_cygfile: fopen(/etc/setup/net-proxy-host) failed 2 No such file or directory
#io_stream_cygfile: fopen(/etc/setup/net-proxy-port) failed 2 No such file or directory
#io_stream_cygfile: fopen(/etc/setup/extrakeys) failed 2 No such file or directory
}