function Install-Scout($version='win32-x86_64', $url="http://ftp.osuosl.org/pub/eclipse//technology/epp/downloads/release/juno/SR2/eclipse-scout-juno-SR2-win32-x86_64.zip", $directory='C:\temp\ide\eclipse\scout') {
    Install-Zip "eclipse" $version $url $directory "eclipse"
}