pushd "%GBC%\net\%EXECT%\%NGBA%"

for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%VGBA%\GBA*.rom"') do set NGBABIOS=%%~a
"%GBC%\fart.exe" "%VGBA%m.ini" [EMUL] "[EMUPTH]"
"%GBC%\fart.exe" "%VGBA%m.ini" [NGBABIOS] "%NGBABIOS%"
copy /y "%GBE%\%EMUZ%\%VGBA%\%NGBABIOS%" "%GBC%\net\%EXECT%\%NGBA%"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\ngbajoy1.bat">>"%GBC%\logs\ngbajoy1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\ngbakb1.bat">>"%GBC%\logs\ngbakb1.log"
set CFGFILE=vbam.ini
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
call "%GBC%\vbaInj.bat">>"%GBC%\logs\vbaInj.log"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\Ngbaexeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%NGBA%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".sgb" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] sgb
if /I "%%~xa"==".gba" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gba
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b

:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1