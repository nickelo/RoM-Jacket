SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*a500*.rom"') do set AMIG500=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*1.3.rom"') do set AMIG500=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*3.1*.rom"') do set AMIG1200=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*a1200*.rom"') do set AMIG1200=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*40.068*.rom"') do set AMIG1200=%%~a
pushd "%GBC%\net\%LNCH%\%CAMIG%"
if "%CEMU%"=="%FSUAE%" call "%GBC%\fsuaeInj.bat">>"%GBC%\logs\fsuae.log"
popd

if "%AMIG500%"=="" echo.%CAMIG% a500 Kickstart>>"%GBC%\mbios.ini"
if "%AMIG1200%"=="" echo.%CAMIG% a1200 Kickstart>>"%GBC%\mbios.ini"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CAMIG%\Config.fs-uae" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h "*.bat"') do (
if /I "%%~xa"==".bat" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
)
CALL "%GBC%\Camiginject.bat"
popd
:skp