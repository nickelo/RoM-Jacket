SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
pushd "%GBC%\net\%LNCH%\Other"
if "%CEMU%"=="%MAME%" call "%GBC%\mameJoy.bat">>"%GBC%\logs\mameJoy.log"
if "%ARCDPROC%"=="1" goto :INJCOMPLETE
"%GBC%\fart.exe" "Mame.ini" [EMUL] "%GBE%\%EMUZ%\%MAME%"
"%GBC%\fart.exe" "Mame.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%CSTCONS%\SOURCE"
"%GBC%\fart.exe" "*.bat" [SOURCE] "%GBG%\%GAM%\%CONS%\%CSTCONS%\SOURCE"
if "%CEMU%"=="%MAME%" call "%GBC%\mameInj.bat">>"%GBC%\logs\%CSTCONS%mameInj.log"
if "%SHDRON%"=="0" "%GBC%\fart.exe" "Mame.ini" [SHD] "0"
if "%SHDRON%"=="0" goto :INJCOMPLETE
if "%SHDRON%"=="1" call "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [MASK] %DREZY%
:INJCOMPLETE
popd
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
mkdir "%%~g\.cfg"
mkdir "%%~g\.hi"
mkdir "%%~g\.inp"
mkdir "%%~g\.ini"
mkdir "%%~g\.ctrlr"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\Other\input.cfg" "%%~g\.ctrlr"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\Other\default.cfg" "%%~g\.cfg"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\Other\Mame.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1"  pushd "%GBE%\%EMUZ%\%MAME%"
if "%GGOFF%"=="1" "%GBE%\%EMUZ%\%MAME%\%MAME%.exe" -createconfig -rompath "%GBG%\%GAM%\%CONS%\%CSTCONS%\SOURCE" -writeconfig
if "%GGOFF%"=="1" popd
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
)
CALL "%GBC%\mameinject.bat"
popd
:skp