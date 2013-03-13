function Install-MySQL($version='5.6.10-winx64', $url="http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-$version.zip/from/http://cdn.mysql.com/", $directory='C:\temp\data\mysql') {
    Install-Zip "mysql" $version $url $directory
    Set-Env "MYSQL_HOME" (Join-Path $directory $version)
}