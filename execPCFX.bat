for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\pcfxbios.bin"') do rename "%%~a" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\pcfx*.bin"') do rename "%%~a" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\pcfx*.rom"') do SET PCFXBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%MEDN%\%PCFXBIOS%" "%GBC%\net\%EXECT%\%CSTCONS%"
echo.copy /y "%PCFXBIOS%.bak" "%PCFXBIOS%">>"%GBC%\bioscpy.ini
call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\Pcfxexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PCFX%"
"%GBC%\fart.exe" "*.bat" [PCFXBIOS] "%PCFXBIOS%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
pushd "%GBC%\net\%EXECT%\%PCFX%"
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mds
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1