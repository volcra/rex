function Install-Jetty($version='7.6.9.v20130131', $url='http://download.eclipse.org/jetty/7.6.9.v20130131/dist/jetty-distribution-7.6.9.v20130131.zip', $directory='C:\temp\server\jetty') {
	Install-Zip "jetty-distribution" $version $url $directory
}