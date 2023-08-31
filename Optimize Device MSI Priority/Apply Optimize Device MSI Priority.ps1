Get-WmiObject -Class Win32_NetworkAdapter | Where-Object { $_.PNPDeviceID -like "*VEN_*" } | ForEach-Object {
    $path = "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties"
    Reg Add "$path" /v "MSISupported" /t REG_DWORD /d "1" /f > $null 2>&1
}

Get-WmiObject -Class Win32_VideoController | Where-Object { $_.PNPDeviceID -like "*VEN_*" } | ForEach-Object {
    $path = "HKLM\System\CurrentControlSet\Enum\$($_.PNPDeviceID)\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties"
    Reg Add "$path" /v "MSISupported" /t REG_DWORD /d "1" /f > $null 2>&1
}
