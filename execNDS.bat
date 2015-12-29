pushd "%GBC%\net\%EXECT%\%NDS%"
call "%GBC%\desmumeInj.bat">>"%GBC%\logs\%CSTCONS%desmumeInj.log"
call "%GBC%\desmumeJoy.bat">>"%GBC%\logs\%CSTCONS%desmumejoy.log"
copy /y "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\net\%EXECT%\%NDS%"
if exist "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\inifile.exe" "%NOGBA%.ini" [.] Reset/Startup Entrypoint == GBA BIOS (Nintendo logo)
echo. copy /y "firmware.bin.bak" "firmware.bin">>"%GBC%\prefxe.ini"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\NDSexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NDS%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".ds" set NDSROM=%%~a
if /I "%%~xa"==".ds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ds
if /I "%%~xa"==".nds" set NDSROM=%%~a
if /I "%%~xa"==".srl" set NDSROM=%%~a
if /I "%%~xa"==".nds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nds
if /I "%%~xa"==".srl" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] srl
if /I "%%~xa"==".nd5" set NDSROM=%%~a
if /I "%%~xa"==".nd5" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nd5
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1