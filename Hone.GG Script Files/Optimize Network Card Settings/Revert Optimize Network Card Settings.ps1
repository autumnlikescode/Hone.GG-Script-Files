foreach ($line in (reg query "HKLM\Software\Microsoft\Windows NT\CurrentVersion\NetworkCards" /k /v /f "Description" /s /e | findstr /ri "REG_SZ")) {
	$line = ($line -split 'REG_SZ')[1].Trim()
	foreach ($result in (reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /s /f $line /d | findstr /C:"HKEY")) {
		reg add $result /v "MIMOPowerSaveMode" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "PowerSavingMode" /t REG_SZ /d "1" /f > $null 2>&1
		reg add $result /v "EnableGreenEthernet" /t REG_SZ /d "1" /f > $null 2>&1
		reg add $result /v "*EEE" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "EnableConnectedPowerGating" /t REG_DWORD /d "0" /f > $null 2>&1
		reg add $result /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "EnableSavePowerNow" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "PnPCapabilities" /t REG_DWORD /d "16" /f > $null 2>&1
		reg add $result /v "*NicAutoPowerSaver" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "ULPMode" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "EnablePME" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "AlternateSemaphoreDelay" /t REG_SZ /d "0" /f > $null 2>&1
		reg add $result /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f > $null 2>&1
	}
}