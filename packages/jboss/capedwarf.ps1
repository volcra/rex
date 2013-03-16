function Install-CapeDwarf($version='1.0.0.Beta3', $url="http://downloads.jboss.org/capedwarf/CapeDwarf_AS7_$version.zip", $directory='C:\temp\server\jboss\capedwarf') {
    $fileName = [System.IO.Path]::GetFileName($url)
    $file = Join-Path $directory $fileName
    $extract = Join-Path $directory $content

    New-Directory $directory
    Get-WebFile $url $file
    UnZip $file $directory
}