netsh int tcp set global autotuninglevel=disabled > $null 2>&1
netsh winsock set autotuning off > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp" /v "TcpAutotuning" /t REG_DWORD /d "0" /f > $null 2>&1
