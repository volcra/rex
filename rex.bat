@echo off

SET DIR=%~dp0%

if '%1'=='/?' goto usage
if '%1'=='-?' goto usage
if '%1'=='?' goto usage
if '%1'=='/help' goto usage
if '%1'=='help' goto usage

@PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "[System.Threading.Thread]::CurrentThread.CurrentCulture = ''; [System.Threading.Thread]::CurrentThread.CurrentUICulture = '';& '%DIR%src\powershell\Install.ps1' %*"

goto :eof
:usage

@PowerShell -NoProfile -ExecutionPolicy unrestricted -Command "[System.Threading.Thread]::CurrentThread.CurrentCulture = ''; [System.Threading.Thread]::CurrentThread.CurrentUICulture = '';& '%DIR%src\powershell\Install' help"