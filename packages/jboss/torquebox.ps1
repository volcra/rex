function Install-TorqueBox($version='2.3.0', $url="http://torquebox.org/release/org/torquebox/torquebox-dist/2.3.0/torquebox-dist-$version-bin.zip", $directory='C:\temp\bin\jboss\torquebox') {
    Install-Zip "torquebox" $version $url $directory
}
