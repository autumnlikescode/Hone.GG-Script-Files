# Downloader
$webClient = New-Object System.Net.WebClient

if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources")) { 
         New-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources" -ItemType Directory -Force -ErrorAction SilentlyContinue | Out-Null 
}
if (!(Test-Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\nvidiaProfileInspector\nvidiaProfileInspector.exe")) {
	$webClient.DownloadFile("https://github.com/Orbmu2k/nvidiaProfileInspector/releases/latest/download/nvidiaProfileInspector.zip", "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\nvidiaProfileInspector.zip") > $null
	Expand-Archive "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\nvidiaProfileInspector.zip" -DestinationPath "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\nvidiaProfileInspector\" > $null 2>&1
	Remove-Item -Path "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\nvidiaProfileInspector.zip" -Force -ErrorAction SilentlyContinue
}
$webClient.DownloadFile("https://raw.githubusercontent.com/auraside/HoneCtrl/main/Files/Base_Profile.nip", "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\Base_Profile.nip") > $null
& "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\nvidiaProfileInspector\nvidiaProfileInspector.exe" "$Env:LOCALAPPDATA\Programs\Hone\resources\assets\hone-resources\Base_Profile.nip"
