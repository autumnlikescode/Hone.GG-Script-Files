Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /f > $null 2>&1
Try {
	Nvidia-smi -acp UNRESTRICTED > $null 2>&1
} Catch {}
Try {
	Nvidia-smi -acp DEFAULT > $null 2>&1
} Catch {}
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f > $null 2>&1
$registryKeys = Invoke-Expression -Command 'reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" | findstr "HKEY"'
foreach ($key in $registryKeys) {
	Reg Add "$key" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "TCCSupported" /t REG_DWORD /d "0" /f > $null 2>&1
}

