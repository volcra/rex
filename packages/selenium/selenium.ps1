function Install-Selenium($version='2.31.0', $url="http://selenium.googlecode.com/files/selenium-server-standalone-$version.jar", $directory='C:\temp\bin\selenium') {
    $seleniumHome = Join-Path $directory $version
    $fileName = [System.IO.Path]::GetFileName($url)
    $file = Join-Path $directory $fileName

    New-Directory $seleniumHome
    Get-WebFile $url (Join-Path $seleniumHome $fileName)
    Set-Env -Name "SELENIUM_HOME" -Value $seleniumHome

    # commands
    Write-Host "Creating commands"
"@echo off
java -jar %SELENIUM_HOME%\$fileName %*" | Out-File "$seleniumHome\selenium.bat"  -Encoding ascii
}