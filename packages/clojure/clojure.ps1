function Install-Clojure($version='1.5.0', $url='http://repo1.maven.org/maven2/org/clojure/clojure/1.5.0/clojure-1.5.0.zip', $directory='C:\temp\bin\clojure') {
	$clojureHome = (Join-Path $directory $version)

	Install-Zip "clojure" $version $url $directory
	Set-Env -Name "CLOJURE_HOME" -Value $clojureHome

	# commands
	Write-Host "Creating commands"
"@echo off
java -cp %CLOJURE_HOME%\clojure-$version.jar clojure.main %*" | Out-File "$clojureHome\clojure.bat"  -Encoding ascii
}