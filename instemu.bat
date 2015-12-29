if "%MKEXE%"=="1" exit /b
if "%EMUNOTHERE%"=="1" echo %CEMU%>>"%GBE%\%EMUZ%\notfound.ini"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMUFILE%" -o"%GBE%\%EMUZ%\%CEMU%"
if exist "%GBC%\net\%CEMU%\%CEMUFILE%" echo %CEMU%>>"%GBE%\%EMUZ%\inst.ini"
if "%EMUINST%" NEQ "Auto" %BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Installed." /Stop /timeout:1
"%GBC%\fart.exe" "%GBC%\curlist.ini" "%CEMU%" --remove
set CEMU=
set EMUNUM=