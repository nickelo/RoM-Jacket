pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :DOLPHJOY
if %ERRORLEVEL%==2 goto :DOLPHOTH
goto :QUITOUT
:DOLPHJOY
if "%CSTCONS%"=="%NGC%" for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Dolphin.ini" "Select Configured Dolphin.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
if "%CSTCONS%"=="%NGC%" for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCEPAD=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\GCPadNew.ini" "Select Configured GCPadNew.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
if "%CSTCONS%"=="%WII%" for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCEPAD=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\WiimoteNew.ini" "Select Configured WiimoteNew.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCEPAD%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
set NEWCONF=%%~a
call :INJOY
)
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
set NEWCONF=%%~a
call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJOY
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Hotkeys]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Hotkeys] %NEWVAL%=%SCRVAL%
exit /b
:INJTARGET
copy /y "%SOURCELOC%*New.ini" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NEWCONF%"
exit /b

:XM7OTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Dolphin.ini" "Select Configured Dolphin.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating FM-TOWNS settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*Dolphin.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
set NEWCONL=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHEG
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHEG
copy /y "%SOURCELOC%DSP.ini" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NEWCONL%"
copy /y "%SOURCELOC%gfx_*.ini" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%NEWCONL%"
exit /b
:OTHET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] HLE_BS2') do inifile.exe "%NEWCONF%" [Core] HLE_BS2=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] CPUCore') do inifile.exe "%NEWCONF%" [Core] CPUCore=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] Fastmem') do inifile.exe "%NEWCONF%" [Core] Fastmem=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] CPUThread') do inifile.exe "%NEWCONF%" [Core] CPUThread=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] DSPThread') do inifile.exe "%NEWCONF%" [Core] DSPThread=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] DSPHLE') do inifile.exe "%NEWCONF%" [Core] DSPHLE=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SkipIdle') do inifile.exe "%NEWCONF%" [Core] SkipIdle=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] LockThreads') do inifile.exe "%NEWCONF%" [Core] LockThreads=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] DVDRoot') do inifile.exe "%NEWCONF%" [Core] DVDRoot=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] Apploader') do inifile.exe "%NEWCONF%" [Core] Apploader=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] EnableCheats') do inifile.exe "%NEWCONF%" [Core] EnableCheats=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SelectedLanguage') do inifile.exe "%NEWCONF%" [Core] SelectedLanguage=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] DPL2Decoder') do inifile.exe "%NEWCONF%" [Core] DPL2Decoder=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] Latency') do inifile.exe "%NEWCONF%" [Core] Latency=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SlotA') do inifile.exe "%NEWCONF%" [Core] SlotA=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SlotB') do inifile.exe "%NEWCONF%" [Core] SlotB=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SerialPort1') do inifile.exe "%NEWCONF%" [Core] SerialPort1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] BBA_MAC') do inifile.exe "%NEWCONF%" [Core] BBA_MAC=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SIDevice0') do inifile.exe "%NEWCONF%" [Core] SIDevice0=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SIDevice1') do inifile.exe "%NEWCONF%" [Core] SIDevice1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SIDevice2') do inifile.exe "%NEWCONF%" [Core] SIDevice2=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] SIDevice3') do inifile.exe "%NEWCONF%" [Core] SIDevice3=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] WiiSDCard') do inifile.exe "%NEWCONF%" [Core] WiiSDCard=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] WiiKeyboard') do inifile.exe "%NEWCONF%" [Core] WiiKeyboard=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] WiimoteContinuousScanning') do inifile.exe "%NEWCONF%" [Core] WiimoteContinuousScanning=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] WiimoteEnableSpeaker') do inifile.exe "%NEWCONF%" [Core] WiimoteEnableSpeaker=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] WiimoteReconnectOnLoad') do inifile.exe "%NEWCONF%" [Core] WiimoteReconnectOnLoad=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] RunCompareServer') do inifile.exe "%NEWCONF%" [Core] RunCompareServer=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] RunCompareClient') do inifile.exe "%NEWCONF%" [Core] RunCompareClient=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] FrameLimit') do inifile.exe "%NEWCONF%" [Core] FrameLimit=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] UseFPS') do inifile.exe "%NEWCONF%" [Core] UseFPS=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Core] GFXBackend') do inifile.exe "%NEWCONF%" [Core] GFXBackend=%%a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Interface]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Hotkeys]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Display]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [DSP]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS4
)
exit /b

:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Interface] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Hotkeys] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Display] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [DSP] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
