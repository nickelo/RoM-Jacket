if "%CEMU%"=="%PSX%" "%GBC%\fart.exe" "psx.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%PS1%\%CSTM%"
if "%CEMU%"=="%MEDN%" "%GBC%\fart.exe" "%MEDN%*.cfg" [ROMPTH] "%GBG%\%GAM%\%CONS%\%PS1%\%CSTM%"
"%GBC%\fart.exe" "*.bat" "[PSXBIOS]" "%PS1BIOS%"
if "%CEMU%" NEQ "%EPSXE%" exit /b
if "%DTON%" NEQ "1" "%GBC%\fart.exe" "*.bat" [DVAR] "\"%%GAMDIR%%\%%ROMF%%\""
if "%DTON%"=="1" "%GBC%\fart.exe" "*.bat" [DVAR] --remove
if "%GPU%"=="BladeSoft" "%GBC%\fart.exe" "*.bat" "[BLD]" --remove
if "%GPU%" NEQ "BladeSoft" "%GBC%\fart.exe" "*.bat" "[BLD]" "REM "

