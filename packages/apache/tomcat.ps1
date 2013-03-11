function Install-Tomcat($version='7.0.37', $url='http://www.apache.org/dist/tomcat/tomcat-7/v7.0.37/bin/apache-tomcat-7.0.37-windows-x64.zip', $directory='C:\temp\server\tomcat') {
	Install-Zip "apache-tomcat" $version $url $directory
	Set-Env -Name "TOMCAT_HOME" -Value (Join-Path $directory $version)
}