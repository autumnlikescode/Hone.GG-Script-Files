Reg Delete "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /f > $null 2>&1
Reg Delete "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /f > $null 2>&1
Reg Add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "AllowDeepCStates" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0001" /v "AllowDeepCStates" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0002" /v "AllowDeepCStates" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0003" /v "AllowDeepCStates" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "20" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Windows\DWM" /v "Composition" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /f > $null 2>&1
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoRestartShell" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d "3" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /f > $null 2>&1
Reg Add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "200000" /f > $null 2>&1
Reg Delete "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "5000" /f > $null 2>&1
Reg Delete "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /f > $null 2>&1
Reg Delete "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillAppTimeout" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "3670016" /f > $null 2>&1
Enable-MMAgent -MemoryCompression -ErrorAction SilentlyContinue
Enable-MMAgent -PageCombining -ErrorAction SilentlyContinue
Fsutil behavior set memoryusage 0 > $null 2>&1
Fsutil behavior set mftzone 0 > $null 2>&1
Fsutil behavior set disablelastaccess 2 > $null 2>&1
Fsutil behavior set encryptpagingfile 0 > $null 2>&1
Fsutil behavior set disable8dot3 2 > $null 2>&1
Fsutil behavior set disablecompression 0 > $null 2>&1
Fsutil behavior set disabledeletenotify 0 > $null 2>&1
