$NumberOfCores = (Get-WmiObject Win32_Processor | Select-Object -ExpandProperty NumberOfCores)
$NumberOfThreads = (Get-WmiObject Win32_Processor | Select-Object -ExpandProperty NumberOfLogicalProcessors)

if ($NumberOfCores -gt 4) {
    # More Than 4 Cores
	# AllProcessorsInMachine
	# No Mask
    Get-WmiObject Win32_VideoController | ForEach-Object {
        if ($_.PNPDeviceID -like "*PCI\VEN_*") {
		Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "3" /f > $null
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f > $null 2>&1
        }
    }
	# SpreadMessagesAcrossAllProcessors
	# No Mask
    Get-WmiObject Win32_NetworkAdapter | ForEach-Object {
        if ($_.PNPDeviceID -like "*PCI\VEN_*") {
		Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "5" /f > $null
		Reg Delete "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /f > $null 2>&1
        }
    }
} elseif (($NumberOfThreads -ne $NumberOfCores) -and ($NumberOfCores -gt 2)) {
	# 3-4 cores, Hyperthreading ON
	# SpecifiedProcessors
	# CPU 6-7
	Get-WmiObject Win32_USBController | ForEach-Object {
		if ($_.PNPDeviceID -like "*PCI\VEN_*") {
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f > $null
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "C0" /f > $null
		}
	}
	# SpecifiedProcessors
	# CPU 6-7
	Get-WmiObject Win32_VideoController | ForEach-Object {
		if ($_.PNPDeviceID -like "*PCI\VEN_*") {
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f > $null
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "C0" /f > $null
		}
	}
	# SpecifiedProcessors
	# CPU 4-5
	Get-WmiObject Win32_NetworkAdapter | ForEach-Object {
		if ($_.PNPDeviceID -like "*PCI\VEN_*") {
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f > $null
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "30" /f > $null
		}
	}
} else {
	# 1-4 cores, Hyperthreading OFF
	# SpecifiedProcessors
	# CPU 3
	Get-WmiObject Win32_USBController | ForEach-Object {
		if ($_.PNPDeviceID -like "*PCI\VEN_*") {
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f > $null
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "08" /f > $null
		}
	}
	# SpecifiedProcessors
	# CPU 1
	Get-WmiObject Win32_VideoController | ForEach-Object {
		if ($_.PNPDeviceID -like "*PCI\VEN_*") {
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f > $null
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "02" /f > $null
		}
	}
	# SpecifiedProcessors
	# CPU 2
	Get-WmiObject Win32_NetworkAdapter | ForEach-Object {
		if ($_.PNPDeviceID -like "*PCI\VEN_*") {
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f > $null
			Reg Add "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "04" /f > $null
		}
	}
}
