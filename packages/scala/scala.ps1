function Install-Scala($version='2.10.0', $url="http://www.scala-lang.org/downloads/distrib/files/scala-2.10.0.zip", $directory='C:\temp\bin\scala') {
	Install-Zip "scala" $version $url $directory
	Set-Env "SCALA_HOME" (Join-Path $directory $version)
}