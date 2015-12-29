pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :FUSNJOY
if %ERRORLEVEL%==2 goto :FUSNOTH
goto :QUITOUT
:FUSNJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Fusion.ini" "Select Configured Fusion.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
if "%%~a"=="Player1Keys" set Player1Keys=%%~b
if "%%~a"=="Player1bKeys" set Player1bKeys=%%~b
if "%%~a"=="Player1cKeys" set Player1cKeys=%%~b
if "%%~a"=="Player1dKeys" set Player1dKeys=%%~b
if "%%~a"=="Player2Keys" set Player2Keys=%%~b
if "%%~a"=="Player2bKeys" set Player2bKeys=%%~b
if "%%~a"=="Player2cKeys" set Player2cKeys=%%~b
if "%%~a"=="Player2dKeys" set Player2dKeys=%%~b
if "%%~a"=="Player1Buttons" set Player1Buttons=%%~b
if "%%~a"=="Player1bButtons" set Player1bButtons=%%~b
if "%%~a"=="Player1cButtons" set Player1cButtons=%%~b
if "%%~a"=="Player1dButtons" set Player1dButtons=%%~b
if "%%~a"=="Player2Buttons" set Player2Buttons=%%~b
if "%%~a"=="Player2bButtons" set Player2bButtons=%%~b
if "%%~a"=="Player2cButtons" set Player2cButtons=%%~b
if "%%~a"=="Player2dButtons" set Player2dButtons=%%~b
if "%%~a"=="Joystick1Type" set Joystick1Type=%%~b
if "%%~a"=="Joystick1bType" set Joystick1bType=%%~b
if "%%~a"=="Joystick1cType" set Joystick1cType=%%~b
if "%%~a"=="Joystick1dType" set Joystick1dType=%%~b
if "%%~a"=="Joystick2Type" set Joystick2Type=%%~b
if "%%~a"=="Joystick2bType" set Joystick2bType=%%~b
if "%%~a"=="Joystick2cType" set Joystick2cType=%%~b
if "%%~a"=="Joystick2dType" set Joystick2dType=%%~b
if "%%~a"=="Joystick1Using" set Joystick1Using=%%~b
if "%%~a"=="Joystick1bUsing" set Joystick1bUsing=%%~b
if "%%~a"=="Joystick1cUsing" set Joystick1cUsing=%%~b
if "%%~a"=="Joystick1dUsing" set Joystick1dUsing=%%~b
if "%%~a"=="Joystick2Using" set Joystick2Using=%%~b
if "%%~a"=="Joystick2bUsing" set Joystick2bUsing=%%~b
if "%%~a"=="Joystick2cUsing" set Joystick2cUsing=%%~b
if "%%~a"=="Joystick2dUsing" set Joystick2dUsing=%%~b
if "%%~a"=="Player1MSKeys" set Player1MSKeys=%%~b
if "%%~a"=="Player2MSKeys" set Player2MSKeys=%%~b
if "%%~a"=="Player1MSButtons" set Player1MSButtons=%%~b
if "%%~a"=="Player2MSButtons" set Player2MSButtons=%%~b
if "%%~a"=="Joystick1MSType" set Joystick1MSType=%%~b
if "%%~a"=="Joystick2MSType" set Joystick2MSType=%%~b
if "%%~a"=="Joystick1MSUsing" set Joystick1MSUsing=%%~b
if "%%~a"=="Joystick2MSUsing" set Joystick2MSUsing=%%~b
if "%%~a"=="MultiTapType" set MultiTapType=%%~b
if "%%~a"=="InvertMouse" set InvertMouse=%%~b
if "%%~a"=="LightgunCursor" set LightgunCursor=%%~b
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*Fusion.ini"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:INJTARGET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "; Graphics Compatibility Options" "[Settings]"
popd
inifile.exe "%NEWCONF%" [Settings] Player1Keys=%Player1Keys%
inifile.exe "%NEWCONF%" [Settings] Player1bKeys=%Player1bKeys%
inifile.exe "%NEWCONF%" [Settings] Player1cKeys=%Player1cKeys%
inifile.exe "%NEWCONF%" [Settings] Player1dKeys=%Player1dKeys%
inifile.exe "%NEWCONF%" [Settings] Player2Keys=%Player2Keys%
inifile.exe "%NEWCONF%" [Settings] Player2bKeys=%Player2bKeys%
inifile.exe "%NEWCONF%" [Settings] Player2cKeys=%Player2cKeys%
inifile.exe "%NEWCONF%" [Settings] Player2dKeys=%Player2dKeys%
inifile.exe "%NEWCONF%" [Settings] Player1Buttons=%Player1Buttons%
inifile.exe "%NEWCONF%" [Settings] Player1bButtons=%Player1bButtons%
inifile.exe "%NEWCONF%" [Settings] Player1cButtons=%Player1cButtons%
inifile.exe "%NEWCONF%" [Settings] Player1dButtons=%Player1dButtons%
inifile.exe "%NEWCONF%" [Settings] Player2Buttons=%Player2Buttons%
inifile.exe "%NEWCONF%" [Settings] Player2bButtons=%Player2bButtons%
inifile.exe "%NEWCONF%" [Settings] Player2cButtons=%Player2cButtons%
inifile.exe "%NEWCONF%" [Settings] Player2dButtons=%Player2dButtons%
inifile.exe "%NEWCONF%" [Settings] Joystick1Type=%Joystick1Type%
inifile.exe "%NEWCONF%" [Settings] Joystick1bType=%Joystick1bType%
inifile.exe "%NEWCONF%" [Settings] Joystick1cType=%Joystick1cType%
inifile.exe "%NEWCONF%" [Settings] Joystick1dType=%Joystick1dType%
inifile.exe "%NEWCONF%" [Settings] Joystick2Type=%Joystick2Type%
inifile.exe "%NEWCONF%" [Settings] Joystick2bType=%Joystick2bType%
inifile.exe "%NEWCONF%" [Settings] Joystick2cType=%Joystick2cType%
inifile.exe "%NEWCONF%" [Settings] Joystick2dType=%Joystick2dType%
inifile.exe "%NEWCONF%" [Settings] Joystick1Using=%Joystick1Using%
inifile.exe "%NEWCONF%" [Settings] Joystick1bUsing=%Joystick1bUsing%
inifile.exe "%NEWCONF%" [Settings] Joystick1cUsing=%Joystick1cUsing%
inifile.exe "%NEWCONF%" [Settings] Joystick1dUsing=%Joystick1dUsing%
inifile.exe "%NEWCONF%" [Settings] Joystick2Using=%Joystick2Using%
inifile.exe "%NEWCONF%" [Settings] Joystick2bUsing=%Joystick2bUsing%
inifile.exe "%NEWCONF%" [Settings] Joystick2cUsing=%Joystick2cUsing%
inifile.exe "%NEWCONF%" [Settings] Joystick2dUsing=%Joystick2dUsing%
inifile.exe "%NEWCONF%" [Settings] Player1MSKeys=%Player1MSKeys%
inifile.exe "%NEWCONF%" [Settings] Player2MSKeys=%Player2MSKeys%
inifile.exe "%NEWCONF%" [Settings] Player1MSButtons=%Player1MSButtons%
inifile.exe "%NEWCONF%" [Settings] Player2MSButtons=%Player2MSButtons%
inifile.exe "%NEWCONF%" [Settings] Joystick1MSType=%Joystick1MSType%
inifile.exe "%NEWCONF%" [Settings] Joystick2MSType=%Joystick2MSType%
inifile.exe "%NEWCONF%" [Settings] Joystick1MSUsing=%Joystick1MSUsing%
inifile.exe "%NEWCONF%" [Settings] Joystick2MSUsing=%Joystick2MSUsing%
inifile.exe "%NEWCONF%" [Settings] MultiTapType=%MultiTapType%
inifile.exe "%NEWCONF%" [Settings] InvertMouse=%InvertMouse%
inifile.exe "%NEWCONF%" [Settings] LightgunCursor=%LightgunCursor%
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "; Graphics Compatibility Options"
popd
exit /b

:FUSNOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Fusion.ini" "Select Configured Fusion.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
if "%%~a"=="ForceCompatibleGFX" set ForceCompatibleGFX=%%~b
if "%%~a"=="CompatibleGFXOpt" set CompatibleGFXOpt=%%~b
if "%%~a"=="EnhancedGFXOpt" set EnhancedGFXOpt=%%~b
if "%%~a"=="ForceFullScreen32" set ForceFullScreen32=%%~b
if "%%~a"=="VistaAeroIgnore" set VistaAeroIgnore=%%~b
if "%%~a"=="VistaNoWndVSync" set VistaNoWndVSync=%%~b
if "%%~a"=="DebugFlags" set DebugFlags=%%~b
if "%%~a"=="ForceSWBuffer" set ForceSWBuffer=%%~b
if "%%~a"=="LastSMSROM" set LastSMSROM=%%~b
if "%%~a"=="LastGGROM" set LastGGROM=%%~b
if "%%~a"=="SMSUSABIOS" set SMSUSABIOS=%%~b
if "%%~a"=="SMSJAPBIOS" set SMSJAPBIOS=%%~b
if "%%~a"=="SMSEURBIOS" set SMSEURBIOS=%%~b
if "%%~a"=="GGBIOS" set GGBIOS=%%~b
if "%%~a"=="SF7000IPL" set SF7000IPL=%%~b
if "%%~a"=="SMSSpriteLimitDisable" set SMSSpriteLimitDisable=%%~b
if "%%~a"=="YM2413Disable" set YM2413Disable=%%~b
if "%%~a"=="SMSBIOSDisable" set SMSBIOSDisable=%%~b
if "%%~a"=="SMSBorderDisable" set SMSBorderDisable=%%~b
if "%%~a"=="GameGearZoom" set GameGearZoom=%%~b
if "%%~a"=="GameGearFull" set GameGearFull=%%~b
if "%%~a"=="LastGenesisROM" set LastGenesisROM=%%~b
if "%%~a"=="GenesisBIOS" set GenesisBIOS=%%~b
if "%%~a"=="AutoChecksums" set AutoChecksums=%%~b
if "%%~a"=="GenBorderDisable" set GenBorderDisable=%%~b
if "%%~a"=="LastSegaCDImage" set LastSegaCDImage=%%~b
if "%%~a"=="SCDUSABIOS" set SCDUSABIOS=%%~b
if "%%~a"=="SCDJAPBIOS" set SCDJAPBIOS=%%~b
if "%%~a"=="SCDEURBIOS" set SCDEURBIOS=%%~b
if "%%~a"=="SCDStateFiles" set SCDStateFiles=%%~b
if "%%~a"=="DefaultDrive" set DefaultDrive=%%~b
if "%%~a"=="CDReadAhead" set CDReadAhead=%%~b
if "%%~a"=="CD+GMode" set CD+GMode=%%~b
if "%%~a"=="ForceASPI" set ForceASPI=%%~b
if "%%~a"=="BRMPerGame" set BRMPerGame=%%~b
if "%%~a"=="LEDEnabled" set LEDEnabled=%%~b
if "%%~a"=="PerfectSync" set PerfectSync=%%~b
if "%%~a"=="32XM68KBIOS" set 32XM68KBIOS=%%~b
if "%%~a"=="32XMSH2BIOS" set 32XMSH2BIOS=%%~b
if "%%~a"=="32XSSH2BIOS" set 32XSSH2BIOS=%%~b
if "%%~a"=="Disable32X" set Disable32X=%%~b
if "%%~a"=="Fast32XTiming" set Fast32XTiming=%%~b
if "%%~a"=="RefreshRate60Hz" set RefreshRate60Hz=%%~b
if "%%~a"=="RefreshRate50Hz" set RefreshRate50Hz=%%~b
if "%%~a"=="UseExpertModes" set UseExpertModes=%%~b
if "%%~a"=="UseAutoSwitching" set UseAutoSwitching=%%~b
if "%%~a"=="MinSwitchDelay" set MinSwitchDelay=%%~b
if "%%~a"=="Mode256x240" set Mode256x240=%%~b
if "%%~a"=="Mode256x480" set Mode256x480=%%~b
if "%%~a"=="Mode320x240" set Mode320x240=%%~b
if "%%~a"=="Mode320x480" set Mode320x480=%%~b
if "%%~a"=="FileHistory0" set FileHistory0=%%~b
if "%%~a"=="FileHistory1" set FileHistory1=%%~b
if "%%~a"=="FileHistory2" set FileHistory2=%%~b
if "%%~a"=="FileHistory3" set FileHistory3=%%~b
if "%%~a"=="FileHistory4" set FileHistory4=%%~b
if "%%~a"=="FileHistory5" set FileHistory5=%%~b
if "%%~a"=="FileHistory6" set FileHistory6=%%~b
if "%%~a"=="FileHistory7" set FileHistory7=%%~b
if "%%~a"=="FileHistory8" set FileHistory8=%%~b
if "%%~a"=="FileHistory9" set FileHistory9=%%~b
if "%%~a"=="FileHistoryA" set FileHistoryA=%%~b
if "%%~a"=="FileHistoryB" set FileHistoryB=%%~b
if "%%~a"=="FileHistoryC" set FileHistoryC=%%~b
if "%%~a"=="FileHistoryD" set FileHistoryD=%%~b
if "%%~a"=="FileHistoryE" set FileHistoryE=%%~b
if "%%~a"=="FileHistoryF" set FileHistoryF=%%~b
if "%%~a"=="ShortenHistoryNames" set ShortenHistoryNames=%%~b
if "%%~a"=="NetplayName" set NetplayName=%%~b
if "%%~a"=="NetplayServer" set NetplayServer=%%~b
if "%%~a"=="NetplayPlayers" set NetplayPlayers=%%~b
if "%%~a"=="NetplayLatency" set NetplayLatency=%%~b
if "%%~a"=="NetplayBandwidth" set NetplayBandwidth=%%~b
if "%%~a"=="ScreenshotType" set ScreenshotType=%%~b
if "%%~a"=="ScreenshotMode" set ScreenshotMode=%%~b
if "%%~a"=="CurrentCountry" set CurrentCountry=%%~b
if "%%~a"=="CountryAutoDetect" set CountryAutoDetect=%%~b
if "%%~a"=="CountryOrder" set CountryOrder=%%~b
if "%%~a"=="CurrentWaveFormat" set CurrentWaveFormat=%%~b
if "%%~a"=="SoundOverdrive" set SoundOverdrive=%%~b
if "%%~a"=="PSGNoiseBoost" set PSGNoiseBoost=%%~b
if "%%~a"=="SoundSuperHQ" set SoundSuperHQ=%%~b
if "%%~a"=="SoundDisabled" set SoundDisabled=%%~b
if "%%~a"=="SoundFilter" set SoundFilter=%%~b
if "%%~a"=="CurrentRenderMode" set CurrentRenderMode=%%~b
if "%%~a"=="FullScreen" set FullScreen=%%~b
if "%%~a"=="DWindowXPos" set DWindowXPos=%%~b
if "%%~a"=="DWindowYPos" set DWindowYPos=%%~b
if "%%~a"=="DWindowSize" set DWindowSize=%%~b
if "%%~a"=="DResolution" set DResolution=%%~b
if "%%~a"=="DRenderMode" set DRenderMode=%%~b
if "%%~a"=="DFixedAspect" set DFixedAspect=%%~b
if "%%~a"=="DFixedZoom" set DFixedZoom=%%~b
if "%%~a"=="DFiltered" set DFiltered=%%~b
if "%%~a"=="DNTSCAspect" set DNTSCAspect=%%~b
if "%%~a"=="DNearestMultiple" set DNearestMultiple=%%~b
if "%%~a"=="DScanlines" set DScanlines=%%~b
if "%%~a"=="VSyncEnabled" set VSyncEnabled=%%~b
if "%%~a"=="FPSEnabled" set FPSEnabled=%%~b
if "%%~a"=="CurrentRenderPlugin" set CurrentRenderPlugin=%%~b
if "%%~a"=="AllowSleeping" set AllowSleeping=%%~b
if "%%~a"=="AlternateTiming" set AlternateTiming=%%~b
if "%%~a"=="DisableShortcuts" set DisableShortcuts=%%~b
if "%%~a"=="ThreadPriority" set ThreadPriority=%%~b
if "%%~a"=="StaticDisabled" set StaticDisabled=%%~b
if "%%~a"=="Brighten" set Brighten=%%~b
if "%%~a"=="CartBootEnabled" set CartBootEnabled=%%~b
if "%%~a"=="MSNStatusEnabled" set MSNStatusEnabled=%%~b
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% System settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*Fusion.ini"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "; Graphics Compatibility Options" "[Settings]"
popd
inifile.exe "%NEWCONF%" [Settings] ForceCompatibleGFX=%ForceCompatibleGFX%
inifile.exe "%NEWCONF%" [Settings] CompatibleGFXOpt=%CompatibleGFXOpt%
inifile.exe "%NEWCONF%" [Settings] EnhancedGFXOpt=%EnhancedGFXOpt%
inifile.exe "%NEWCONF%" [Settings] ForceFullScreen32=%ForceFullScreen32%
inifile.exe "%NEWCONF%" [Settings] VistaAeroIgnore=%VistaAeroIgnore%
inifile.exe "%NEWCONF%" [Settings] VistaNoWndVSync=%VistaNoWndVSync%
inifile.exe "%NEWCONF%" [Settings] DebugFlags=%DebugFlags%
inifile.exe "%NEWCONF%" [Settings] ForceSWBuffer=%ForceSWBuffer%
inifile.exe "%NEWCONF%" [Settings] LastSMSROM=%LastSMSROM%
inifile.exe "%NEWCONF%" [Settings] LastGGROM=%LastGGROM%
inifile.exe "%NEWCONF%" [Settings] SMSUSABIOS=%SMSUSABIOS%
inifile.exe "%NEWCONF%" [Settings] SMSJAPBIOS=%SMSJAPBIOS%
inifile.exe "%NEWCONF%" [Settings] SMSEURBIOS=%SMSEURBIOS%
inifile.exe "%NEWCONF%" [Settings] GGBIOS=%GGBIOS%
inifile.exe "%NEWCONF%" [Settings] SF7000IPL=%SF7000IPL%
inifile.exe "%NEWCONF%" [Settings] SMSSpriteLimitDisable=%SMSSpriteLimitDisable%
inifile.exe "%NEWCONF%" [Settings] YM2413Disable=%YM2413Disable%
inifile.exe "%NEWCONF%" [Settings] SMSBIOSDisable=%SMSBIOSDisable%
inifile.exe "%NEWCONF%" [Settings] SMSBorderDisable=%SMSBorderDisable%
inifile.exe "%NEWCONF%" [Settings] GameGearZoom=%GameGearZoom%
inifile.exe "%NEWCONF%" [Settings] GameGearFull=%GameGearFull%
inifile.exe "%NEWCONF%" [Settings] LastGenesisROM=%LastGenesisROM%
inifile.exe "%NEWCONF%" [Settings] GenesisBIOS=%GenesisBIOS%
inifile.exe "%NEWCONF%" [Settings] AutoChecksums=%AutoChecksums%
inifile.exe "%NEWCONF%" [Settings] GenBorderDisable=%GenBorderDisable%
inifile.exe "%NEWCONF%" [Settings] LastSegaCDImage=%LastSegaCDImage%
inifile.exe "%NEWCONF%" [Settings] SCDUSABIOS=%SCDUSABIOS%
inifile.exe "%NEWCONF%" [Settings] SCDJAPBIOS=%SCDJAPBIOS%
inifile.exe "%NEWCONF%" [Settings] SCDEURBIOS=%SCDEURBIOS%
inifile.exe "%NEWCONF%" [Settings] SCDStateFiles=%SCDStateFiles%
inifile.exe "%NEWCONF%" [Settings] DefaultDrive=%DefaultDrive%
inifile.exe "%NEWCONF%" [Settings] CDReadAhead=%CDReadAhead%
inifile.exe "%NEWCONF%" [Settings] CD+GMode %CD+GMode%
inifile.exe "%NEWCONF%" [Settings] ForceASPI=%ForceASPI%
inifile.exe "%NEWCONF%" [Settings] BRMPerGame=%BRMPerGame%
inifile.exe "%NEWCONF%" [Settings] LEDEnabled=%LEDEnabled%
inifile.exe "%NEWCONF%" [Settings] PerfectSync=%PerfectSync%
inifile.exe "%NEWCONF%" [Settings] 32XM68KBIOS=%32XM68KBIOS%
inifile.exe "%NEWCONF%" [Settings] 32XMSH2BIOS=%32XMSH2BIOS%
inifile.exe "%NEWCONF%" [Settings] 32XSSH2BIOS=%32XSSH2BIOS%
inifile.exe "%NEWCONF%" [Settings] Disable32X=%Disable32X%
inifile.exe "%NEWCONF%" [Settings] Fast32XTiming=%Fast32XTiming%
inifile.exe "%NEWCONF%" [Settings] RefreshRate60Hz=%RefreshRate60Hz%
inifile.exe "%NEWCONF%" [Settings] RefreshRate50Hz=%RefreshRate50Hz%
inifile.exe "%NEWCONF%" [Settings] UseExpertModes=%UseExpertModes%
inifile.exe "%NEWCONF%" [Settings] UseAutoSwitching=%UseAutoSwitching%
inifile.exe "%NEWCONF%" [Settings] MinSwitchDelay=%MinSwitchDelay%
inifile.exe "%NEWCONF%" [Settings] Mode256x240=%Mode256x240%
inifile.exe "%NEWCONF%" [Settings] Mode256x480=%Mode256x480%
inifile.exe "%NEWCONF%" [Settings] Mode320x240=%Mode320x240%
inifile.exe "%NEWCONF%" [Settings] Mode320x480=%Mode320x480%
inifile.exe "%NEWCONF%" [Settings] FileHistory0=%FileHistory0%
inifile.exe "%NEWCONF%" [Settings] FileHistory1=%FileHistory1%
inifile.exe "%NEWCONF%" [Settings] FileHistory2=%FileHistory2%
inifile.exe "%NEWCONF%" [Settings] FileHistory3=%FileHistory3%
inifile.exe "%NEWCONF%" [Settings] FileHistory4=%FileHistory4%
inifile.exe "%NEWCONF%" [Settings] FileHistory5=%FileHistory5%
inifile.exe "%NEWCONF%" [Settings] FileHistory6=%FileHistory6%
inifile.exe "%NEWCONF%" [Settings] FileHistory7=%FileHistory7%
inifile.exe "%NEWCONF%" [Settings] FileHistory8=%FileHistory8%
inifile.exe "%NEWCONF%" [Settings] FileHistory9=%FileHistory9%
inifile.exe "%NEWCONF%" [Settings] FileHistoryA=%FileHistoryA%
inifile.exe "%NEWCONF%" [Settings] FileHistoryB=%FileHistoryB%
inifile.exe "%NEWCONF%" [Settings] FileHistoryC=%FileHistoryC%
inifile.exe "%NEWCONF%" [Settings] FileHistoryD=%FileHistoryD%
inifile.exe "%NEWCONF%" [Settings] FileHistoryE=%FileHistoryE%
inifile.exe "%NEWCONF%" [Settings] FileHistoryF=%FileHistoryF%
inifile.exe "%NEWCONF%" [Settings] ShortenHistoryNames=%ShortenHistoryNames%
inifile.exe "%NEWCONF%" [Settings] NetplayName=%NetplayName%
inifile.exe "%NEWCONF%" [Settings] NetplayServer=%NetplayServer%
inifile.exe "%NEWCONF%" [Settings] NetplayPlayers=%NetplayPlayers%
inifile.exe "%NEWCONF%" [Settings] NetplayLatency=%NetplayLatency%
inifile.exe "%NEWCONF%" [Settings] NetplayBandwidth=%NetplayBandwidth%
inifile.exe "%NEWCONF%" [Settings] ScreenshotType=%ScreenshotType%
inifile.exe "%NEWCONF%" [Settings] ScreenshotMode=%ScreenshotMode%
inifile.exe "%NEWCONF%" [Settings] CurrentCountry=%CurrentCountry%
inifile.exe "%NEWCONF%" [Settings] CountryAutoDetect=%CountryAutoDetect%
inifile.exe "%NEWCONF%" [Settings] CountryOrder=%CountryOrder%
inifile.exe "%NEWCONF%" [Settings] CurrentWaveFormat=%CurrentWaveFormat%
inifile.exe "%NEWCONF%" [Settings] SoundOverdrive=%SoundOverdrive%
inifile.exe "%NEWCONF%" [Settings] PSGNoiseBoost=%PSGNoiseBoost%
inifile.exe "%NEWCONF%" [Settings] SoundSuperHQ=%SoundSuperHQ%
inifile.exe "%NEWCONF%" [Settings] SoundDisabled=%SoundDisabled%
inifile.exe "%NEWCONF%" [Settings] SoundFilter=%SoundFilter%
inifile.exe "%NEWCONF%" [Settings] CurrentRenderMode=%CurrentRenderMode%
inifile.exe "%NEWCONF%" [Settings] FullScreen=%FullScreen%
inifile.exe "%NEWCONF%" [Settings] DWindowXPos=%DWindowXPos%
inifile.exe "%NEWCONF%" [Settings] DWindowYPos=%DWindowYPos%
inifile.exe "%NEWCONF%" [Settings] DWindowSize=%DWindowSize%
inifile.exe "%NEWCONF%" [Settings] DResolution=%DResolution%
inifile.exe "%NEWCONF%" [Settings] DRenderMode=%DRenderMode%
inifile.exe "%NEWCONF%" [Settings] DFixedAspect=%DFixedAspect%
inifile.exe "%NEWCONF%" [Settings] DFixedZoom=%DFixedZoom%
inifile.exe "%NEWCONF%" [Settings] DFiltered=%DFiltered%
inifile.exe "%NEWCONF%" [Settings] DNTSCAspect=%DNTSCAspect%
inifile.exe "%NEWCONF%" [Settings] DNearestMultiple=%DNearestMultiple%
inifile.exe "%NEWCONF%" [Settings] DScanlines=%DScanlines%
inifile.exe "%NEWCONF%" [Settings] VSyncEnabled=%VSyncEnabled%
inifile.exe "%NEWCONF%" [Settings] FPSEnabled=%FPSEnabled%
inifile.exe "%NEWCONF%" [Settings] CurrentRenderPlugin=%CurrentRenderPlugin%
inifile.exe "%NEWCONF%" [Settings] AllowSleeping=%AllowSleeping%
inifile.exe "%NEWCONF%" [Settings] AlternateTiming=%AlternateTiming%
inifile.exe "%NEWCONF%" [Settings] DisableShortcuts=%DisableShortcuts%
inifile.exe "%NEWCONF%" [Settings] ThreadPriority=%ThreadPriority%
inifile.exe "%NEWCONF%" [Settings] StaticDisabled=%StaticDisabled%
inifile.exe "%NEWCONF%" [Settings] Brighten=%Brighten%
inifile.exe "%NEWCONF%" [Settings] CartBootEnabled=%CartBootEnabled%
inifile.exe "%NEWCONF%" [Settings] MSNStatusEnabled=%MSNStatusEnabled%
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "; Graphics Compatibility Options"
popd
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
