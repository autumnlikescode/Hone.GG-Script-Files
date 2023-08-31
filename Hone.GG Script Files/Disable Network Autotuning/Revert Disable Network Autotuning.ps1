netsh int tcp set global autotuninglevel=normal > $null 2>&1
netsh winsock set autotuning on > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp" /v "TcpAutotuning" /t REG_DWORD /d "1" /f > $null 2>&1
