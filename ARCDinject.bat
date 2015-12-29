if "%SHDRON%"=="0" "%GBC%\fart.exe" "Mame.ini" [SHD] "0"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [SHD] "1"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [MASK] %DREZY%
"%GBC%\fart.exe" "Mame.ini" [EMUL] "%GBE%\%EMUZ%\%MAME%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%ARCD%\Mame.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%ARCD%\*.bat" [SOURCE] "%%CD%%\SOURCE"
"%GBC%\fart.exe" "Mame.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%ARCD%\%CSTM%"