"%GBC%\wbox.exe" "RJ_GUI" "Select an emultor type to configure" "Demul;NullDC" /DB=1
if %ERRORLEVEL%==1 goto :DEMUL
if %ERRORLEVEL%==2 goto :NULLDC
goto :DEMUL

:DEMUL
set DEMULTEMP=%SEGDC%
if not exist "%GBG%\%GAM%\%CONS%\%NAOMI%" goto :QUITOUT
call "%GBC%\dmulProp.bat">>"%GBC%\logs\dmulProp.log"
exit /b

:NULLDC
pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :NULLDCJOY
if %ERRORLEVEL%==2 goto :NULLDCOTH
goto :QUITOUT
:NULLDCJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%SEGDC%\nulldc.cfg" "Select Configured nulldc.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Sega Dreamcast Library using preconfigured settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%SEGDC%\%GAMEDIR%*nulldc.cfg"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJOY
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b


:INJOY
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [ndc_hookjoy]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [PuruPuru_Pad_1]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [PuruPuru_Pad_2]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [PuruPuru_Pad_3]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [PuruPuru_Pad_4]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Xmaple]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS6
)
exit /b

:NULLDCOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%SEGDC%\nulldc.cfg" "Select Configured nulldc.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Sega Dreamcast Library using preconfigured settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%SEGDC%\%GAMEDIR%*nulldc.cfg"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [nullDC]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [nullDC_plugins]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [nullDC_GUI]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [drkpvr]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [nullAica]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [drkMaple]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS6
)

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Xmaple]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRUNS6
)
exit /b

:TRANS1
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [nullDC] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [nullDC_plugins] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [nullDC_GUI] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [drkpvr] %NEWVAL%=%SCRVAL%
exit /b
:TRANS5
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [nullAica] %NEWVAL%=%SCRVAL%
exit /b
:TRANS6
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [drkMaple] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [ndc_hookjoy] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PuruPuru_Pad_1] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PuruPuru_Pad_2] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PuruPuru_Pad_3] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS5
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [PuruPuru_Pad_4] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS6
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Xmaple] %NEWVAL%=%SCRVAL%
exit /b
