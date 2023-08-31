Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /f > $null 2>&1
Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /f > $null 2>&1
Rename-Item -Path "$env:WinDir\System32\mcupdate_GenuineIntel.old" -NewName "mcupdate_GenuineIntel.dll" -Force -ErrorAction SilentlyContinue
Rename-Item -Path "$env:WinDir\System32\mcupdate_AuthenticAMD.old" -NewName "mcupdate_AuthenticAMD.dll" -Force -ErrorAction SilentlyContinue
Set-NetTCPSetting -SettingName "*" -MemoryPressureProtection Default -ErrorAction SilentlyContinue