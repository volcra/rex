function Install-Gradle($version='1.4', $url='http://services.gradle.org/distributions/gradle-1.4-bin.zip', $directory='C:\temp\bin\gradle') {
	Install-Zip "gradle" $version $url $directory
	Set-Env -Name "GRADLE_HOME" -Value (Join-Path $directory $version)
}