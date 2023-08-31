if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources")) { 
	New-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}

Remove-Item "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\TimerResolution.bat" -ErrorAction SilentlyContinue
Reg Delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /f > $null 2>&1
BCDEdit /deletevalue useplatformclock > $null 2>&1
BCDEdit /deletevalue useplatformtick > $null 2>&1

$taskName = "LaunchSetTimerResolution"
$taskExists = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue

if ($taskExists) {
	Stop-Process -Name "SetTimerResolution" -Force -ErrorAction SilentlyContinue
	Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}
