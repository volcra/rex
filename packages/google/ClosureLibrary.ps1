function Install-ClosureLibrary($version='latest', $url='http://code.google.com/p/closure-library', $directory='C:\temp\bin\google\closure\library') {
	New-Directory $directory

	Invoke-Expression "git clone $url $directory"
}