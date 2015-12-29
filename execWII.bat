pushd "%GBC%\net\%EXECT%\%WII%"
call "%GBC%\dolphInj.bat">>"%GBC%\logs\dolphInj.log"
popd

for /d %%g IN ("%CSTM%") DO (

set CSTM=%%~g
SET WIIROM=
set /A ADDTO=0
call :injext
CALL "%GBC%\Wiiexeject.bat"

)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%WII%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
SET ROM=%%~a
if /I "%%~xa"==".elf" SET WIIROM=%%~a
if /I "%%~xa"==".dol" SET WIIROM=%%~a
if /I "%%~xa"==".ciso" SET WIIROM=%%~a
if /I "%%~xa"==".wad" SET WIIROM=%%~a
if /I "%%~xa"==".wbfs" SET WIIROM=%%~a
if /I "%%~xa"==".iso" SET WIIROM=%%~a
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