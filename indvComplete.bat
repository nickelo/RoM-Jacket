for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :CLEANCONS
popd
rd /q "%GBG%\%GAM%\%CONS%\%%~a"
)
if exist "%GBC%\mbios.ini" goto :SHOWMBIOS
goto :INDVOUT

:CLEANCONS
for /f "delims=" %%a in ('dir /b/a-d "null" "*.conf" "*.amgp" "*.cmd" "*.nfo" "*.xml" "*.bat" "*.ini" "*.cfg" "*.xpadderprofile"') do del /q  "%%~a"
for /f "delims=" %%a in ('dir /b/adh') do rd /q "%%~a"
)
exit /b

:SHOWMBIOS
set MULTILIST=1
"%GBC%\fart.exe" "%GBC%\mbios.ini" "&" "[@]"
for /f "delims=" %%a in ('type "%GBC%\mbios.ini"') do set BLISTA=%%~a
if "%REALWINDOWS%" NEQ "0" for /f "delims=" %%a in ('type "%GBC%\mbios.ini"') do echo|set /p=" %%~a^ ">>"%GBC%\lbios.ini"
if "%REALWINDOWS%" NEQ "0" for /f "delims=" %%a in ('type "%GBC%\lbios.ini"') do SET BLISTA=%%~a
"%GBC%\fart.exe" "%GBC%\lbios.ini" "[@]" "&"
goto :REPLACE

exit /b

:REPLACE
"%GBC%\wbox.exe" "RJ_GUI" "One or more systems must be reconfigured after you install the Missing Bios Files:^^...%BLISTA%...^" "OKAY" /BW=200
if %ERRORLEVEL%==1 goto :INDVOUT
goto :INDVOUT

:INDVOUT
