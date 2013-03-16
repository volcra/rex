function Install-Tattletale($version='1.1.2.Final', $url="https://repository.jboss.org/nexus/content/groups/public/org/jboss/tattletale/tattletale/$version/tattletale-$version.jar", $directory="C:\temp\bin\jboss\tattletale\$version") {
    $jar = [System.IO.Path]::GetFileName($url)
    $file = Join-Path $directory $jar

    New-Directory $directory
    Get-WebFile $url $file

    # commands
    Write-Host "Creating commands"
"@echo off
java -jar $directory\$jar %*" | Out-File "$directory\tattletale.bat"  -Encoding ascii
}