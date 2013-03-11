function Test-NullOrEmpy([string]$str) {
	return ($str -eq "" -or $str -eq $Null)
}