SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

CALL "%GBC%\satdrv.bat">>"%GBC%\logs\satdrv.log"

if "%SATSKIP%"=="1" %BSTRT% "%WBUSY%" "RJ_GUI" "Daemon Tools must be installed to configure Sega Saturn" /marquee
if "%SATSKIP%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "Daemon Tools must be installed to configure Sega Saturn" /Stop /Timeout:1
if "%SATSKIP%"=="1" goto :EOF

for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*1.00*"') do (
SET SSFB=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*101*"') do (
SET SSFB=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*JAP*"') do (
SET SSFBJ=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*EUR*"') do (
SET SSFBE=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*USA*"') do (
SET SSFBU=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\STV\*.bin"') do (
SET SSATV=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\STV\*STV*"') do (
SET SSATV=%%i
)
pushd "%GBC%\net\%LNCH%\%SSAT%"
call "%GBC%\ssfInj.bat">>"%GBC%\logs\%CSTCONS%ssfInj.log"
if "%SSFB%"=="" echo.%SSAT% Universal Bios>>"%GBC%\mbios.ini"
if "%SSFB%" NEQ "" goto :INJ
if "%SSFBE%"=="" echo.%SSAT% European Bios>>"%GBC%\mbios.ini"
if "%SSFBJ%"=="" echo.%SSAT% Japanese Bios>>"%GBC%\mbios.ini"
if "%SSFBU%"=="" echo.%SSAT% USA Bios>>"%GBC%\mbios.ini"

:INJ
if "%SSFB%" NEQ "" goto :INIJECT
if "%SSFB%"=="" SET SSFB=%SSFBJ%
if "%SSFB%" NEQ "" goto :INIJECT
if "%SSFBJ%"=="" SET SSFB=%SSFBU%
if "%SSFB%" NEQ "" goto :INIJECT
if "%SSFBU%"=="" SET SSFB=%SSFBE%
:INIJECT
"%GBC%\fart.exe" "%SSF%.ini" [BIOS] "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\%SSFB%"
"%GBC%\fart.exe" "%SSF%.ini" [STV] "%GBE%\%EMUZ%\%SSF%\Setting\STV\%SSATV%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] CDDrive="%SATNUM%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%SSF%.ini" [REG] 4
if "%GGOFF%"=="1" copy /Y "Setting.ini" "%GBE%\%EMUZ%\%SSF%"
if "%GGOFF%"=="1" copy /Y "%SSF%.ini" "%GBE%\%EMUZ%\%SSF%"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SSAT%\%SSF%.ini" "%%~g\%SSF%.ini"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SSAT%\Setting.ini" "%%~g\Setting.ini"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET SSATROM=%GAMT%
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".iso" set SSATROM=%%~na
if /I "%%~xa"==".nrg" set SSATROM=%%~na
if /I "%%~xa"==".mdf" set SSATROM=%%~na
if /I "%%~xa"==".cdi" set SSATROM=%%~na
if /I "%%~xa"==".img" set SSATROM=%%~na
if /I "%%~xa"==".cue" set SSATROM=%%~na
if /I "%%~xa"==".rom" set SSATROM=%%~na
)
CALL "%GBC%\Ssatinject.bat"
popd
:skp