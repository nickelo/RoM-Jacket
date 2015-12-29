SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%MSDS%"
if "%CEMU%"=="%MSBOX%" call "%GBC%\msdsJoy.bat">>"%GBC%\logs\%CSTCONS%msdsjoy.log"
if "%CEMU%"=="%MSBOX%" call "%GBC%\msboxInj.bat">>"%GBC%\logs\%CSTCONS%msboxInj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
copy /y "%GBC%\net\%LNCH%\%MSDS%\dosbox.conf" "%%~g\dosbox.conf"
set CSTM=%%~g
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h "dosbox.conf"') do (	
type "RUN.com">>"dosbox.conf"
if /I "%%~xa"==".conf" "%GBC%\fart.exe" "*.bat" [EXT] conf
)
CALL "%GBC%\MSDSinject.bat"
popd
:skp