pushd "%GBC%\net\%EXECT%\%NGC%"
call "%GBC%\dolphInj.bat">>"%GBC%\logs\dolphInj.log"
popd

for /d %%g IN ("%CSTM%") DO (
 SET NGCROM=
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
call "%GBC%\NGCexeject.bat" 
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NGC%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
set ROM=%%~a
if /I "%%~xa"==".iso" set NGCROM=%%~a
if /I "%%~xa"==".gcz" set NGCROM=%%~a
if /I "%%~xa"==".gcm" set NGCROM=%%~a
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".gcz" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gcz
if /I "%%~xa"==".gcm" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gcm
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1