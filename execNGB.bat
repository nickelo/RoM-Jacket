pushd "%GBC%\net\%EXECT%\%NGB%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\Ngbexeject.bat">>"%GBC%\logs\Ngbexeject.log"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NGB%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".gb" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gb
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1