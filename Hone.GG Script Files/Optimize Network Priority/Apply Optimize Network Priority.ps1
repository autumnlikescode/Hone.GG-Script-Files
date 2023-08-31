Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /v "Start" /t Reg_DWORD /d "1" /f > $null 2>&1

SC Start Psched

Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS" /f > $null 2>&1

$processes = @("csgo", "VALORANT-Win64-Shipping", "javaw", "FortniteClient-Win64-Shipping", "ModernWarfare", "r5apex")

foreach ($i in $processes) {
    if (!(Test-Path "HKLM:\Software\Policies\Microsoft\Windows\QoS\$i")) {
		Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /f > $null 2>&1
    }
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Application Name" /t Reg_SZ /d "$i.exe" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Version" /t Reg_SZ /d "1.0" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Protocol" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Local Port" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Local IP" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Local IP Prefix Length" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Remote Port" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Remote IP" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Remote IP Prefix Length" /t Reg_SZ /d "*" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "DSCP Value" /t Reg_SZ /d "46" /f > $null 2>&1
	Reg Add "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /v "Throttle Rate" /t Reg_SZ /d "-1" /f > $null 2>&1
}

Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "46" /f > $null 2>&1
Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "56" /f > $null 2>&1
Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "46" /f > $null 2>&1
Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "56" /f > $null 2>&1
Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "5" /f > $null 2>&1
Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "7" /f > $null 2>&1
Reg Add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /t REG_DWORD /d "65000" /f > $null 2>&1




