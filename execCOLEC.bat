pushd "%GBC%\net\%EXECT%\%COLEC%"
call "%GBC%\bmsxInj.bat">>"%GBC%\logs\%CSTCONS%bmsxInj.log"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
CALL "%GBC%\COLECexeject.bat"
set /A ADDTO=0
call :injext
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%COLEC%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".col"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] col
if /I "%%~xa"==".rom"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1