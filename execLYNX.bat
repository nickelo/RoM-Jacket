pushd "%GBC%\net\%EXECT%\%LYNX%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*lynxboot*"') do set LYNXBIOS=%%~a
"%GBC%\fart.exe" "%MEDN%*.cfg" [BIOS] "%LYNXBIOS%"
copy /y "%GBE%\%EMUZ%\%MEDN%\%LYNXBIOS%" "%GBC%\net\%EXECT%\%LYNX%"
call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
set LYNXBIOS=lynxboot.img
"%GBC%\fart.exe" "%MEDN%*.cfg" [BIOS] "%LYNXBIOS%"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\LYNXexeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%LYNX%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".lnx" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnx
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
pop
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1