function Install-Mongoose($version='3.7', $url="https://mongoose.googlecode.com/files/mongoose-$version.exe", $directory='C:\temp\bin\mongoose') {
    Install-Exe $version $url $directory
}