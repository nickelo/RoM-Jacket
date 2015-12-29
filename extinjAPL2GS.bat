SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\xgs.rom"') do SET APL2GSBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\*APPLE2GS*.rom2"') do set APL2GSBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\ROM 03"') do SET APL2GSBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\*ROM 01"') do SET APL2GSBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\*Rom03gd*"') do SET APL2GSBIOS=%%~a

if "%APL2GSBIOS%"=="" (
echo.%APL2GS% BIOS>>"%GBC%\mbios.ini"
)

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
copy /Y "%GBC%\net\%LNCH%\%APL2GS%\config.kegs" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
CALL "%GBC%\APL2GSinject.bat"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
"%GBC%\fart.exe" "config.kegs" [BIOS] "%APL2GSBIOS%"
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d "%APL2GSDSK%"') do (
"%GBC%\fart.exe" "*.bat" ".[EXT]" "%%~xa"
)
popd
:skp
