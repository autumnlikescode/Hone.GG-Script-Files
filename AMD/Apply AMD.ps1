$registryKeys = Invoke-Expression -Command 'reg query "HKLM\System\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "AMD" | findstr "HKEY"'
foreach ($key in $registryKeys) {
	Reg Add "$key" /v "3D_Refresh_Rate_Override_DEF" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "3to2Pulldown_NA" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "AAF_NA" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "Adaptive De-interlacing" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "AllowRSOverlay" /t Reg_SZ /d "false" /f > $null 2>&1
	Reg Add "$key" /v "AllowSkins" /t Reg_SZ /d "false" /f > $null 2>&1
	Reg Add "$key" /v "AllowSnapshot" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "AllowSubscription" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "AntiAlias_NA" /t Reg_SZ /d "0" /f > $null 2>&1
	Reg Add "$key" /v "AreaAniso_NA" /t Reg_SZ /d "0" /f > $null 2>&1
	Reg Add "$key" /v "ASTT_NA" /t Reg_SZ /d "0" /f > $null 2>&1
	Reg Add "$key" /v "AutoColorDepthReduction_NA" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "DisableSAMUPowerGating" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "DisableUVDPowerGatingDynamic" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "DisableVCEPowerGating" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "EnableAspmL0s" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "EnableAspmL1" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "EnableUlps" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "EnableUlps_NA" /t Reg_SZ /d "0" /f > $null 2>&1
	Reg Add "$key" /v "KMD_DeLagEnabled" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "KMD_FRTEnabled" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "DisableDMACopy" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "DisableBlockWrite" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "StutterMode" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "EnableUlps" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "PP_SclkDeepSleepDisable" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "PP_ThermalAutoThrottlingEnable" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key" /v "DisableDrmdmaPowerGating" /t Reg_DWORD /d "1" /f > $null 2>&1
	Reg Add "$key" /v "KMD_EnableComputePreemption" /t Reg_DWORD /d "0" /f > $null 2>&1
	Reg Add "$key\UMD" /v "Main3D_DEF" /t Reg_SZ /d "1" /f > $null 2>&1
	Reg Add "$key\UMD" /v "Main3D" /t Reg_BINARY /d "3100" /f > $null 2>&1
	Reg Add "$key\UMD" /v "FlipQueueSize" /t Reg_BINARY /d "3100" /f > $null 2>&1
	Reg Add "$key\UMD" /v "ShaderCache" /t Reg_BINARY /d "3200" /f > $null 2>&1
	Reg Add "$key\UMD" /v "Tessellation_OPTION" /t Reg_BINARY /d "3200" /f > $null 2>&1
	Reg Add "$key\UMD" /v "Tessellation" /t Reg_BINARY /d "3100" /f > $null 2>&1
	Reg Add "$key\UMD" /v "VSyncControl" /t Reg_BINARY /d "3000" /f > $null 2>&1
	Reg Add "$key\UMD" /v "TFQ" /t Reg_BINARY /d "3200" /f > $null 2>&1
	Reg Add "$key\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t Reg_BINARY /d "0100000001000000" /f > $null 2>&1
}

