SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b/a-d/s "%GBE%\%EMUZ%\%NEORAINE%\neocd.bin"') do set NCDBIN=%%~a
for /f "delims=" %%a in ('dir /b/a-d/s "%GBE%\%EMUZ%\%NEORAINE%\neocd.zip"') do set NCDBIN=%%~a

if "%NCDBIN%"=="" echo.%NEOCD% BIOS>>"%GBC%\mbios.ini"

pushd "%GBC%\net\%LNCH%\%NEOCD%"
if "%CEMU%"=="%NEORAINE%" call "%GBC%\neoRaineInj.bat">>"%GBC%\logs\neoRaineInj.log"
popd
pushd "%GBG%\%GAM%\%CONS%\%NEOCD%"
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NEOCD%\raine32_sdl.cfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
Pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEOCD%\raine32_sdl.cfg" "%GBE%\%EMUZ%\%NEORAINE%\Config"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
)
CALL "%GBC%\NeoCDinject.bat"
popd
:skp