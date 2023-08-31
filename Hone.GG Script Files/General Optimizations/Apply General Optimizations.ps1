Reg Add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0001" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0002" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0003" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t Reg_DWORD /d "2" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t Reg_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "HeapDeCommitFreeBlockThreshold" /t REG_DWORD /d "262144" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoRestartShell" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t Reg_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d "150000" /f > $null 2>&1
Reg Add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1500" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1500" /f > $null 2>&1
Reg Add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1500" /f > $null 2>&1
Reg Add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1500" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillAppTimeout" /t REG_SZ /d "1500" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "4294967295" /f > $null 2>&1
Disable-MMAgent -MemoryCompression -ErrorAction SilentlyContinue
Disable-MMAgent -PageCombining -ErrorAction SilentlyContinue
Fsutil behavior set memoryusage 2 > $null 2>&1
Fsutil behavior set mftzone 2 > $null 2>&1
Fsutil behavior set disablelastaccess 1 > $null 2>&1
Fsutil behavior set encryptpagingfile 0 > $null 2>&1
Fsutil behavior set disable8dot3 1 > $null 2>&1
Fsutil behavior set disablecompression 1 > $null 2>&1
Fsutil behavior set disabledeletenotify 0 > $null 2>&1
