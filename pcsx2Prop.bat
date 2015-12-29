pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :PCSX2JOY
if %ERRORLEVEL%==2 goto :PCSX2OTH
goto :QUITOUT
:PCSX2JOY
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%PS2%\PCSX2_ui.ini" "Select Configured PCSX2_ui.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Sony Playstation 2 Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%PS2%\%GAMEDIR%*PCSX2_ui.ini"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b
:INJTARGET
copy /y "%SOURCELOC%LilyPad.ini" "%NEWLOC%"
copy /y "%SOURCELOC%padpokopom.ini" "%NEWLOC%"
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Filenames] PAD') do  inifile.exe "%NEWCONF%" [Filenames] Pad=%%a
exit /b

:PCSX2OTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%PS2%\PCSX2_ui.ini" "Select Configured PCSX2_ui.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Sony Playstation 2 settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%PS2%\%GAMEDIR%*PCSX2_ui.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultBios') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultBios=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultSnapshots') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultSnapshots=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultSavestates') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultSavestates=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultMemoryCards') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultMemoryCards=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultPluginsFolder') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultPluginsFolder=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultCheats') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultCheats=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] UseDefaultCheatsWS') do  inifile.exe "%NEWCONF%" [Folders] UseDefaultCheatsWS=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] bios') do  inifile.exe "%NEWCONF%" [Folders] bios=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] CheatsWS') do  inifile.exe "%NEWCONF%" [Folders] CheatsWS=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] PluginsFolder') do  inifile.exe "%NEWCONF%" [Folders] PluginsFolder=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] RunIso') do  inifile.exe "%NEWCONF%" [Folders] RunIso=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Folders] RunElf') do  inifile.exe "%NEWCONF%" [Folders] RunElf=%%a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [MainSettings]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Filenames]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Framerate]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [GSWindow]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS4
)
exit /b

:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [MainSettings] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Filenames] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Framerate] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [GSWindow] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
