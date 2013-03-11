function Install-H2($version='1.3.170', $url='http://www.h2database.com/h2-2012-11-30.zip', $directory='C:\temp\data\h2') {
	$h2Home = Join-Path $directory $version
	$fileName = [System.IO.Path]::GetFileName($url)
	$file = Join-Path $directory $fileName

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $directory
	Move-Item (Join-Path $directory 'h2') $h2Home -Force
	Remove-Item $file
	Set-Env -Name "H2_HOME" -Value $h2Home
}