CALL "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [MASK] %DREZY%
"%GBC%\fart.exe" "Mess.ini" [EMUL] "%GBE%\%EMUZ%\%MESS%"