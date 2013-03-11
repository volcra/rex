function Install-7Zip($packageName, $version, $url, $directory) {
	$file = Join-Path $directory $packageName-$version.7z
	$destination = Join-Path $directory $packageName-$version

	New-Directory $directory
	Get-WebFile $url $file
	Seven-Zip x -y $file "-o$destination"
	Write-Host "Removing $file" -ForegroundColor Yellow
	Remove-Item $file
	Move-Item -Force $destination (Join-Path $directory $version)
}