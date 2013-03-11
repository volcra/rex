function Install-Bsh($version='2.0b4', $url='http://www.beanshell.org/bsh-2.0b4.jar', $directory='C:\temp\bin\bsh') {
	$bshHome = Join-Path $directory $version
	$fileName = [System.IO.Path]::GetFileName($url)
	$file = Join-Path $directory $fileName

	New-Directory $bshHome
	Get-WebFile $url (Join-Path $bshHome $fileName)
	Set-Env -Name "BSH_HOME" -Value $bshHome

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp %BSH_HOME%\$fileName bsh.Interpreter %*" | Out-File "$bshHome\bsh.bat"  -Encoding ascii

"@echo off
java -cp %BSH_HOME%\$fileName bsh.Interpreter %*" | Out-File "$bshHome\bshs.bat" -Encoding ascii

"@echo off
java -cp %BSH_HOME%\$fileName bsh.Console %*"     | Out-File "$bshHome\bshc.bat" -Encoding ascii

}