SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /d %%g IN (*) DO (
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
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
)
CALL "%GBC%\Taitxinject.bat"
popd
:skp