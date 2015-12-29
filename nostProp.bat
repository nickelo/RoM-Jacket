pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%INTEL%\input.cfg" "Select Configured input.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Intellivision Joystick settings" /marquee
if "%GAMEDIR%" NEQ "" goto :GAMEPROP
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%INTEL%"') do (
set NEWCONF=%%~a
call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:GAMEPROP
copy /y "%SOURCECFG%" "%GBG%\%GAM%\%CONS%\%INTEL%\%GAMEDIR%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b
:INJTARGET
copy /y "%SOURCECFG%" "%GBG%\%GAM%\%CONS%\%INTEL%\%NEWCONF%"
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
