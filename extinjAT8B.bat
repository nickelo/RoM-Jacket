 SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat"

REM for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIOSA*.rom"') do SET ATOSA=%%~a
REM for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIOSB*.rom"') do SET ATOSB=%%~a
REM for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIXL*.rom"') do SET ATXL=%%~a
REM for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIBAS*.rom"') do SET ATBAS=%%~a
REM for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*5200*.rom"') do SET 5200B=%%~a
pushd "%GBC%\net\%LNCH%\%AT8B%"
if /i "%CEMU%"=="%ALTRA%" call "%GBC%\altraJoy.bat">>"%GBC%\logs\%CSTCONS%altrajoy.log"
if /i "%CEMU%"=="%ALTRA%" call "%GBC%\altraInj.bat">>"%GBC%\logs\%CSTCONS%altraInj.log"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%ALTRA%.ini" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%ALTRA%.ini" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%ALTRA%.ini" .snaps --remove
"%GBC%\fart.exe" "%ALTRA%.ini" [ATOSA] "%ATOSA%"
"%GBC%\fart.exe" "%ALTRA%.ini" [ATOSB] "%ATOSB%"
"%GBC%\fart.exe" "%ALTRA%.ini" [ATXL] "%ATXL%"
"%GBC%\fart.exe" "%ALTRA%.ini" [ATBAS] "%ATBAS%"
"%GBC%\fart.exe" "%ALTRA%.ini" [5200B] "%5200B%"
popd

REM if "%ATOSA%"=="" echo.%AT8B% AtariOSA Bios>>"%GBC%\mbios.ini"
REM if "%ATOSB%"=="" echo.%AT8B% AtariOSB Bios>>"%GBC%\mbios.ini"
REM if "%ATXL%"=="" echo.%AT8B% AtariXL Bios>>"%GBC%\mbios.ini"
REM if "%ATBAS%"=="" echo.%AT8B% AtariBAS Bios>>"%GBC%\mbios.ini"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%AT8B%\%ALTRA%.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
CALL "%GBC%\at8hinject.bat"
call :injext
)

if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT8B%\%ALTRA%.ini" "%GBE%\%EMUZ%\%ALTRA%"
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do "%GBC%\fart.exe" "*.bat" ".[EXT]" "%BATEXTN%"
popd
:skp