function Install-Griffon($version='1.2.0', $url='http://dist.codehaus.org/griffon/griffon/1.2.x/griffon-1.2.0-bin.zip', $directory='C:\temp\bin\codehaus\griffon') {
	Install-Zip "griffon" $version $url $directory
	Set-Env -Name "GRIFFON_HOME" -Value (Join-Path $directory $version)
}