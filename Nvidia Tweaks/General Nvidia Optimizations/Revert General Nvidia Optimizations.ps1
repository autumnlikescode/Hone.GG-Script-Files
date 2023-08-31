Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /f > $null 2>&1
$registryKeys = Invoke-Expression -Command 'reg query "HKLM\System\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" | findstr "HKEY"'
foreach ($key in $registryKeys) {
	Reg Delete "$key" /v "EnableTiledDisplay" /f > $null 2>&1
	Reg Add "$key" /v "TCCSupported" /t REG_DWORD /d "0" /f > $null 2>&1
}

