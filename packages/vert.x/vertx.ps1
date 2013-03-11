function Install-Vertx($version='1.3.1.final', $url="http://vertx.io/downloads/vert.x-$version.zip", $directory='C:\temp\bin\vert.x') {
	Install-Zip "vert.x" $version $url $directory
	Set-Env "VERTX_HOME" (Join-Path $directory $version)
}