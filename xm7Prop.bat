pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :XM7JOY
if %ERRORLEVEL%==2 goto :XM7OTH
goto :QUITOUT
:XM7JOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\XM7.ini" "Select Configured XM7.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating XM7 System Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*XM7.ini"') do (
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
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Joystick]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
exit /b

:XM7OTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\XM7.ini" "Select Configured XM7.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating XM7 System settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*XM7.ini"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WAVFileDir') do inifile.exe "%NEWCONF%" [General] WAVFileDir=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] BMPFileDir') do inifile.exe "%NEWCONF%" [General] BMPFileDir=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] Version') do inifile.exe "%NEWCONF%" [General] Version=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] CycleSteal') do inifile.exe "%NEWCONF%" [General] CycleSteal=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] MainSpeed') do inifile.exe "%NEWCONF%" [General] MainSpeed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] MMRSpeed') do inifile.exe "%NEWCONF%" [General] MMRSpeed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] FastMMRSpeed') do inifile.exe "%NEWCONF%" [General] FastMMRSpeed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] SubSpeed') do inifile.exe "%NEWCONF%" [General] SubSpeed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] TapeFullSpeed') do inifile.exe "%NEWCONF%" [General] TapeFullSpeed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] TapeFullSpeedMode') do inifile.exe "%NEWCONF%" [General] TapeFullSpeedMode=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] FullSpeed') do inifile.exe "%NEWCONF%" [General] FullSpeed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] AutoSpeedAdjust') do inifile.exe "%NEWCONF%" [General] AutoSpeedAdjust=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] FDDWait') do inifile.exe "%NEWCONF%" [General] FDDWait=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WindowPosX') do inifile.exe "%NEWCONF%" [General] WindowPosX=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] WindowPosY') do inifile.exe "%NEWCONF%" [General] WindowPosY=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] BubbleImageDir') do inifile.exe "%NEWCONF%" [General] BubbleImageDir=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] SubVersion') do inifile.exe "%NEWCONF%" [General] SubVersion=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] LowSpeedMode') do inifile.exe "%NEWCONF%" [General] LowSpeedMode=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] MainSpeedLow') do inifile.exe "%NEWCONF%" [General] MainSpeedLow=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] SubSpeedLow') do inifile.exe "%NEWCONF%" [General] SubSpeedLow=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [General] JsubSpeed') do inifile.exe "%NEWCONF%" [General] JsubSpeed=%%a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Screen]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Option]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Ports]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Window]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Option2]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS6
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Resume]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS7
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Misc]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS8
)
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Keyboard] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick] %NEWVAL%=%SCRVAL%
exit /b


:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Sound] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Screen] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Option] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Ports] %NEWVAL%=%SCRVAL%
exit /b
:TRANS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Window] %NEWVAL%=%SCRVAL%
exit /b
:TRANS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Option2] %NEWVAL%=%SCRVAL%
exit /b
:TRANS7
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Resume] %NEWVAL%=%SCRVAL%
exit /b
:TRANS8
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Misc] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
