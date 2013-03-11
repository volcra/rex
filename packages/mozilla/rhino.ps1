function Install-Rhino($version='1_7R4', $url="https://github.com/downloads/mozilla/rhino/rhino1_7R4.zip", $directory='C:\temp\bin\rhino') {
	Install-Zip "rhino" $version $url $directory "rhino$version"
	$rhinoHome = Join-Path $directory $version
	Set-Env "RHINO_HOME" $rhinoHome

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp %RHINO_HOME%\js.jar org.mozilla.javascript.tools.shell.Main %*" | Out-File "$rhinoHome\rhino.bat" -Encoding ascii
}
