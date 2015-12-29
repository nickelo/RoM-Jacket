SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\*TOS*.*"') do SET STBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\*kaos*.img"') do SET STBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS_206.img"') do SET STBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS_206.rom"') do SET STBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS206.rom"') do SET STBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS206.img"') do SET STBIOS=%%~a
pushd "%GBC%\net\%LNCH%\%ATST%"
if /i "%CEMU%"=="%ATST%" call "%GBC%\steemJoy.bat">>"%GBC%\logs\%CSTCONS%steemjoy.log"
"%GBC%\fart.exe" "steem.ini" [STBIOS] "%STBIOS%"
"%GBC%\fart.exe" "steem.ini" [EMUPTH] "%GBE%\%EMUZ%\%STEEM%"
popd

if "%STBIOS%"=="" echo.%ATST% Bios>>"%GBC%\mbios.ini"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%ATST%\steem.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
set IPFROM=
pushd "%%~g"
call :injext
)
"%GBC%\fart.exe" "*.bat" [PASTI] "REM "
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET ROMN=%GAMT%
if "%INDVGAME%" NEQ "" SET ROMD=%GAMT%
if "%INDVGAME%" NEQ "" SET ROME=%GAMTEXT%
if "%INDVGAME%" NEQ "" SET ROM=%CNGAMT%
if "%INDVGAME%" NEQ "" SET ROMF=%CNGAMT%
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".stx" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] stx
if /I "%%~xa"==".st" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] st
if /I "%%~xa"==".msa" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] msa
if /I "%%~xa"==".zip" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".ipf" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] ipf
if /I "%%~xa"==".ipf" SET IPFROM=1
if /I "%%~xa"==".ipf" "%GBC%\fart.exe" "*.bat" [PASTI] --remove
if /I "%%~xa"==".stx" "%GBC%\fart.exe" "*.bat" [PASTI] --remove
)
CALL "%GBC%\atstinject.bat"
popd
:skp