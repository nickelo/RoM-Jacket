SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%NES%"
if "%CEMU%"=="%NESTP%" "%GBC%\fart.exe" "%NESTP%.xml" [EMUPTH] "%GBE%\%EMUZ%\%NESTP%"
if "%CEMU%"=="%VNES%" "%GBC%\fart.exe" "%MEDN%*.cfg" [EMUPTH] "%GBE%\%EMUZ%\%VNES%"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NES%\%NESTP%.xml" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NES%\%VNES%.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NES%\%MEDN%*.cfg" "%%~g"
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
if /I "%%~xa"==".unif" "%GBC%\fart.exe" "*.bat" [EXT] unif
if /I "%%~xa"==".unf" "%GBC%\fart.exe" "*.bat" [EXT] unf
if /I "%%~xa"==".nsf" "%GBC%\fart.exe" "*.bat" [EXT] nsf
if /I "%%~xa"==".nes" "%GBC%\fart.exe" "*.bat" [EXT] nes
if /I "%%~xa"==".fam" "%GBC%\fart.exe" "*.bat" [EXT] fam
if /I "%%~xa"==".fds" "%GBC%\fart.exe" "*.bat" [EXT] fds
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".unif" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".unf" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".nsf" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".nes" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".fam" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".fds" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".bin" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".zip" "*.bat" SET ROMF=%%~nxa
)
CALL "%GBC%\Nesinject.bat"
popd
:skp