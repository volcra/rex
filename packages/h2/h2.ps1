function Install-H2($version='1.3.170', $url='http://www.h2database.com/h2-2012-11-30.zip', $directory='C:\temp\data\h2') {
	Install-Zip "h2" $version $url $directory "h2"
	Set-Env -Name "H2_HOME" -Value "$directory\$version"
}