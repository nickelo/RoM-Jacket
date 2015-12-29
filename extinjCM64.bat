SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%GGOFF%"=="1" del /q "%GBE%\%EMUZ%\%VICE%"
pushd "%GBC%\net\%LNCH%\%CM64%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [ROMPTH] [EMUPTH]
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [ROM] --remove
"%GBC%\fart.exe" "vice.ini" [EMUPTH] "%GBE%\%EMUZ%\%VICE%"
if "%CEMU%"=="%VICE%" call "%GBC%\viceInj.bat">>"%GBC%\logs\%CSTCONS%viceInj.log"
if "%GGOFF%"=="1" copy /Y "vice.ini" "%GBE%\%EMUZ%\%VICE%"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CM64%\vice.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h "*.x64" "*.t64" "*.d64" "*.g64" "*.fdi" "*.p00" "*.prg" "*.tap"') do (
if /I "%%~xa"==".x64" "%GBC%\fart.exe" "*.bat" [EXT] x64
if /I "%%~xa"==".t64" "%GBC%\fart.exe" "*.bat" [EXT] t64
if /I "%%~xa"==".d64" "%GBC%\fart.exe" "*.bat" [EXT] d64
if /I "%%~xa"==".g64" "%GBC%\fart.exe" "*.bat" [EXT] g64
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fdi
if /I "%%~xa"==".p00" "%GBC%\fart.exe" "*.bat" [EXT] p00
if /I "%%~xa"==".prg" "%GBC%\fart.exe" "*.bat" [EXT] prg
if /I "%%~xa"==".tap" "%GBC%\fart.exe" "*.bat" [EXT] tap
if /I "%%~xa"==".x64" SET ROMFILE=%%~a
if /I "%%~xa"==".t64" SET ROMFILE=%%~a
if /I "%%~xa"==".d64" SET ROMFILE=%%~a
if /I "%%~xa"==".g64" SET ROMFILE=%%~a
if /I "%%~xa"==".fdi" SET ROMFILE=%%~a
if /I "%%~xa"==".p00" SET ROMFILE=%%~a
if /I "%%~xa"==".prg" SET ROMFILE=%%~a
if /I "%%~xa"==".tap" SET ROMFILE=%%~a
)
CALL "%GBC%\CM64inject.bat"
popd
:skp