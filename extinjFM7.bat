SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%FM7%"
call "%GBC%\XM7inj.bat">>"%GBC%\logs\XM7inj.log"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "XM7.ini" [ROMPTH] [EMUPTH]
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%FM7%\*.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "XM7.ini" "%GBE%\%EMUZ%\%XM7%"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
CALL "%GBC%\FM7inject.bat"
popd
:skp