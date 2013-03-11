function Install-Rhino($version='1_7R4', $url="https://github.com/downloads/mozilla/rhino/rhino1_7R4.zip", $directory='C:\temp\bin\rhino') {
	$rhinoHome = Join-Path $directory $version
	$fileName = [System.IO.Path]::GetFileName($url)
	$file = Join-Path $directory $fileName

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $directory
	Remove-Item $file
	Move-Item $directory\"rhino$version" $rhinoHome
	Set-Env "RHINO_HOME" $rhinoHome

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp %RHINO_HOME%\js.jar org.mozilla.javascript.tools.shell.Main %*" | Out-File "$rhinoHome\rhino.bat" -Encoding ascii
}
