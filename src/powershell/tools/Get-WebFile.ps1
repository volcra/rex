function Get-WebFile($url, $file) {
    Write-Host "Downloading $url to $file"
    $downloader = New-Object System.Net.WebClient -Verbose
    $downloader.DownloadFile($url, $file)
}