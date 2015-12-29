
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\Taitxexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%TAITX%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".lnk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnk
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1