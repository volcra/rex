function Install-Xtext($version='2.3.1-win32-x86_64', $url="http://ftp.osuosl.org/pub/eclipse/modeling/tmf/xtext/downloads/distros/eclipse-SDK-4.2-Xtext-$version.zip", $directory='C:\temp\ide\eclipse\xtext') {
    Install-Zip "eclipse" $version $url $directory "eclipse"
}