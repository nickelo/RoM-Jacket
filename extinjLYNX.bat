SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%LYNX%"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*lynxboot*"') do set LYNXBIOST=%%~a
rename "%GBE%\%EMUZ%\%MEDN%\%LYNXBIOST%" "lynxboot.img"
set LYNXBIOS=lynxboot.img
"%GBC%\fart.exe" "%MEDN%*.cfg" [BIOS] "%LYNXBIOS%"
popd

if "%LYNXBIOS%"=="" echo.%LYNX% BIOS>>"%GBC%\mbios.ini"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%LYNX%\%MEDN%*.cfg" "%%~g"
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
if /I "%%~xa"==".lnx" "%GBC%\fart.exe" "*.bat" [EXT] lnx
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
CALL "%GBC%\LYNXinject.bat"
popd
:skp