SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"


for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%%~xa"==".jag" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
)
CALL "%GBC%\JagCDinject.bat"
popd
:skp