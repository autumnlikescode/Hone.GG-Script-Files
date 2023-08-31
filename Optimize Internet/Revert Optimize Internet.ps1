Enable-NetAdapterPowerManagement -Name "*" -ErrorAction SilentlyContinue
Enable-NetAdapterIPsecOffload -Name "*" -ErrorAction SilentlyContinue
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxConnectRetransmissions" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckFrequency" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DelayedAckTicks" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "CongestionAlgorithm" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MultihopSets" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /f > $null 2>&1
Reg Delete "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableAutoDoh" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DoNotHoldNicBuffers" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /f > $null 2>&1
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /f > $null 2>&1
$networkCardLines = reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s | Select-String -Pattern "ServiceName"
foreach ($line in $networkCardLines) {
    $serviceName = $line -split '\s+' | Select-Object -Last 1
    Reg Delete `"HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$serviceName`" /v `"TCPNoDelay`" /f > $null 2>&1
    Reg Delete `"HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$serviceName`" /v `"TcpAckFrequency`" /f > $null 2>&1
    Reg Delete `"HKLM\System\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$serviceName`" /v `"TcpDelAckTicks`" /f > $null 2>&1
    Reg Delete `"HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$serviceName`" /v `"TcpInitialRTT`" /f > $null 2>&1
    Reg Delete `"HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$serviceName`" /v `"UseZeroBroadcast`" /f > $null 2>&1
    Reg Delete `"HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$serviceName`" /v `"DeadGWDetectDefault`" /f > $null 2>&1
}
Netsh int tcp set supplemental Internet congestionprovider=default > $null 2>&1
Netsh int tcp set supplemental internetc congestionprovider=default > $null 2>&1
Netsh int tcp set supplemental compat congestionprovider=default > $null 2>&1
Netsh int tcp set supplemental custom congestionprovider=default > $null 2>&1
Netsh int tcp set supplemental datacenter congestionprovider=default > $null 2>&1
Netsh int tcp set supplemental datacenterc congestionprovider=default > $null 2>&1
Netsh int tcp set global initialRto=1000 > $null 2>&1
Netsh int tcp set global rss=default > $null 2>&1
Netsh int tcp set global dca=default > $null 2>&1
Netsh int tcp set global netdma=default > $null 2>&1
Netsh int tcp set global timestamps=default > $null 2>&1
Netsh int tcp set global nonsackrttresiliency=default > $null 2>&1
Netsh int isatap set state default > $null 2>&1
