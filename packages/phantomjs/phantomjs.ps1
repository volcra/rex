function Install-PhantomJS($version='1.8.2-windows', $url="http://phantomjs.googlecode.com/files/phantomjs-$version.zip", $directory='C:\temp\bin\phantomjs') {
    Install-Zip "phantomjs" $version $url $directory
    Set-Env -Name "PHANTOMJS_HOME" -Value (Join-Path $directory $version)
}