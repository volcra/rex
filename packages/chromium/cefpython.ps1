function Install-Cefpython($version='1_v0.51_windows_32bit', $url='http://cefpython.googlecode.com/files/cefpython1_v0.51_windows_32bit.zip', $directory='C:\temp\bin\chrome\cefpython') {
	$file = Join-Path $directory $packageName-$version.zip
	$destination = Join-Path $directory $packageName$version

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $directory
	Remove-Item $file
	Move-Item -Force $destination (Join-Path $directory $version)
}