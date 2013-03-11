function Install-Cefpython($version='1_v0.51_windows_32bit', $url='http://cefpython.googlecode.com/files/cefpython1_v0.51_windows_32bit.zip', $directory='C:\temp\bin\chrome\cefpython') {
	Install-Zip "cefpython" $version $url $directory "$packageName$version"
}