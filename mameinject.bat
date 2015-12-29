if "%SHDRON%"=="0" "%GBC%\fart.exe" "Mame.ini" [SHD] "0"
if "%SHDRON%"=="0" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [SHD] "1"
if "%SHDRON%"=="1" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZX] %DREZX%
if "%CHEATON%"=="1" "%GBC%\fart.exe" "Mame.ini" [CHEAT] 1
if "%CHEATON%"=="0" "%GBC%\fart.exe" "Mame.ini" [CHEAT] 0
echo."%DREZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%DREZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%DREZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [MASK] %DREZY%
"%GBC%\fart.exe" "Mame.ini" [EMUL] "%GBE%\%EMUZ%\%MAME%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\Mame.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%CSTCONS%\SOURCE"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [SOURCE] "%%CD%%\SOURCE"
"%GBC%\fart.exe" "Mame.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%CSTCONS%\%CSTM%"