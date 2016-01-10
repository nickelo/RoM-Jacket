pushd "%GBC%\net\%EXECT%\%SNES%"
"%GBC%\fart.exe" "snesgt.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "snesgt.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "%MEDN%*.cfg" [EMUL] "[EMUPTH]"
"%GBC%\fart.exe" "zsnesw.cfg" [EMUL] "[EMUPTH]"
"%GBC%\fart.exe" "zsnesw.cfg" "[EMUPTH]"
"%GBC%\fart.exe" "snesgt.ini" "[EMUPTH]\snesgt.ini"
if "%CEMU%"=="%SN9X%" call "%GBC%\sn9xInj.bat">>"%GBC%\logs\%CSTCONS%sn9xInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%"=="" set ADDTO=0
CALL "%GBC%\Snesexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SNES%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".smc" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] smc
if /I "%%~xa"==".sfc" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] sfc
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1