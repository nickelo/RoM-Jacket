pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :XM6JOY
if %ERRORLEVEL%==2 goto :XM6OTH
goto :QUITOUT
:XM6JOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%X68K%\XM6.ini" "Select Configured XM6.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating X68000 Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%X68K%\%GAMEDIR%*XM6.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Keyboard]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Mouse]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Joystick]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS3
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Keyboard] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Mouse] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick] %NEWVAL%=%SCRVAL%
exit /b

:XM6OTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%X68K%\XM6.ini" "Select Configured XM6.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating X68000 settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%X68K%\%GAMEDIR%*XM6.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Basic]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Display]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Port]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [MIDI]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Windrv]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS6
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Alter]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS7
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Window]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS8
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Resume]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS9
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [TrueKey]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS10
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Misc]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS11
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [MercuryUnit]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS12
)
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Basic] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Sound] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Display] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Port] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [MIDI] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Windrv] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS7
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Alter] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS8
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Window] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS9
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Resume] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS10
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [TrueKey] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS11
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Misc] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS12
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [MercuryUnit] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
