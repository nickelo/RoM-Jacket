"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%VJAG%\vjag.exe"
if "%P1JOYTYPE%"=="JOY" rename "%GBC%\net\%EXECT%\%JAG%\P1J_DEFAULT.set" "P1_DEFAULT.cmd"
if "%P2JOYTYPE%"=="JOY" rename "%GBC%\net\%EXECT%\%JAG%\P2J_DEFAULT.set" "P2_DEFAULT.cmd"
if "%P1JOYTYPE%"=="KB" rename "%GBC%\net\%EXECT%\%JAG%\P1J_DEFAULT.set" "P1_DEFAULT.cmd"
if "%P2JOYTYPE%"=="KB" rename "%GBC%\net\%EXECT%\%JAG%\P2J_DEFAULT.set" "P2_DEFAULT.cmd"
if "%CANCELLED%"=="1" exit /b
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\Jagexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%JAG%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (		
if /I "%%~xa"==".jag" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] jag
if /I "%%~xa"==".j64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] j64
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1
