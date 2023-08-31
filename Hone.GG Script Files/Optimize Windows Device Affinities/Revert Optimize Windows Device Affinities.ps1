Get-WmiObject Win32_USBController | ForEach-Object {
	if ($_.PNPDeviceID -like "*PCI\VEN_*") {
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /f > $null 2>&1
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f > $null 2>&1
	}
}
Get-WmiObject Win32_VideoController | ForEach-Object {
    if ($_.PNPDeviceID -like "*PCI\VEN_*") {
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /f > $null 2>&1
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f > $null 2>&1
    }
}
Get-WmiObject Win32_NetworkAdapter | ForEach-Object {
    if ($_.PNPDeviceID -like "*PCI\VEN_*") {
        Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /f > $null 2>&1
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f > $null 2>&1
    }
}
