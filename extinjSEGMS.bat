SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(J*"') do SET SCDJB=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(E*"') do SET SCDEB=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(U*"') do SET SCDUB=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\*jp*cd*"') do SET SCDJB=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\*eu*cd*"') do SET SCDEB=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\*us*cd*"') do SET SCDUB=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_M*"') do SET SEG32XM=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_S*"') do SET SEG32XS=%%i
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_G*"') do SET SEG32XG=%%s
pushd "%GBC%\net\%LNCH%\%SEGMS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" [ROMPTH] [EMUPTH]
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".Mem" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".sstates" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".snaps" --remove
"%GBC%\fart.exe" "%FUSN%.ini" [SCDUB] "%SCDUB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDJB] "%SCDJB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDEB] "%SCDEB%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XG] "%32XG%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XM] "%32XM%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XS] "%32XS%"
"%GBC%\fart.exe" "%FUSN%.ini" [EMUPTH] "%GBE%\%EMUZ%\%FUSN%"
if "%CEMU%"=="%FUSN%" call "%GBC%\fusionJoy.bat">>"%GBC%\logs\%CSTCONS%fusnjoy.log"
if "%CEMU%"=="%FUSN%" call "%GBC%\fusnInj.bat">>"%GBC%\logs\%CSTCONS%fusnIj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SEGMS%\%FUSN%.ini" "%%~g\%FUSN%.ini"
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
if /I "%%~xa"==".sms" "%GBC%\fart.exe" "*.bat" [EXT] sms
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
CALL "%GBC%\Segmsinject.bat"
popd
:skp
