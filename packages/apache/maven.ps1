function Install-Maven($version='3.0.5', $url='http://www.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.zip', $directory='C:\temp\bin\apache\maven') {
	Install-Zip "apache-maven" $version $url $directory
	Set-Env -Name "MAVEN_HOME" -Value (Join-Path $directory $version)
}