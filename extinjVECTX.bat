SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

CALL "%GBC%\Vectxinject.bat">>"%GBC%\logs\vectxinject.log"
pushd "%GBC%\net\%LNCH%\%VECTX%"
call "%GBC%\pjveinj.bat">>"%GBC%\logs\pjveinj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%VECTX%\configuration.xml" "%%~g"
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
if /I "%%~xa"==".vec" "%GBC%\fart.exe" "*.bat" [EXT] vec
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
)
popd
:skp