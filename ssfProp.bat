pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :SSFJOY
if %ERRORLEVEL%==2 goto :SSFOTH
goto :QUITOUT
:SSFJOY
if 
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Saturn Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%SSAT%\%GAMEDIR%*ssf.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Input]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRANS1
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Input] %NEWVAL%=%SCRVAL%
exit /b

:SSFOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%SSAT%\ssf.ini" "Select Configured ssf.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Saturn settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%SSAT%\%GAMEDIR%*ssf.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Peripheral] DataCartridge') do  inifile.exe "%NEWCONF%" [Peripheral] DataCartridge="%%a"
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Peripheral] DataCartridgeEnable') do  inifile.exe "%NEWCONF%" [Peripheral] DataCartridgeEnable="%%a"
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Peripheral] CDDrive') do  inifile.exe "%NEWCONF%" [Peripheral] CDDrive="%%a"
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Other] ScreenMode') do  inifile.exe "%NEWCONF%" [Other] ScreenMode="%%a"

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Screen]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Program1]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Program2]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Program3]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Program4]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS6
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [SSFV]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS7
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [SpeedTest]') do (
SET SCRTMP="%%a"
SET SCRVAL=%%b
call :TRUNS8
)
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Screen] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Sound] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Program1] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Program2] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Program3] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Program4] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS7
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [SSFV] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS8
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [SpeedTest] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
