function Install-Git($version='1.8.1.2-preview20130201', $url='http://msysgit.googlecode.com/files/PortableGit-1.8.1.2-preview20130201.7z', $directory='C:\temp\bin\git') {
	Install-7Zip "git" $version $url $directory
	Set-Env -Name "GIT_HOME" -Value (Join-Path $directory $version)
}