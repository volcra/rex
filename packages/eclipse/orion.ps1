function Install-Orion($version='2.0-win32.win32.x86_64', $url="http://mirror.cs.rit.edu/mirrors/eclipse/orion/drops/R-2.0-201302221257/eclipse-orion-$version.zip", $directory='C:\temp\bin\eclipse\orion') {
    Install-Zip "eclipse" $version $url $directory "eclipse"
}