$registryKeys = Invoke-Expression -Command 'reg query "HKLM\System\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "AMD" | findstr "HKEY"'
foreach ($key in $registryKeys) {
    Reg Delete "$key" /v "3D_Refresh_Rate_Override_DEF" /f > $null 2>&1
    Reg Delete "$key" /v "3to2Pulldown_NA" /f > $null 2>&1
    Reg Delete "$key" /v "AAF_NA" /f > $null 2>&1
    Reg Delete "$key" /v "Adaptive De-interlacing" /f > $null 2>&1
    Reg Delete "$key" /v "AllowRSOverlay" /f > $null 2>&1
    Reg Delete "$key" /v "AllowSkins" /f > $null 2>&1
    Reg Delete "$key" /v "AllowSnapshot" /f > $null 2>&1
    Reg Delete "$key" /v "AllowSubscription" /f > $null 2>&1
    Reg Delete "$key" /v "AntiAlias_NA" /f > $null 2>&1
    Reg Delete "$key" /v "AreaAniso_NA" /f > $null 2>&1
    Reg Delete "$key" /v "ASTT_NA" /f > $null 2>&1
    Reg Delete "$key" /v "AutoColorDepthReduction_NA" /f > $null 2>&1
    Reg Delete "$key" /v "DisableSAMUPowerGating" /f > $null 2>&1
    Reg Delete "$key" /v "DisableUVDPowerGatingDynamic" /f > $null 2>&1
    Reg Delete "$key" /v "DisableVCEPowerGating" /f > $null 2>&1
    Reg Delete "$key" /v "EnableAspmL0s" /f > $null 2>&1
    Reg Delete "$key" /v "EnableAspmL1" /f > $null 2>&1
    Reg Delete "$key" /v "EnableUlps" /f > $null 2>&1
    Reg Delete "$key" /v "EnableUlps_NA" /f > $null 2>&1
    Reg Delete "$key" /v "KMD_DeLagEnabled" /f > $null 2>&1
    Reg Delete "$key" /v "KMD_FRTEnabled" /f > $null 2>&1
    Reg Delete "$key" /v "DisableDMACopy" /f > $null 2>&1
    Reg Delete "$key" /v "DisableBlockWrite" /f > $null 2>&1
    Reg Delete "$key" /v "StutterMode" /f > $null 2>&1
    Reg Delete "$key" /v "EnableUlps" /f > $null 2>&1
    Reg Delete "$key" /v "PP_SclkDeepSleepDisable" /f > $null 2>&1
    Reg Delete "$key" /v "PP_ThermalAutoThrottlingEnable" /f > $null 2>&1
    Reg Delete "$key" /v "DisableDrmdmaPowerGating" /f > $null 2>&1
    Reg Delete "$key" /v "KMD_EnableComputePreemption" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "Main3D_DEF" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "Main3D" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "FlipQueueSize" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "ShaderCache" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "Tessellation_OPTION" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "Tessellation" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "VSyncControl" /f > $null 2>&1
    Reg Delete "$key\UMD" /v "TFQ" /f > $null 2>&1
    Reg Delete "$key\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /f > $null 2>&1
}
