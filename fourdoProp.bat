"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :P3DOJOY
if %ERRORLEVEL%==2 goto :P3DOOTH
goto :QUITOUT

:P3DOJOY
pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%P3DO%\JohnnyInputBindings.xml" "Select Configured JohnnyInputBindings.xml" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%\%P3DO%"') do (
set NEWCONF=%%~a
call :INJOY
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJOY
copy /y "%SOURCECFG%" "%GBG%\%GAM%\%CONS%\%P3DO%\%NEWCONF%"
exit /b

:P3DOOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%P3DO%\FourDO.settings" "Select Configured FourDO.settings" /noquote') do %%a
if %errorlevel%==0 exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%P3DO%\%GAMEDIR%*FourDO.settings"') do (
set NEWCONF=%%~a
call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/CpuClockHertz" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/CpuClockHertz" -v "%%a" "%NEWCONF%" 
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowImageSmoothing" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowImageSmoothing" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/AudioBufferMilliseconds" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/AudioBufferMilliseconds" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/GameRomSourceType" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/GameRomSourceType" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/AudioVolume" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/AudioVolume" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/BiosRom2File" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/BiosRom2File" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowScalingAlgorithm" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowScalingAlgorithm" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/GameRomDrive" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/GameRomDrive" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowHeight" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowHeight" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/LastPauseStatus" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/LastPauseStatus" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/InactiveIgnoreKeyboard" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/InactiveIgnoreKeyboard" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowSnapSize" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowSnapSize" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowWidth" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowWidth" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowPreseveRatio" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowPreseveRatio" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/AutoOpenGameFile" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/AutoOpenGameFile" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/SaveStateSlot" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/SaveStateSlot" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowFullScreenDevice" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowFullScreenDevice" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/BiosRomFile" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/BiosRomFile" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/AutoLoadLastSave" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/AutoLoadLastSave" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowAutoCrop" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowAutoCrop" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/RenderHighResolution" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/RenderHighResolution" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/VoidAreaBorder" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/VoidAreaBorder" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/SelectedOptionTab" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/SelectedOptionTab" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/VoidAreaPattern" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/VoidAreaPattern" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/Language" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/Language" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/WindowFullScreen" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/WindowFullScreen" -v "%%a" "%NEWCONF%"
for /f "delims=" %%a in ('xml.exe sel -t -v "Settings/InactivePauseEmulation" "%SOURCECFG%"') do xml.exe ed -L -u "Settings/InactivePauseEmulation" -v "%%a" "%NEWCONF%"
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
