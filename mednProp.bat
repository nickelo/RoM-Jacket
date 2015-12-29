"%GBC%\wbox.exe" "RJ_GUI" "Use the mednafen configurations?" "Mendafen;Other" /DB=1
if %ERRORLEVEL%==1 goto :MEDN
if %ERRORLEVEL%==2 goto :QUITOUT
goto :QUITOUT
:MEDN
pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\menafen*.cfg" "Select Configured menafen*.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Mednafen System settings" /marquee
if "%GAMEDIR%" NEQ "" goto :GAMPROP
for /f  "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do copy /y "%SOURCECFG%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:GAMPROP
copy /y "%SOURCECFG%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMDIR%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b


:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
