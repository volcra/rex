function Install-CodeMirror($version='3.1', $url='http://codemirror.net/codemirror.zip', $directory='C:\temp\www\codemirror') {
    Install-Zip "codemirror" $version $url $directory
}