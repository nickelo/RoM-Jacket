pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :PPSSPPJOY
if %ERRORLEVEL%==2 goto :PPSSPPOTH
goto :QUITOUT
:PPSSPPJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%PSP%\controls.ini" "Select Configured controls.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Sony PSP Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%PSP%\%GAMEDIR%*controls.ini"') do if "%%~a" NEQ "%SOURCECFG%" copy /y "%SOURCECFG%" "%%~a"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:PPSSPPOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%PSP%\ppsspp.ini" "Select Configured ppsspp.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Sony PSP settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%PSP%\%GAMEDIR%*ppsspp.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] NewUI') do  inifile.exe "%NEWCONF%" [General] NewUI=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] AutoLoadLast') do  inifile.exe "%NEWCONF%" [General] AutoLoadLast=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] IgnoreBadMemAccess') do  inifile.exe "%NEWCONF%" [General] IgnoreBadMemAccess=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] AutoRun') do  inifile.exe "%NEWCONF%" [General] AutoRun=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] Language') do  inifile.exe "%NEWCONF%" [General] Language=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] Browse') do  inifile.exe "%NEWCONF%" [General] Browse=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] ConfirmOnQuit') do  inifile.exe "%NEWCONF%" [General] ConfirmOnQuit=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] AutoSaveSymbolMap') do  inifile.exe "%NEWCONF%" [General] AutoSaveSymbolMap=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] TopMost') do  inifile.exe "%NEWCONF%" [General] TopMost=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WindowX') do  inifile.exe "%NEWCONF%" [General] WindowX=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WindowY') do  inifile.exe "%NEWCONF%" [General] WindowY=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] Language') do  inifile.exe "%NEWCONF%" [General] Language=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] RunCount') do  inifile.exe "%NEWCONF%" [General] RunCount=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] NumWorkerThreads') do  inifile.exe "%NEWCONF%" [General] NumWorkerThreads=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] StateSlot') do  inifile.exe "%NEWCONF%" [General] StateSlot=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] EnableCheats') do  inifile.exe "%NEWCONF%" [General] EnableCheats=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] ScreenshotsAsPNG') do  inifile.exe "%NEWCONF%" [General] ScreenshotsAsPNG=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] StateSlot') do  inifile.exe "%NEWCONF%" [General] StateSlot=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WindowWidth') do  inifile.exe "%NEWCONF%" [General] WindowWidth=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WindowHeight') do  inifile.exe "%NEWCONF%" [General] WindowHeight=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] ForceLagSync') do  inifile.exe "%NEWCONF%" [General] ForceLagSync=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] PauseWhenMinimized') do  inifile.exe "%NEWCONF%" [General] PauseWhenMinimized=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] PauseOnLostFocus') do  inifile.exe "%NEWCONF%" [General] PauseOnLostFocus=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] EnableAutoLoad') do  inifile.exe "%NEWCONF%" [General] EnableAutoLoad=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] RewindFlipFrequency') do  inifile.exe "%NEWCONF%" [General] RewindFlipFrequency=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] DumpDecryptedEboots') do  inifile.exe "%NEWCONF%" [General] DumpDecryptedEboots=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] GridView1') do  inifile.exe "%NEWCONF%" [General] GridView1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] GridView2') do  inifile.exe "%NEWCONF%" [General] GridView2=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] GridView3') do  inifile.exe "%NEWCONF%" [General] GridView3=%%a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [CPU]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Graphics]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Control]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [SystemParam]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Network]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS6
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [SpeedHacks]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS7
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [JIT]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS8
)
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [CPU] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Graphics] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Sound] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Control] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [SystemParam] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Network] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS7
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [SpeedHacks] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS8
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [JIT] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
