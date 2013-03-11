function Install-ClosureCompiler($version='latest', $url='http://closure-compiler.googlecode.com/files/compiler-latest.zip', $directory='C:\temp\bin\google\closure\compiler') {
	$compileHome = $directory
	$fileName = [System.IO.Path]::GetFileName($url)
	$file = Join-Path $directory $fileName

	New-Directory $directory
	Get-WebFile $url $file
	UnZip $file $directory
	Remove-Item $file

	# commands
	Write-Host "Creating commands"
"@echo off
java -jar $compileHome\compiler.jar %*" | Out-File "$compileHome\compiler.bat" -Encoding ascii
}