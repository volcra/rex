function Install-Gwt($version='2.5.0', $url='http://google-web-toolkit.googlecode.com/files/gwt-2.5.0.zip', $directory='C:\temp\bin\google\gwt') {
	Install-Zip "gwt" $version $url $directory
	Set-Env -Name "GWT_HOME" -Value (Join-Path $directory $version)
}