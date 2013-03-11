function Install-Zip($packageName, $version, $url, $directory) {
	$file = Join-Path $directory $packageName-$version.zip
	$destination = Join-Path $directory $packageName-$version

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $directory
	Remove-Item $file
	Move-Item -Force $destination (Join-Path $directory $version)
}