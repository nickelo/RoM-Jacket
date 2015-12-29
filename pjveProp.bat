"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :VECTXJOY
if %ERRORLEVEL%==2 goto :VECTXOTH
goto :QUITOUT

:VECTXJOY
pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%VECTX%\configuration.xml" "Select Configured configuration.xml" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%VECTX%\%GAMEDIR%"') do (
set NEWCONF=%%~a
call :INJOY
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJOY
REM for /f "delims=" %%a in ('xml.exe sel -t -v "configuration/keymapping/bind id="exit" key@" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/CpuClockHertz" -v "%%a" "%NEWCONF%" 
exit /b

:VECTXOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%VECTX%\configuration.xml" "Select Configured configuration.xml" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%VECTX%\%GAMEDIR%*configuration.xml"') do (
set NEWCONF=%%~a
call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
