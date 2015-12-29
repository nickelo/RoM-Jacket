set PADCFG=
set PAD1TYPE=
set PAD2TYPE=
set PAD3TYPE=
set PAD4TYPE=
set PAD5TYPE=
set PAD6TYPE=
set PAD7TYPE=
set PAD8TYPE=
set MULTITAP1=
set MULTITAP2=
set GPU=
set GPUD=
set SPU=
set SPUD=
pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :EPSXEJOY
if %ERRORLEVEL%==2 goto :EPSXEOTH
goto :QUITOUT

:EPSXEJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\SET.cmd" "Select Configured SET.cmd" /noquote') do %%a
if %errorlevel%==0 exit /b

for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
if /i "%%~a"=="set PADCFG" set PADCFG=%%~b
if /i "%%~a"=="set PAD1TYPE" set PAD1TYPE=%%~b
if /i "%%~a"=="set PAD2TYPE" set PAD2TYPE=%%~b
if /i "%%~a"=="set PAD3TYPE" set PAD3TYPE=%%~b
if /i "%%~a"=="set PAD4TYPE" set PAD4TYPE=%%~b
if /i "%%~a"=="set PAD5TYPE" set PAD5TYPE=%%~b
if /i "%%~a"=="set PAD6TYPE" set PAD6TYPE=%%~b
if /i "%%~a"=="set PAD7TYPE" set PAD7TYPE=%%~b
if /i "%%~a"=="set PAD8TYPE" set PAD8TYPE=%%~b
if /i "%%~a"=="set MULTITAP1" set MULTITAP1=%%~b
if /i "%%~a"=="set MULTITAP2" set MULTITAP2=%%~b
)
set CMDVAR=DEFAULT.cmd
call :INJCFG
set CMDVAR=SET.cmd
call :INJCFG
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%INTERNAL*.cmd"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~dpnxa
call :INJTARGET
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%Pad*.cmd"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~dpnxa
call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:INJCFG
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%%CMDVAR%"') do (
inifile.exe "%%~a" [INI] "set PADCFG"=%PADCFG%
inifile.exe "%%~a" [INI] "set PAD1TYPE"=%PAD1TYPE%
inifile.exe "%%~a" [INI] "set PAD2TYPE"=%PAD2TYPE%
inifile.exe "%%~a" [INI] "set PAD3TYPE"=%PAD3TYPE%
inifile.exe "%%~a" [INI] "set PAD4TYPE"=%PAD4TYPE%
inifile.exe "%%~a" [INI] "set PAD5TYPE"=%PAD5TYPE%
inifile.exe "%%~a" [INI] "set PAD6TYPE"=%PAD6TYPE%
inifile.exe "%%~a" [INI] "set PAD7TYPE"=%PAD7TYPE%
inifile.exe "%%~a" [INI] "set PAD8TYPE"=%PAD8TYPE%
inifile.exe "%%~a" [INI] "set MULTITAP1"=%MULTITAP1%
inifile.exe "%%~a" [INI] "set MULTITAP2"=%MULTITAP2%
)
exit /b

:INJTARGET
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
if "%CD%\" NEQ "%SOURCELOC%" copy /y "%NEWCONF%" "%%~a"
)
popd
exit /b

:EPSXEOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\SET.cmd" "Select Configured SET.cmd" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% System settings" /marquee
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
if /i "%%~a"=="set GPUD" set GPUD=%%~b
if /i "%%~a"=="set GPU" set GPU=%%~b
if /i "%%~a"=="set SPUD" set SPUD=%%~b
if /i "%%~a"=="set SPU" set SPU=%%~b
)
set CMDVAR=DEFAULT.cmd
call :GPUST
set CMDVAR=SET.cmd
call :GPUST
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%PRE.cmd"') do (
set NEWCONF=%%~dpnxa
call :OTHET
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%POST.cmd"') do (
set NEWCONF=%%~dpnxa
call :OTHET
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%Amidog*.cmd"') do (
set NEWCONF=%%~dpnxa
call :OTHET
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%Pe*.cmd"') do (
set NEWCONF=%%~dpnxa
call :OTHET
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%DEFAULT.cmd"') do (
set NEWCONF=%%~dpnxa
call :OTHET
)
for /f  "delims=" %%a in ('dir /b/a-d/s "%SOURCELOC%gpu.*"') do (
set NEWCONF=%%~dpnxa
call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:GPUST
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%%CMDVAR%"') do (
inifile.exe "%%~a" [INI] "set GPUD"=%GPUD%
inifile.exe "%%~a" [INI] "set GPU"=%GPU%
inifile.exe "%%~a" [INI] "set SPUD"=%SPUD%
inifile.exe "%%~a" [INI] "set SPU"=%SPU%
)
exit /b
	
:OTHET		
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/ad-h') do (
if "%CD%\" NEQ "%SOURCELOC%" copy /y "%NEWCONF%" "%%~a"
)
popd
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1