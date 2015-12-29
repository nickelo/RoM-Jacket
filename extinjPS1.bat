SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
if "%CEMU%"=="%PSX%" set BIOSLOC=%PSX%\BIOS
if "%CEMU%"=="%PCSXR%" set BIOSLOC=%PCSXR%\BIOS
if "%CEMU%"=="%EPSXE%" set BIOSLOC=%EPSXE%\BIOS
if "%CEMU%"=="%MEDN%" set BIOSLOC=%MEDN%
if "%CEMU%"=="%RTROA%" set BIOSLOC=%RTROA%
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph*.bin"') do set PS1BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph1001.bin"') do set PS1BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph5501.bin"') do set USBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph5502.bin"') do set EUBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph5500.bin"') do set JPBIOS=%%~a 
if "%PS1BIOS%"=="" echo.%PS1% Bios>>"%GBC%\mbios.ini"

pushd "%GBC%\net\%LNCH%\%PS1%"
"%GBC%\inifile.exe" "%PSX%.ini" [BIOS] PS1=bios\%PS1BIOS%
if "%CEMU%"=="%PSX%" call "%GBC%\psxInj.bat">>"%GBC%\logs\%CSTCONS%psxInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] SaveStatePath=saves
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] MemoryCardPath=cards
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] CDImagePath=cdimages
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] ScreenShotsPath=screenshots
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Cards] Card1=Card1.bin
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Cards] Card2=Card2.bin
if "%GGOFF%"=="1" copy /y "%PSX%.ini" "%GBE%\%EMUZ%\%PSX%" 
if "%CEMU%"=="%EPSXE%" call "%GBC%\epsxeJoy.bat">>"%GBC%\logs\epsxe.log"
if "%CEMU%"=="%EPSXE%" CALL "%GBC%\epsxeInj.bat"
if "%CEMU%"=="%PCSXR%" call "%GBC%\pcsxrJoy.bat">>"%GBC%\logs\pcsxrJoy.log"
if "%CEMU%"=="%PCSXR%" CALL "%GBC%\pcsxrInj.bat">>"%GBC%\logs\pcsxrInj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
set CSTM=%%~g
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\gpu.dat" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\*POST.cmd" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\*PRE.cmd" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\*DEFAULT.cmd" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\gpuBladeSoft.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\%PSX%.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PS1%\%MEDN%*.cfg" "%%~g"
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /y "%GBC%\net\%LNCH%\%PS1%\%PSX%.ini" "%GBE%\%EMUZ%\%PSX%"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d') do (
if /I "%%~xa"==".toc" "%GBC%\fart.exe" "*.bat" [EXT] toc
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [EXT] mds
)
if "%CEMU%"=="%MEDN%" goto :PSOUT
if "%CEMU%"=="%RTROA%" goto :PSOUT
for /f "delims=" %%a in ('dir /b/a-d') do (
if /I "%%~xa"==".pbp" "%GBC%\fart.exe" "*.bat" [EXT] pbp
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".ccd" "%GBC%\fart.exe" "*.bat" [EXT] ccd
if /I "%%~xa"==".cdz" "%GBC%\fart.exe" "*.bat" [EXT] cdz
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
)
if "%DTON%"=="1" goto :PSOUT
for /f "delims=" %%a in ('dir /b/a-d "*.ecm"') do if /I "%%~xa"==".ecm" "%GBC%\fart.exe" "*.bat" [EXT] ecm
:PSOUT
CALL "%GBC%\Ps1inject.bat"
popd
:skp
