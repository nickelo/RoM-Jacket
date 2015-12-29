if "%CEMU%"=="%NULLDC%" goto :NULLDC
if "%DCIMG%"=="1" "%GBC%\fart.exe" "gdrimage.ini" [ROM] "%DCROM%"
if "%DCIMG%"=="1" "%GBC%\fart.exe" "demul.ini" [IMAGE] "gdrImage.dll"
if "%DCIMG%"=="2" "%GBC%\fart.exe" "demul.ini" [IMAGE] "gdrCHD.dll"
exit /b
:NULLDC
"%GBC%\fart.exe" "%NULLDC%.cfg" [ROM] "%DCROM%"
ATTRIB -R "%NULLDC%.cfg"