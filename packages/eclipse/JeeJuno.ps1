function Install-JeeJuno($version='win32-x86_64', $url="http://ftp.osuosl.org/pub/eclipse//technology/epp/downloads/release/juno/SR1/eclipse-jee-juno-SR1-$version.zip", $directory='C:\temp\ide\eclipse\jee\juno') {
	Install-Zip "eclipse" $version $url $directory "eclipse"
}
