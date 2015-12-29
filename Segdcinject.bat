if "%CEMU%"=="%NULLDC%" goto :NULLDC
REM if "%CEMU%"=="%DMUL%" "%GBC%\fart.exe" -C "*.bat" "exe\" \"" "exe\" \-run=dc \-image=\""
if "%DCIMG%"=="1" "%GBC%\fart.exe" "demul.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGDC%\%CSTM%"
if "%DCIMG%"=="1" "%GBC%\fart.exe" "gdrimage.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGDC%\%CSTM%"
if "%DCIMG%"=="1" "%GBC%\fart.exe" "gdrimage.ini" [ROM] "%DCROM%"
if "%DCIMG%"=="1" "%GBC%\fart.exe" "demul.ini" [IMAGE] "gdrImage.dll"
if "%DCIMG%"=="2" "%GBC%\fart.exe" "demul.ini" [IMAGE] "gdrCHD.dll"
exit /b
:NULLDC
"%GBC%\fart.exe" "%NULLDC%.cfg" [ROM] "%DCROM%"
"%GBC%\fart.exe" "%NULLDC%.cfg" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGDC%\%CSTM%"
ATTRIB -R "%NULLDC%.cfg"

