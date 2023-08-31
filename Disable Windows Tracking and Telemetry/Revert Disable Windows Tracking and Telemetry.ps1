Enable-ScheduledTask -TaskPath "\Microsoft\Windows\Application Experience" -TaskName "Microsoft Compatibility Appraiser" > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "Allow Telemetry" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "3" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d "3" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticErrorText" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticLinkText" /f > $null 2>&1
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /f  > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /v "AllowAdvertising"  /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /f > $null 2>&1
Reg Delete "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Windows\CurrentVersion\DeviceAccess" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "2" /f > $null 2>&1
Set-Service DiagTrack -StartupType Automatic > $null 2>&1
Set-Service dmwappushservice -StartupType Manual > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "3" /f > $null 2>&1
Reg Delete "HKCU\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /f > $null 2>&1
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "DoNotTrack" /f > $null 2>&1
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "OptimizeWindowsSearchResultsForScreenReaders" /f  > $null 2>&1
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" /v "FPEnabled" /f > $null 2>&1
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes" /v "ShowSearchSuggestionsGlobal" /f  > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Browser" /v "AllowAddressBarDropdown" /f > $null 2>&1
Reg Delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" /v "EnableEncryptedMediaExtensions" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Experience" /v "AllowCortana" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /v "ModelDownloadAllowed" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Personalization\Settings" /v "RestrictImplicitInkCollection" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /f > $null 2>&1
Reg Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /f > $null 2>&1
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "0" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /f > $null 2>&1
Reg Add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Microsoft\OneDrive" /v "PreventNetworkTrafficPreUserSignIn" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /f > $null 2>&1
Reg Delete "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /f > $null 2>&1
Reg Delete "HKLM\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f > $null 2>&1
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "1" /f > $null 2>&1
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "1" /f > $null 2>&1
