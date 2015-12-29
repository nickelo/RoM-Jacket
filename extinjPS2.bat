SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*0.bin"') do set PS2BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*4.bin"') do set PS2BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*7*.bin"') do set PS2BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\spu2*.dll"') do set PS2AUD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\spu2p*.dll"') do set PS2AUD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\cdvd*.dll"') do set PS2DVD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\cdvd*-r*.dll"') do set PS2DVD=%%~a

if "%PS2BIOS%"=="" echo.%PS2% Bios>>"%GBC%\mbios.ini"

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

pushd "%GBC%\net\%LNCH%\%PS2%"
call "%GBC%\pcsx2Inj.bat">>"%GBC%\logs\%CSTCONS%pcsx2Inj.log"
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\lilypad*.dll"') do set PS2PAD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\lilypad-r*.dll"') do set PS2PAD=%%~a
if "%GGOFF%"=="1" "%GBC%\fart.exe" "PCSX2_ui.ini" \ \\
if "%GGOFF%"=="1" copy /y "*.ini" "%GBE%\%EMUZ%\%PCSX2%\inis"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS2%\*.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
set CALLINJ=
for /f "delims=" %%a in ('dir /b/a-d') do (
set ROM=%%~a
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".iso" SET CALLINJ=1
if /I "%%~xa"==".img" SET CALLINJ=1
if /I "%%~xa"==".bin" SET CALLINJ=1
if /I "%%~xa"==".cdi" SET CALLINJ=1
if /I "%%~xa"==".nrg" SET CALLINJ=1
if /I "%%~xa"==".mdf" SET CALLINJ=1
if /I "%%~xa"==".cue" SET CALLINJ=1
)
CALL "%GBC%\PS2inject.bat
popd
:skp