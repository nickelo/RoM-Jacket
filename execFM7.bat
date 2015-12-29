pushd "%GBC%\net\%EXECT%\%FM7%"
call "%GBC%\XM7inj.bat">>"%GBC%\logs\XM7inj.log"
"%GBC%\fart.exe" "XM7.ini" [ROMPTH] [EMUPTH]
popd

for %NIVA% %%g IN (%NEWGAMDIR%) DO (
copy /Y "%GBC%\net\%EXECT%\%FM7%\*.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
CALL "%GBC%\FM7inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "XM7.ini" "%GBE%\%EMUZ%\%XM7%"
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
:skp
