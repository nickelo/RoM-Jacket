SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%ZXSP%"
"%GBC%\fart.exe" "Default.spincfg" [EMUPTH] "%GBE%\%EMUZ%\%ZXSPIN%"
"%GBC%\fart.exe" "Default.spincfg" [SPINDIR] "%GBE%\%EMUZ%\%ZXSPIN%"
call "%GBC%\zxspinInj.bat">>"%GBC%\logs\%CSTCONS%zxspinInj.log"
call "%GBC%\zxspinJoy.bat">>"%GBC%\logs\%CSTCONS%zxspinJoy.log"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "spin.ini" [SPINDIR] "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "Default.spincfg" [SPINDIR] "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" copy /y "spin.ini" "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" copy /y "Default.spincfg" "%GBE%\%EMUZ%\%ZXSPIN%"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%ZXSP%\spin.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%ZXSP%\Default.spincfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
CALL "%GBC%\Zxspinject.bat">>"%GBC%\logs\zxspinInject.log"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for %%a in ("%ZXSPCDSK%") do "%GBC%\fart.exe" "*.bat" .[EXT] %%~xa 
popd
:skp