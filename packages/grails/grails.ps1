function Install-Grails($version='2.2.1', $url='http://dist.springframework.org.s3.amazonaws.com/release/GRAILS/grails-2.2.1.zip', $directory='C:\temp\bin\grails') {
	Install-Zip "grails" $version $url $directory
	Set-Env -Name "GRAILS_HOME" -Value (Join-Path $directory $version)
}