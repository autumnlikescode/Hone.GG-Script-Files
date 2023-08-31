# Downloader
$webClient = New-Object System.Net.WebClient

if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources")) { 
         New-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}
Remove-Item "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\TimerResolution.bat" -ErrorAction SilentlyContinue
$webClient.DownloadFile("https://github.com/auraside/HoneCtrl/raw/main/Files/SetTimerResolution.exe", "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\SetTimerResolution.exe") > $null
Stop-Process -Name "SetTimerResolution" -Force -ErrorAction SilentlyContinue
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f > $null 2>&1
BCDEdit /deletevalue useplatformclock > $null 2>&1

$taskName = "LaunchSetTimerResolution"
$taskExists = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue

if ($taskExists) {} else {
	$action = New-ScheduledTaskAction -Execute "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\SetTimerResolution.exe" -Argument "--resolution 5070"
	$trigger = New-ScheduledTaskTrigger -AtStartup 
	$settings = New-ScheduledTaskSettingsSet -Hidden -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -DontStopOnIdleEnd
	$task = New-ScheduledTask -Action $action -Trigger $trigger -Settings $settings
	Register-ScheduledTask -TaskName "LaunchSetTimerResolution" -InputObject $task -User "NT AUTHORITY\SYSTEM" | Out-Null 
	Start-ScheduledTask -TaskName "LaunchSetTimerResolution"
}
