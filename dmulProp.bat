pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :DMULJOY
if %ERRORLEVEL%==2 goto :DMULOTH
goto :QUITOUT
:DMULJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%DEMULTEMP%\paddemul.ini" "Select Configured paddemul.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%DEMULTEMP%\%GAMEDIR%*paddemul.ini"') do (
set NEWLOC=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJOY
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%DEMULTEMP%\%GAMEDIR%*demul.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b
:INJOY
copy /y "%SOURCECFG%" "%NEWLOC%"
exit /b

:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCELOC%demul.ini" [PORTA]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCELOC%demul.ini" [PORTB]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCELOC%demul.ini" [PORTC]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCELOC%demul.ini" [PORTD]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS4
)
exit /b

:DMULOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%DEMULTEMP%\demul.ini" "Select Configured demul.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%DEMULTEMP%\%GAMEDIR%*demul.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=1,2 delims==" %%a in ('dir /b/ad-h "%SOURCELOC%") do copy /y "%SOURCELOC%netdemul.ini" "%GBG%\%GAM%\%CONS%\%DEMULTEMP%%%~a"
for /f "tokens=1,2 delims==" %%a in ('dir /b/ad-h "%SOURCELOC%") do copy /y "%SOURCELOC%spudemul.ini" "%GBG%\%GAM%\%CONS%\%DEMULTEMP%%%~a"
for /f "tokens=1,2 delims==" %%a in ('dir /b/ad-h "%SOURCELOC%") do copy /y "%SOURCELOC%spu*.ini" "%GBG%\%GAM%\%CONS%\%DEMULTEMP%%%~a"
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSA0') do  inifile.exe "%NEWCONF%" [VMS] VMSA0=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSA1') do  inifile.exe "%NEWCONF%" [VMS] VMSA1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSB0') do  inifile.exe "%NEWCONF%" [VMS] VMSB0=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSB1') do  inifile.exe "%NEWCONF%" [VMS] VMSB1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSC0') do  inifile.exe "%NEWCONF%" [VMS] VMSC0=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSC1') do  inifile.exe "%NEWCONF%" [VMS] VMSC1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSD0') do  inifile.exe "%NEWCONF%" [VMS] VMSD0=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [VMS] VMSD1') do  inifile.exe "%NEWCONF%" [VMS] VMSD1=%%a

SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Plugins]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
exit /b

:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PORTA] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PORTB] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PORTC] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PORT4] %NEWVAL%=%SCRVAL%
exit /b

:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [MainSettings] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Filenames] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
