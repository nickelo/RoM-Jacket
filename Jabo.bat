pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%N64%\Config\Project64.cfg" "Select Configured Project64.cfg" /noquote') do %%a
if %errorlevel%==1 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting N64 Jabo Dinput plugin configurations" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%N64%\*Project64.cfg"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Plugin] Controller Dll') do  inifile.exe "%NEWCONF%" [Plugin] Controller Dll=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Plugin] Controller Dll Ver') do inifile.exe "%NEWCONF%" [Plugin] Controller Dll Ver=%%~a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [DirectInput-Controller 0]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [DirectInput-Controller 1]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [DirectInput-Controller 2]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [DirectInput-Controller 3]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS4
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [DirectInput-Controller 0] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [DirectInput-Controller 1] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [DirectInput-Controller 2] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [DirectInput-Controller 3] %NEWVAL%=%SCRVAL%
exit /b