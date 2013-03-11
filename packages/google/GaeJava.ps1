function Install-GaeJava($version='1.7.5', $url="http://googleappengine.googlecode.com/files/appengine-java-sdk-$version.zip", $directory='C:\temp\bin\google\appengine\java') {
	Install-Zip "appengine-java-sdk" $version $url $directory
	Set-Env -Name "APPENGINE_HOME" -Value (Join-Path $directory $version)
}