SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%ACBBC%\Preferences.cfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACBBC%\Preferences.cfg" "%GBE%\%EMUZ%\%BEEBEM%"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".ssd" "%GBC%\fart.exe" "*.bat" [EXT] ssd
if /I "%%~xa"==".uef" "%GBC%\fart.exe" "*.bat" [EXT] uef
)
CALL "%GBC%\ACBBCinject.bat"
popd
:skp