function Install-Ant($version='1.8.4', $url='http://www.apache.org/dist/ant/binaries/apache-ant-1.8.4-bin.zip', $directory='C:\temp\bin\apache\ant') {
	Install-Zip "apache-ant" $version $url $directory
	Set-Env -Name "ANT_HOME" -Value (Join-Path $directory $version)
}