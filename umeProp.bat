:UMEJOY
pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\input.cfg" "Select Configured input.cfg" /noquote') do %%a
if %errorlevel%==0 goto :QUITOUT
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET SOURCELOC=" "%GBG%\%GAM%\%CONS%" "Select the destination for your input.cfg" /noquote') do %%a
popd
if "%SOURCELOC%"=="" goto :QUITOUT

%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%"') do (
set NEWCONF=%%~a
call :INJOY
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJOY
copy /y "%SOURCECFG%" "%SOURCELOC%\.ctrlr\"
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
