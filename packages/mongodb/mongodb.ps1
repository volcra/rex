function Install-MongoDB($version='win32-x86_64-2.2.3', $url="http://downloads.mongodb.org/win32/mongodb-$version.zip", $directory='C:\temp\data\mongodb') {
    Install-Zip "mongodb" $version $url $directory
    Set-Env "MONGODB_HOME" (Join-Path $directory $version)
}