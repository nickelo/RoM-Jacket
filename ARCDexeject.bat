if "%SHDRON%"=="0" "%GBC%\fart.exe" "Mame.ini" [SHD] "0"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [SHD] "1"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [MASK] %DREZY%
"%GBC%\fart.exe" "Mame.ini" [EMUL] "%%CD%%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%ARCD%\Mame.ini" [ROMPTH] "[ROMPTH]"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%ARCD%\*.bat" [SOURCE] "%%CD%%\SOURCE"