if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources")) { 
	New-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}

Stop-Process -Name "REAL" -Force -ErrorAction SilentlyContinue
Stop-Process -Name "HoneLatencyRemover" -Force -ErrorAction SilentlyContinue
Remove-Item "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\AudioLatency.bat" -ErrorAction SilentlyContinue
Remove-Item "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\HoneLatencyRemover.exe" -ErrorAction SilentlyContinue

$taskName = "LaunchAudioLatencyRemover"
$taskExists = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue

if ($taskExists) {
	Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}
