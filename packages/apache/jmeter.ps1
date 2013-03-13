function Install-JMeter($version='2.9', $url="http://www.apache.org/dist/jmeter/binaries/apache-jmeter-$version.zip", $directory='C:\temp\bin\apache\jmeter') {
    Install-Zip "apache-jmeter" $version $url $directory
    Set-Env "JMETER_HOME" (Join-Path $directory $version)
}