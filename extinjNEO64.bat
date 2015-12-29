SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%NEO64%"
"%GBC%\fart.exe" "Mame32.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%NEO64%\SOURCE"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NEO64%\Mame32.ini" "%%~g\Mame32.ini"
mkdir "%%~g\cfg"
mkdir "%%~g\ini"
mkdir "%%~g\ctrl"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NEO64%\default.cfg" "%%~g\cfg"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NEO64%\Mame.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" "%GBE%\%EMUZ%\%MAME%\%MAME%.exe" -createconfig -rompath "%GBG%\%GAM%\%CONS%\%NEO64%\SOURCE" -writeconfig
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
CALL "%GBC%\Neo64inject.bat"
popd
:skp