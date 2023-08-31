# Downloader
$webClient = New-Object System.Net.WebClient

if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources")) {
	New-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}
$webClient.DownloadFile("https://github.com/auraside/HoneCtrl/raw/main/Files/HoneV3.pow", "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\HoneV3.pow") > $null
Powercfg -import "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\HoneV3.pow" "44444444-4444-4444-4444-444444444451" > $null 2>&1
Powercfg /changename "44444444-4444-4444-4444-444444444451" "Hone Ultimate Power Plan V3" "The Ultimate Power Plan to increase FPS, improve latency and reduce input lag." > $null 2>&1
Powercfg -setactive "44444444-4444-4444-4444-444444444451" > $null 2>&1
Powercfg /d "44444444-4444-4444-4444-444444444459" > $null 2>&1
Powercfg /d "44444444-4444-4444-4444-444444444449" > $null 2>&1
