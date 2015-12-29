SET NEWGAMDIR=*

if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*CD32*Ext*.rom"') do set CD32EXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Ext*40.60*.rom"') do set CD32EXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Ext*CD32*.rom"') do set CD32EXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*40.60*Extended*.rom"') do set CD32EXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Extended*40.60*.rom"') do set CD32EXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*KS*CD32*"') do set CD32BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*CD32*"') do set CD32BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*CD32*Kick*"') do set CD32BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*40.60*Kick*"') do set CD32BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*40.60*"') do set CD32BIOS=%%~a
pushd "%GBC%\net\%LNCH%\%AMIG32%"
if "%CEMU%"=="%FSUAE%" call "%GBC%\fsuaeInj.bat">>"%GBC%\logs\fsuaeInj.log"
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "%GBE%\%EMUZ%\%FSUAE%\%CD32BIOS%"
"%GBC%\fart.exe" "Config.fs-uae" [EXTENDEDPTH] "%GBE%\%EMUZ%\%FSUAE%\%CD32EXT%"
popd
if "%CD32BIOS%"=="" (
echo.%AMIG32% Kickstart>>"%GBC%\mbios.ini"
)
if "%CD32EXT%"=="" (
echo.%AMIG32% Extended>>"%GBC%\mbios.ini"
)
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
copy /Y "%GBC%\net\%LNCH%\%AMIG32%\config.fs-uae" "%%~g"
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
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
)
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
)
CALL "%GBC%\AMIG32inject.bat"
popd
:skp
