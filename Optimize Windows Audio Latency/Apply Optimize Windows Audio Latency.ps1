# Downloader
$webClient = New-Object System.Net.WebClient

if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources")) { 
	New-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}

if (!(Test-Path "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\HoneLatencyRemover.exe")) { 
	$webClient.DownloadFile("https://github.com/spddl/LowAudioLatency/releases/download/v2.0.1/low_audio_latency_no_console.exe", "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\HoneLatencyRemover.exe") > $null
}

Stop-Process -Name "REAL" -Force -ErrorAction SilentlyContinue
Stop-Process -Name "HoneLatencyRemover" -Force -ErrorAction SilentlyContinue
Remove-Item "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\AudioLatency.bat" -ErrorAction SilentlyContinue

$taskName = "LaunchAudioLatencyRemover"
$taskExists = Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue

if ($taskExists) {
	Unregister-ScheduledTask -TaskName $taskName -Confirm:$false
}

Start-Process "$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\HoneLatencyRemover.exe" -ErrorAction SilentlyContinue
