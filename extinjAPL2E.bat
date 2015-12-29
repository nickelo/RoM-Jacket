SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
pushd "%GBC%\net\%LNCH%\%APL2E%"
call "%GBC%\aplwininj.bat">>"%GBC%\logs\aplwininj.log"
popd
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
set CSTM=%%~g
Pushd "%%~g"
if "%INDVGAME%"=="1" set CSTM=%%~nxg
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%APL2E%\PREPREF.cmd" "%%~g\PREPREF.cmd"
CALL "%GBC%\APL2Einject.bat"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d "%APL2EDSK%"') do (
"%GBC%\fart.exe" "*.bat" .[EXT] %%~xa
)
popd
:skp