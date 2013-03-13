function Install-PowerShellSyntax($version='master', $url='https://github.com/SublimeText/PowerShell/archive/master.zip', $directory="$env:APPDATA\Sublime Text 2\Packages") {
	$file = Join-Path $directory $packageName-$version.zip
	$destination = Join-Path $directory $packageName

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $directory
	Remove-Item $file
	Move-Item -Force (Join-Path $directory "PowerShell-$version") (Join-Path $directory "PowerShell")
}