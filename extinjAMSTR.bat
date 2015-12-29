SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
copy /Y "%GBC%\net\%LNCH%\%AMSTR%\WinAPE.ini" "%%~g\WinAPE.ini"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
CALL "%GBC%\Amstrinject.bat"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d "%AMSTRDSK%"') do (
"%GBC%\fart.exe" "*.bat" .[EXT] %%~xa
)
popd
:skp