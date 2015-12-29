SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
set FBXT=xp
if "%ARPOP%"=="64" set FBXT=64
pushd "%GBC%\net\%LNCH%\%CPS3%"
"%GBC%\fart.exe" "emulator.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%CPS3%\SOURCE"
"%GBC%\fart.exe" "fba*.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%CPS3%\SOURCE"
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CPS%\fba*.ini" "%GBE%\%EMUZ%\%FBA%\config"
if "%CEMU%"=="%FBA%" call "%GBC%\fbaInj.bat">>"%GBC%\logs\%CSTCONS%fbaInj.log"
if "%CEMU%"=="%CPS3EMU%" call "%GBC%\cps3emuInj.bat">>"%GBC%\logs\%CSTCONS%cps3emuInj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" del /q "%%~g\*.input"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS3%\fba.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS3%\fba.ini" "%%~g\fba%FBXT%.ini"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
if "%CEMU%"=="%CPS3EMU%" call :R1
pushd "%%~g"
call :injext
if "%CEMU%"=="%CPS3EMU%" call :R2
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h "*.zip"') do (
set CPS3RX=%%~xa
set CPS3RN=%%~na
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%LNCH%\%CPS3%\game.ini" "%%~na.ini"
)
CALL "%GBC%\CPS3inject.bat"
popd
exit /b
:R1
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS3%\EMULATOR.ini" "%CSTM%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS3%\%P1JT%%P2JT%.input" "%CSTM%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CPS3%\Plugins.cfg" "%CSTM%"
exit /b
:R2
if /I "%CPS3RX%"==".zip" rename "%GBG%\%GAM%\%CONS%\%CSTCONS%\%CSTM%\%P1JT%%P2JT%.input" "%CPS3RN%.input"
exit /b
