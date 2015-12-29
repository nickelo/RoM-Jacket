SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
pushd "%GBC%\net\%LNCH%\%ACARC%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK1] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK2] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK3] --remove
popd
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%ACARC%\arc.cfg" "%%~g"
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACARC%\arc.cfg" "%GBE%\%EMUZ%\%ARLTR%"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".adf" "%GBC%\fart.exe" "*.bat" [EXT] adf
if /I "%%~xa"==".apd" "%GBC%\fart.exe" "*.bat" [EXT] apd
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fdi
)
CALL "%GBC%\ACARCinject.bat"
popd
:skp