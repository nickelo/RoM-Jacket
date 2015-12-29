REM set FBXT=xp
REM if "%ARPOP%"=="64" set FBXT=64

pushd "%GBC%\net\%EXECT%\%CPS3%"
REM "%GBC%\fart.exe" "emulator.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%CPS3%\SOURCE"
call "%GBC%\cps3emuInj.bat">>"%GBC%\logs\%CSTCONS%cps3emuInj.log"
REM call "%GBC%\fbaInj.bat">>"%GBC%\logs\%CSTCONS%fbaInj.log"
REM rename "fba.ini" "fba%FBAXT%.ini"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\CPS3exeject.bat"
call :R1
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%CPS3%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto
REM if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%EXECT%\%CPS3%\game.ini" "%%~na.ini"
if /I "%%~xa"==".zip" rename "%P1JT%%P2JT%.input" "%%~na.input"
popd
)
exit /b

:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1