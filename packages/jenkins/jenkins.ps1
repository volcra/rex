function Install-Jenkins($version='1.505', $url="http://ftp-chi.osuosl.org/pub/jenkins/windows/jenkins-$version.zip", $directory='C:\temp\server\jenkins') {
	$fileName = [System.IO.Path]::GetFileName($url)
	$file = Join-Path $directory $fileName
	$extract = Join-Path $directory $version

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $extract
	Remote-Item $file

	$exe = Join-Path $extract 'setup.exe'

	Write-Host "Installation will continue on Jenkins setup." -ForegroundColor Yellow
	. $exe
}