pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :PROSYSJOY
if %ERRORLEVEL%==2 goto :PROSYSOTH
goto :QUITOUT
:PROSYSJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%AT78%\Config\prosystem.ini" "Select Configured prosystem.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting AT78 Joystick Configurations" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%AT78%\%GAMEDIR%*prosystem.ini"') do (
set NEWCONF=%%~a
call :INJOY
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:PROSYSOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%AT78%\Config\prosystem.ini" "Select Configured prosystem.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting AT78 Settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%AT78%\%GAMEDIR%*prosystem.ini"') do (
set NEWCONF=%%~a
call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Display]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Emulation]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUS3
)

:INJOY
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Input]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS1
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Input] %NEWVAL%=%SCRVAL%
exit /b
:TRUS1
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Display] %NEWVAL%=%SCRVAL%
exit /b
:TRUS2
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Sound] %NEWVAL%=%SCRVAL%
exit /b
:TRUS3
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Emulation] %NEWVAL%=%SCRVAL%
exit /b
