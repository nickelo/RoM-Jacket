pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :SPINJOY
if %ERRORLEVEL%==2 goto :SPINOTH
goto :QUITOUT
:SPINJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%ZXSP%\Default.spincfg" "Select Configured Default.spincfg" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating ZX Spectrum Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%ZXSP%\%GAMEDIR%*Default.spincfg"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Control]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Control] %NEWVAL%=%SCRVAL%
exit /b

:SPINOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%ZXSP%\Default.spincfg" "Select Configured Default.spincfg" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating ZX Spectrum settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%ZXSP%\%GAMEDIR%*Default.spincfg"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Hardware]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Video]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Snapshot]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Disk]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Tape]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [System]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS6
)
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Hardware] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Video] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Snapshot] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Disk] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Tape] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [System] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
