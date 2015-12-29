SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%SEGM2%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
if "%GGOFF%"=="1" copy /y "EMULATOR.ini" "%GBE%\%EMUZ%\%M2EMU%"
call "%GBC%\m2emuInj.bat">>"%GBC%\logs\%CSTCONS%m2emuInj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SEGM2%\*.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
mkdir CFG
mkdir NVDATA
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" copy /Y "%GBC%\net\%LNCH%\%SEGM2%\%P1T%%P2T%.input" "%CUSTGAMPATH%\CFG\%GAMT%.input"
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h "*.zip"') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SEGM2%\%P1T%%P2T%.input" "CFG\%%~na.input"
)
CALL "%GBC%\SEGM2inject.bat"
popd
:skp