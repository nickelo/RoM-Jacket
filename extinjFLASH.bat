SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
pushd "%%~g"
set CSTM=%%g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".swf" "%GBC%\fart.exe" "*.bat" [EXT] swf
if /I "%%~xa"==".flv" "%GBC%\fart.exe" "*.bat" [EXT] flv
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if /I "%%~xa"==".htm" "%GBC%\fart.exe" "*.bat" [EXT] htm
if /I "%%~xa"==".html" "%GBC%\fart.exe" "*.bat" [EXT] html
)
CALL "%GBC%\Flashinject.bat"
popd
:skp