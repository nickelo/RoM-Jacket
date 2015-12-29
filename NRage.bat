pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%N64%\NRage.ini" "Select Configured NRage.ini" /noquote') do %%a
if %errorlevel%==1 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SRCPTH=%%~dpa
for %%a in ("%SRCPTH:~0,-1%") do set SRCCFG=%%~a\Project64.cfg
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting N64 NRage Controls" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%N64%\*NRage.ini"') do (
set NEWCONPTH=%%~dpa
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for %%a in ("%NEWCONPTH:~0,-1%") do set NEWCONFCFG=%%~a\Project64.cfg
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SRCCFG%" [Plugin] Controller Dll') do  inifile.exe "%NEWCONFCFG%" [Plugin] Controller Dll=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "" [Plugin] Controller Dll Ver') do inifile.exe "%NEWCONF%" [Plugin] Controller Dll Ver=%%~a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Controller 1]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Controller 2]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Controller 3]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Controller 4]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Controls]') do 
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Shortcuts]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS6
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Modifiers]') do (
SET SCRTMP=%%~a
SET SCRVAL=%%~b
call :TRANS7
)
exit /b

:TRANS1
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
if "%NEWVAL%" NEQ "MemPakFile" inifile.exe "%NEWCONF%" [Controller 2] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
if "%NEWVAL%" NEQ "MemPakFile" inifile.exe "%NEWCONF%" [Controller 3] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
if "%NEWVAL%" NEQ "MemPakFile" inifile.exe "%NEWCONF%" [Controller 4] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Controls] %NEWVAL%=%SCRVAL%
exit /b
:TRANS5
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Shortcuts] %NEWVAL%=%SCRVAL%
exit /b
:TRANS6
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Modifiers] %NEWVAL%=%SCRVAL%
exit /b
:TRANS7
for %%a in ("%SCRTMP:~4,100%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Controller 1] %NEWVAL%=%SCRVAL%
exit /b
