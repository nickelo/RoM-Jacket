SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\*3DO*.bin"') do set BIOS3DO=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\bios.rom"') do set BIOS3DO=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\Goldstar.bin"') do set BIOS3DO=%%~a

if "%BIOS3DO%"=="" echo.%P3DO% Bios>>"%GBC%\mbios.ini"

pushd "%GBC%\net\%LNCH%\%P3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [3DOBIOS] "BIOS\%BIOS3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [EMUPTH] "%GBE%\%EMUZ%\%FOURDO%"
"%GBC%\fart.exe" "FourDO.Settings" [BIOS3DO] "%BIOS3DO%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "FourDO.Settings" [ROMPTH] --remove
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%P3DO%\FourDO.Settings" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%P3DO%\*Input*.xml" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do if /i "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".iso" set CSTROM=%%~a
if /I "%%~xa"==".img" set CSTROM=%%~a
if /I "%%~xa"==".cdi" set CSTROM=%%~a
if /I "%%~xa"==".nrg" set CSTROM=%%~a
if /I "%%~xa"==".mdf" set CSTROM=%%~a
if /I "%%~xa"==".bin" set CSTROM=%%~a
)
call "%GBC%\P3DOinject.bat"
popd
:skp