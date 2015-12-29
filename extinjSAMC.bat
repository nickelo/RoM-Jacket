SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%SAMC%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "SimCoupe.cfg" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "SimCoupe.cfg" [ROM] --remove
if "%GGOFF%"=="1" copy /y "SimCoupe.cfg" "%GBE%\%EMUZ%\%SAMC%"
call "%GBC%\simcinj.bat">>"%GBC%\logs\simcinj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SAMC%\SimCoupe.cfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET SAMCROM=%CNGAMT%
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".gz" "%GBC%\fart.exe" "*.bat" [EXT] gz
if /I "%%~xa"==".dsk" "%GBC%\fart.exe" "*.bat" [EXT] dsk
if /I "%%~xa"==".sad" "%GBC%\fart.exe" "*.bat" [EXT] sad
if /I "%%~xa"==".mgt" "%GBC%\fart.exe" "*.bat" [EXT] mgt
if /I "%%~xa"==".sdf" "%GBC%\fart.exe" "*.bat" [EXT] sdf
if /I "%%~xa"==".td0" "%GBC%\fart.exe" "*.bat" [EXT] td0
if /I "%%~xa"==".sbt" "%GBC%\fart.exe" "*.bat" [EXT] sbt
if /I "%%~xa"==".cbm" "%GBC%\fart.exe" "*.bat" [EXT] cbm
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".gz" set SAMCROM=%%~a
if /I "%%~xa"==".dsk" set SAMCROM=%%~a
if /I "%%~xa"==".sad" set SAMCROM=%%~a
if /I "%%~xa"==".mgt" set SAMCROM=%%~a
if /I "%%~xa"==".sdf" set SAMCROM=%%~a
if /I "%%~xa"==".td0" set SAMCROM=%%~a
if /I "%%~xa"==".sbt" set SAMCROM=%%~a
if /I "%%~xa"==".cbm" set SAMCROM=%%~a
if /I "%%~xa"==".zip" set SAMCROM=%%~a
)
call "%GBC%\SAMCinject.bat"
popd
:skp