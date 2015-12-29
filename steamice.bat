pushd "%STEAMLOC%\SteamApps\common\Applications\Ice"

del /q "%STEAMLOC%\SteamApps\common\Applications\Ice\consoles.txt"
del /q "%STEAMLOC%\SteamApps\common\Applications\Ice\emulators.txt"
del /q "%STEAMLOC%\SteamApps\common\Applications\Ice\config.txt"
del /q "%GBC%\consoles.ini"

echo --SELECT-->"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
echo ALL CONSOLES>>"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%LOCMIR%"') do echo.%%~a>>"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
echo FINISH>>"%GBC%\consoles.ini"

:SELECTCONSOLE
copy /y "%GBC%\net\ICE\EMU.set" "%STEAMLOC%\SteamApps\common\Applications\Ice\emulators.txt"
copy /y "%GBC%\net\ICE\CFG.set" "%STEAMLOC%\SteamApps\common\Applications\Ice\config.txt"
"%GBC%\fart.exe" "%STEAMLOC%\SteamApps\common\Applications\Ice\config.txt" [MIRZ] "%GBG%\%GAM%\%LOCMIR%"
"%GBC%\fart.exe" "%STEAMLOC%\SteamApps\common\Applications\Ice\emulators.txt" [BSLPTH] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "Select A Console" "set CSTCONS=$item" > "%GBC%\conSel.cmd"
if %errorlevel%==0 GOTO :EOF
CALL "%GBC%\conSel.cmd"
if "%CSTCONS%"=="FINISH" goto :FINISH
if "%CSTCONS%"=="ALL CONSOLES" goto :RECURSIVE
if "%CSTCONS%"=="--SELECT--" goto :SELECTCONSOLE
if "%CSTCONS%"=="-------" goto :SELECTCONSOLE
if "%CSTCONS%"=="" goto :SELECTCONSOLE
if "%CSTCONS%"==" " goto :SELECTCONSOLE

copy /y "%GBC%\net\ICE\CONS.set" "%STEAMLOC%\SteamApps\common\Applications\Ice\CONS.tmp"
"%GBC%\fart.exe" "%STEAMLOC%\SteamApps\common\Applications\Ice\CONS.tmp" [SYSNAME] "%CSTCONS%"
call :TYPE
"%GBC%\fart.exe" "%GBC%\consoles.ini" "%CSTCONS%" --remove
goto :SELECTCONSOLE

:RECURSIVE
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%LOCMIR%"') do (
copy /y "%GBC%\net\ICE\CONS.set" "%STEAMLOC%\SteamApps\common\Applications\Ice\CONS.tmp"
"%GBC%\fart.exe" "%STEAMLOC%\SteamApps\common\Applications\Ice\CONS.tmp" [SYSNAME] "%%~a"
call :TYPE
)
goto :FINISH

:FINISH
start "" "%STEAMLOC%\SteamApps\common\Applications\Ice\Ice.exe"
exit /b

:TYPE
for /f "delims=" %%a in ('type "%STEAMLOC%\SteamApps\common\Applications\Ice\CONS.tmp"') do echo.%%~a>>"%STEAMLOC%\SteamApps\common\Applications\Ice\consoles.txt"
echo.^ >>"%STEAMLOC%\SteamApps\common\Applications\Ice\consoles.txt"