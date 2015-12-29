echo.mkdir "Games">>"%GBC%\bioscpy.ini"
echo.mkdir "Games\Profiles">>"%GBC%\bioscpy.ini"
echo.mkdir "Games\Profiles\Wiimote">>"%GBC%\bioscpy.ini"
echo.mkdir ".Profiles">>"%GBC%\bioscpy.ini"
echo.copy /y "WiimoteNew.ini" ".Profiles">>"%GBC%\bioscpy.ini"

for /d %%g IN ("%CSTM%") DO (

set CSTM=%%~g
SET TRIFROM=
set /A ADDTO=0
call :injext
CALL "%GBC%\TRIFexeject.bat"

)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%TRIF%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
SET ROM=%%~a
if /I "%%~xa"==".elf" SET TRIFROM=%%~a
if /I "%%~xa"==".dol" SET TRIFROM=%%~a
if /I "%%~xa"==".ciso" SET TRIFROM=%%~a
if /I "%%~xa"==".wad" SET TRIFROM=%%~a
if /I "%%~xa"==".wbfs" SET TRIFROM=%%~a
if /I "%%~xa"==".iso" SET TRIFROM=%%~a
if /I "%%~xa"==".elf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] elf
if /I "%%~xa"==".dol" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] dol
if /I "%%~xa"==".wbfs" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] wbfs
if /I "%%~xa"==".ciso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ciso
if /I "%%~xa"==".wad" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] wad
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1