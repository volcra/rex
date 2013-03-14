function Install-Sonar($version='3.4.1', $url="http://dist.sonar.codehaus.org/sonar-$version.zip", $directory='C:\temp\server\sonar') {
    Install-Zip "sonar" $version $url $directory
}