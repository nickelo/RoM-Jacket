SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%AT52%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" ".atari*.*" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" ".atari*.*" [ROM] --remove
if "%CEMU%"=="%AT800%" call "%GBC%\at800Inj.bat">>"%GBC%\logs\at800Inj.log"
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200*.bin"') do SET AT52BIOS=%%~a
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200*.rom"') do SET AT52BIOS=%%~a
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200*a.rom"') do SET AT52ABIOS=%%~a
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200a*.rom"') do SET AT52ABIOS=%%~a
"%GBC%\fart.exe" ".atari*.*" [BIOSA] "%AT52ABIOS%"
"%GBC%\fart.exe" ".atari*.*" [BIOS] "%AT52BIOS%"
popd

if "%AT52BIOS%"=="" echo.%AT52% Bios>>"%GBC%\mbios.ini"
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%AT52%\.atari*.*" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT52%\.atari*.*" "%GBE%\%EMUZ%\%AT8E%"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET AT52ROM=%CNGAMT%
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if "%AT52BIOS%" NEQ "" "%GBC%\fart.exe" "*.bat" [BIOS] "%AT52BIOS%"
if /I "%%~xa"==".a52" "%GBC%\fart.exe" "*.bat" [EXT] a52
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".a52" SET AT52ROM=%%~nxa
if /I "%%~xa"==".bin" SET AT52ROM=%%~nxa
if /I "%%~xa"==".rom" SET AT52ROM=%%~nxa
)
CALL "%GBC%\AT52inject.bat"
popd
:skp