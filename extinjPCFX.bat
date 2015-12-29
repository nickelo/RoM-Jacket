SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\pcfxbios.bin"') do rename /y "%GBE%\%EMUZ%\%MEDN%\%%~a" "pcfx.rom"
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\pcfx*.bin"') do rename "%GBE%\%EMUZ%\%MEDN%\%%~a" "pcfx.rom"
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\pcfx*.rom"') do SET PCFXBIOS=%%~a
if "%PCFXBIOS%"=="" echo.%PCFX% Bios>>"%GBC%\mbios.ini"
pushd "%GBC%\net\%LNCH%\%PCFX%"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PCFX%\%MEDN%*.cfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
"%GBC%\fart.exe" "*.bat" [PCFXBIOS] "%PCFXBIOS%"
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [EXT] mds
)
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
)
CALL "%GBC%\Pcfxinject.bat"
popd
:skp