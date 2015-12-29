pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :DESMUMEJOY
if %ERRORLEVEL%==2 goto :DESMUMEOTH
goto :QUITOUT
:DESMUMEOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%NDS%\desmume.ini" "Select Configured desmume.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Nintendo DS Library using preconfigured settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%NDS%\%GAMEDIR%*desmume.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:DESMUMEJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%NDS%\desmume.ini" "Select Configured desmume.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Nintendo DS Library using preconfigured Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%NDS%\%GAMEDIR%*desmume.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJOY
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:INJOY
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Controls]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS4
)
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [3D]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Video]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Display]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Emulation]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Bios]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS6
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Firmware]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS7
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS8
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Framelimit]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS9
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Hotkeys]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS10
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [3D] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Video] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Display] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Controls] %NEWVAL%=%SCRVAL%
exit /b
:TRANS5
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Emulation] %NEWVAL%=%SCRVAL%
exit /b
:TRANS6
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Bios] %NEWVAL%=%SCRVAL%
exit /b
:TRANS7
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Firmware] %NEWVAL%=%SCRVAL%
exit /b
:TRANS8
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Sound] %NEWVAL%=%SCRVAL%
exit /b
:TRANS9
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Framelimit] %NEWVAL%=%SCRVAL%
exit /b
:TRANS10
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Hotkeys] %NEWVAL%=%SCRVAL%
exit /b
