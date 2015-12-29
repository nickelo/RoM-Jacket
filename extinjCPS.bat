SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
set FBXT=xp
if "%ARPOP%"=="64" set FBXT=64
pushd "%GBC%\net\%LNCH%\%CPS%"
"%GBC%\fart.exe" "fba.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%CPS%\SOURCE"
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CPS%\fba.ini" "%GBE%\%EMUZ%\%FBA%\config\fba%FBXT%.ini"
if "%CEMU%"=="%FBA%" call "%GBC%\fbaInj.bat">>"%GBC%\logs\%CSTCONS%fbaInj.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS%\fba.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS%\fba.ini" "%%~g\fba%FBXT%.ini"
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
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%LNCH%\%CPS%\game.ini" "%%~na.ini"
)
CALL "%GBC%\CPSinject.bat"
popd
:skp