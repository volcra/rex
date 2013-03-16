function Install-JbossAS($version='7.1.1.Final', $url="http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-$version.zip", $directory='C:\temp\server\jboss\as') {
	Install-Zip "jboss-as" $version $url $directory
	Set-Env -Name "JBOSS_HOME" -Value (Join-Path $directory $version)
}