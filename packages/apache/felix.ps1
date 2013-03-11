function Install-Felix($version='4.2.0', $url='http://www.apache.org/dist/felix/org.apache.felix.main.distribution-4.2.0.zip', $directory='C:\temp\bin\apache\felix') {
	$felixHome = Join-Path $directory $version

	Install-Zip "felix-framework" $version $url $directory
	Set-Env -Name "FELIX_HOME" -Value $felixHome

	# commands
	Write-Host "Creating commands"
"@echo off
java -jar %FELIX_HOME%\bin\felix.jar %*" | Out-File "$felixHome\felix.bat"  -Encoding ascii
}
