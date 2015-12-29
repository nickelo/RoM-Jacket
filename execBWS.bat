pushd "%GBC%\net\%EXECT%\%BWS%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"

popd
for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\BWSexeject.bat"
  )
  exit /b
  
:injext
pushd "%GBC%\net\%EXECT%\%BWS%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".ws"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ws
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1