pushd "%GBC%\net\%EXECT%\%TG16%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
popd

for /d %%g IN ("%CSTM%") DO (
%TG16%\%MEDN%*.cfg" "%CD%"
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\Tg16exeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%TG16%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".sgx" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] sgx
if /I "%%~xa"==".pce" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] pce
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
pop
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1