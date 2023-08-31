$registryKeys = Invoke-Expression -Command 'reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" | findstr "HKEY"'
foreach ($key in $registryKeys) {
	Reg Add "$key" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f > $null
}
