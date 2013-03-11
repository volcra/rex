function Install-Groovy($version='2.1.1', $url='http://dist.groovy.codehaus.org/distributions/groovy-binary-2.1.1.zip', $directory='C:\temp\bin\groovy') {
	Install-Zip "groovy" $version $url $directory
	Set-Env -Name "GROOVY_HOME" -Value (Join-Path $directory $version)
}