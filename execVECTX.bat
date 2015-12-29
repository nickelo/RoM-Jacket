CALL "%GBC%\Vectxexeject.bat">>"%GBC%\logs\vectxexeject.log"

pushd "%GBC%\net\%EXECT%\%VECTX%"
call "%GBC%\pjveinj.bat">>"%GBC%\logs\pjveinj.log"
popd

for /d %%g IN ("%CSTM%") DO (
copy /Y "%GBC%\net\%LNCH%\%VECTX%\configuration.xml" "%%~g"
 set CSTM=%%~g
  set /A ADDTO=0
pushd "%%~g"
  call :injext
popd
  if "%ADDTO%"=="" set ADDTO=0
if %ADDTO% GEQ 2 set FNDMORE=1
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%VECTX%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".vec" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] vec
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1