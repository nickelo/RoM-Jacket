pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Altirra.ini" "Select Configured Altirra.ini" /noquote') do %%a
for %%a in ("%SOURCECFG:~0,-11%") do set SOURCELOC=%%~dpa
if %errorlevel%==0 exit /b
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :CSTCONSJOY
if %ERRORLEVEL%==2 goto :CSTCONSOTH
goto :QUITOUT
:CSTCONSJOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Atari 800 Joystick settings" /marquee
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "User\Software\virtualdub.org\Altirra\\" --remove
"%GBC%\fart.exe" "%SOURCECFG%" "Settings\\" --remove
"%GBC%\fart.exe" "%SOURCECFG%" "Colors\\" --remove
popd
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*Altirra.ini"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "[Settings]" "[User\Software\virtualdub.org\Altirra\Settings]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Input maps]" "[User\Software\virtualdub.org\Altirra\Settings\Input maps]"
"%GBC%\fart.exe" "%SOURCECFG%" "[ROM Images]" "[User\Software\virtualdub.org\Altirra\ROM Images]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Colors]" "[User\Software\virtualdub.org\Altirra\Settings\Colors]"
"%GBC%\fart.exe" "%SOURCECFG%" "[NTSC]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\NTSC]"
"%GBC%\fart.exe" "%SOURCECFG%" "[PAL]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\PAL]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Window Placement]" "[User\Software\virtualdub.org\Altirra\Window Placement]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Pane layouts]" "[User\Software\virtualdub.org\Altirra\Pane layouts 2]"
"%GBC%\fart.exe" "%SOURCECFG%" "[MRU List]" "[User\Software\virtualdub.org\Altirra\MRU List]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Saved filespecs]" "[User\Software\virtualdub.org\Altirra\Saved filespecs]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Mounted Images]" "[User\Software\virtualdub.org\Altirra\Mounted Images]"
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "User\Software\virtualdub.org\Altirra\\" --remove
"%GBC%\fart.exe" "%NEWCONF%" "Settings\\" --remove
"%GBC%\fart.exe" "%NEWCONF%" "Colors\\" --remove
popd
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Input maps]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "[User\Software\virtualdub.org\Altirra\Settings]"
"%GBC%\fart.exe" "%NEWCONF%" "[Input maps]" "[User\Software\virtualdub.org\Altirra\Settings\Input maps]"
"%GBC%\fart.exe" "%NEWCONF%" "[ROM Images]" "[User\Software\virtualdub.org\Altirra\ROM Images]"
"%GBC%\fart.exe" "%NEWCONF%" "[Colors]" "[User\Software\virtualdub.org\Altirra\Settings\Colors]"
"%GBC%\fart.exe" "%NEWCONF%" "[NTSC]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\NTSC]"
"%GBC%\fart.exe" "%NEWCONF%" "[PAL]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\PAL]"
"%GBC%\fart.exe" "%NEWCONF%" "[Window Placement]" "[User\Software\virtualdub.org\Altirra\Window Placement]"
"%GBC%\fart.exe" "%NEWCONF%" "[Pane layouts]" "[User\Software\virtualdub.org\Altirra\Pane layouts 2]"
"%GBC%\fart.exe" "%NEWCONF%" "[MRU List]" "[User\Software\virtualdub.org\Altirra\MRU List]"
"%GBC%\fart.exe" "%NEWCONF%" "[Saved filespecs]" "[User\Software\virtualdub.org\Altirra\Saved filespecs]"
"%GBC%\fart.exe" "%NEWCONF%" "[Mounted Images]" "[User\Software\virtualdub.org\Altirra\Mounted Images]"
popd
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Control] %NEWVAL%=%SCRVAL%
exit /b

:CSTCONSOTH
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Atari 800 settings" /marquee
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "User\Software\virtualdub.org\Altirra\\" --remove
"%GBC%\fart.exe" "%SOURCECFG%" "Settings\\" --remove
"%GBC%\fart.exe" "%SOURCECFG%" "Colors\\" --remove
popd
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*Altirra.ini"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "[Settings]" "[User\Software\virtualdub.org\Altirra\Settings]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Input maps]" "[User\Software\virtualdub.org\Altirra\Settings\Input maps]"
"%GBC%\fart.exe" "%SOURCECFG%" "[ROM Images]" "[User\Software\virtualdub.org\Altirra\ROM Images]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Colors]" "[User\Software\virtualdub.org\Altirra\Settings\Colors]"
"%GBC%\fart.exe" "%SOURCECFG%" "[NTSC]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\NTSC]"
"%GBC%\fart.exe" "%SOURCECFG%" "[PAL]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\PAL]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Window Placement]" "[User\Software\virtualdub.org\Altirra\Window Placement]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Pane layouts]" "[User\Software\virtualdub.org\Altirra\Pane layouts 2]"
"%GBC%\fart.exe" "%SOURCECFG%" "[MRU List]" "[User\Software\virtualdub.org\Altirra\MRU List]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Saved filespecs]" "[User\Software\virtualdub.org\Altirra\Saved filespecs]"
"%GBC%\fart.exe" "%SOURCECFG%" "[Mounted Images]" "[User\Software\virtualdub.org\Altirra\Mounted Images]"
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "User\Software\virtualdub.org\Altirra\\" --remove
"%GBC%\fart.exe" "%NEWCONF%" "Settings\\" --remove
"%GBC%\fart.exe" "%NEWCONF%" "Colors\\" --remove
popd
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Settings]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [ROM Images]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "[User\Software\virtualdub.org\Altirra\Settings]"
"%GBC%\fart.exe" "%NEWCONF%" "[Input maps]" "[User\Software\virtualdub.org\Altirra\Settings\Input maps]"
"%GBC%\fart.exe" "%NEWCONF%" "[ROM Images]" "[User\Software\virtualdub.org\Altirra\ROM Images]"
"%GBC%\fart.exe" "%NEWCONF%" "[Colors]" "[User\Software\virtualdub.org\Altirra\Settings\Colors]"
"%GBC%\fart.exe" "%NEWCONF%" "[NTSC]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\NTSC]"
"%GBC%\fart.exe" "%NEWCONF%" "[PAL]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\PAL]"
"%GBC%\fart.exe" "%NEWCONF%" "[Window Placement]" "[User\Software\virtualdub.org\Altirra\Window Placement]"
"%GBC%\fart.exe" "%NEWCONF%" "[Pane layouts]" "[User\Software\virtualdub.org\Altirra\Pane layouts 2]"
"%GBC%\fart.exe" "%NEWCONF%" "[MRU List]" "[User\Software\virtualdub.org\Altirra\MRU List]"
"%GBC%\fart.exe" "%NEWCONF%" "[Saved filespecs]" "[User\Software\virtualdub.org\Altirra\Saved filespecs]"
"%GBC%\fart.exe" "%NEWCONF%" "[Mounted Images]" "[User\Software\virtualdub.org\Altirra\Mounted Images]"
popd
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Settings] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [ROM Images] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
