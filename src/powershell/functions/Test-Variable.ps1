function Test-Variable([string]$name) {
	$path="variable"
	$test=("{0}:{1}" -f $path,$name)
	Write-Host (Test-Path $test)
	return (Test-Path $test)
}