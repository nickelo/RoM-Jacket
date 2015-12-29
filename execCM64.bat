pushd "%GBC%\net\%EXECT%\%CM64%"
call "%GBC%\viceInj.bat">>"%GBC%\logs\%CSTCONS%viceInj.log"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\CM64exeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%CM64%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".x64"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] x64
if /I "%%~xa"==".t64"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] t64
if /I "%%~xa"==".d64"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] d64
if /I "%%~xa"==".g64"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] g64
if /I "%%~xa"==".fdi"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fdi
if /I "%%~xa"==".p00"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] p00
if /I "%%~xa"==".prg"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] prg
if /I "%%~xa"==".tap"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] tap
if /I "%%~xa"==".x64" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".t64" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".d64" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".g64" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".p00" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".prg" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
if /I "%%~xa"==".tap" "%GBC%\fart.exe" "*.bat" SET ROMFILE=%%~a
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1