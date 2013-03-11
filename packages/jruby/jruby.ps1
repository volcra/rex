function Install-JRuby($version='1.7.3', $url="http://jruby.org.s3.amazonaws.com/downloads/$version/jruby-bin-$version.zip", $directory='C:\temp\bin\jruby') {
	Install-Zip "jruby" $version $url $directory
	Set-Env "JRUBY_HOME" (Join-Path $directory $version)
}