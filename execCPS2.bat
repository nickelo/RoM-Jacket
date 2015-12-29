set FBXT=xp
if "%ARPOP%"=="64" set FBXT=64
pushd "%GBC%\net\%EXECT%\%CPS2%"
"%GBC%\fart.exe" "fba.ini" [ROMPTH] "[ROMPTH]\SOURCE"
call "%GBC%\fbaInj.bat">>"%GBC%\logs\%CSTCONS%fbaInj.log"
rename "fba.ini" "fba%FBAXT%.ini"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\CPS2exeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%CPS2%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%EXECT%\%CPS2%\game.ini" "%%~na.ini"
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1