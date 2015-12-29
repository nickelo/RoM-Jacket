for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%NEORAINE%\neocd.bin"') do set NCDBIN=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%NEORAINE%\neocd.zip"') do set NCDBIN=%%~a
pushd "%GBC%\net\%EXECT%\%NEOCD%"
"%GBC%\fart.exe" "raine32_sdl.cfg" [EMUZ] "[EMUPTH]"
"%GBC%\fart.exe" "raine32_sdl.cfg" [BIOS] "%NCDBIN%"
if "%CEMU%"=="%NEORAINE%" call "%GBC%\neoRaineInj.bat">>"%GBC%\logs\neoRaineInj.log"
copy /y "%GBE%\%EMUZ%\%NEORAINE%\%NCDBIN%" "%GBC%\net\%EXECT%\%NEOCD%"
echo.copy /y "%NCDBIN%.bak" "%NCDBIN%">>"%GBC%\bioscpy.ini"
call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\NeoCDexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NEOCD%"
for /f "delims=" %%a in ('dir /b/a-h') do (
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-h') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1