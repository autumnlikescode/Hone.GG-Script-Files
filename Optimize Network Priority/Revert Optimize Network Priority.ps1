Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\Psched" /v "Start" /t Reg_DWORD /d "1" /f > $null 2>&1

$processes = @("csgo", "VALORANT-Win64-Shipping", "javaw", "FortniteClient-Win64-Shipping", "ModernWarfare", "r5apex")

foreach ($i in $processes) {
    if (!(Test-Path "HKLM:\Software\Policies\Microsoft\Windows\QoS\$i")) {
		Reg Delete "HKLM\Software\Policies\Microsoft\Windows\QoS\$i" /f > $null 2>&1
    }
}

Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeGuaranteed" /f > $null 2>&1
Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeNetworkControl" /f > $null 2>&1
Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeGuaranteed" /f > $null 2>&1
Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeNetworkControl" /f > $null 2>&1
Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeGuaranteed" /f > $null 2>&1
Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNetworkControl" /f > $null 2>&1
Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /f > $null 2>&1













