for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*0.bin"') do set PS2BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*4.bin"') do set PS2BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*7*.bin"') do set PS2BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\spu2*.dll"') do set PS2AUD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\spu2p*.dll"') do set PS2AUD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\cdvd*.dll"') do set PS2DVD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\cdvd*-r*.dll"') do set PS2DVD=%%~a

copy /y "%GBE%\%EMUZ%\%PCSX2%\BIOS\%PS2BIOS%" "%GBC%\net\%EXECT%\%PS2%"
echo.mkdir "inis">>"%GBC%\bioscpy.ini"
echo.mkdir "bios">>"%GBC%\bioscpy.ini"
echo.copy /y "%PS2BIOS%.bak" "BIOS\%PS2BIOS%">>"%GBC%\bioscpy.ini"

del /q "%GBC%\instrset.ini"
for /f "tokens=1,* delims=:" %%a in ('"%GBC%\CHKCPU32.exe" /v') do if "%%~a"==" Instr set extensions" echo."%%~b">>"%GBC%\instrset.ini"
"%GBC%\fart.exe" "%GBC%\instrset.ini" "\"" --remove
for /f "tokens=1,2,3,4,5,6,7,8,9 delims=, " %%a in ('type "%GBC%\instrset.ini"') do set CPUINST=%%~a%%~b%%~c%%~d%%~e%%~f%%~g%%~h%%~i
set AVXP=
set S4SS=
set S3SS=
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="SE4A" SET SINST=GSdx*AVX*.dll
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="E4.2" SET SINST=GSdx*SSE4*.dll
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="E4.1" SET SINST=GSdx*SSE4*.dll
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="SSE3" SET SINST=GSdx*SSSE3*.dll

for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\%SINST%"') do set PS2GFX=%%~a

pushd "%GBC%\net\%EXECT%\%PS2%"
call "%GBC%\pcsx2Inj.bat">>"%GBC%\logs\%CSTCONS%pcsx2Inj.log"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\PS2exeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PS2%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
set ROM=%%~a
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
if /I "%%~xa"==".iso" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".img" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".bin" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".cdi" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".nrg" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".mdf" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".cue" CALL "%GBC%\PS2exeject.bat
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1