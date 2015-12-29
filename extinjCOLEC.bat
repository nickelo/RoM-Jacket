SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%COLEC%"
if "%CEMU%"=="%BMSX%" call "%GBC%\bmsxInj.bat">>"%GBC%\logs\%CSTCONS%bmsxInj.log"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%BMSX%.ini" [ROMPTH] "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" copy /y "%BMSX%.ini" "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" copy /Y "*.config" "%GBE%\%EMUZ%\%BMSX%\Keyboard Config"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%COLEC%\%BMSX%.shortcuts" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%COLEC%\%BMSX%*.config" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%COLEC%\%BMSX%.ini" "%%~g"
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
if /I "%%~xa"==".col" "%GBC%\fart.exe" "*.bat" [EXT] col
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
)
CALL "%GBC%\COLECinject.bat"
popd
:skp