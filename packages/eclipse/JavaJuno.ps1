function Install-JavaJuno($version='win32-x86_64', $url="http://www.gtlib.gatech.edu/pub/eclipse/technology/epp/downloads/release/juno/SR2/eclipse-java-juno-SR2-$version.zip", $directory='C:\temp\ide\eclipse\java\juno') {
	Install-Zip "eclipse" $version $url $directory "eclipse"
}
