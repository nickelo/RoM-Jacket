set FBXT=xp
if "%ARPOP%"=="64" set FBXT=64
for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\neogeo.zip"') do set NGBIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%NEOGE%\SOURCE\neogeo.zip"') do set NGBIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d/s "%GBE%\%EMUZ%\%NEORAINE%\neogeo.zip"') do set NGBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%NEORAINE%\%NGBIOS%" "%GBC%\net\%EXECT%\%NEOGE%"
echo.copy /y "%NGBIOS%.bak" "%NGBIOS%">>"%GBC%\bioscpy.ini"
pushd "%GBC%\net\%EXECT%\%NEOGE%"
"%GBC%\fart.exe" "fba.ini" [ROMPTH] "[ROMPTH]\SOURCE"
call "%GBC%\fbaInj.bat">>"%GBC%\logs\%CSTCONS%fbaInj.log"
rename "fba.ini" "fba%FBAXT%.ini"
popd
pushd "%CUSTCONSPTH%"
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\Neogeexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NEOGE%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%EXECT%\%NEOGE%\game.ini" "%%~na.ini"
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1