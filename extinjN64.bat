SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%N64%"
"%GBC%\fart.exe" "Project64.cfg" [EMUPTH] "%GBE%\%EMUZ%\%PJ64%"
if "%CEMU%"=="%MUPEN%" goto :MUPEN
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Instant Save==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Plugin==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Save==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Snap Shot==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Texture Dir==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Recent File] Recent Rom 0==
if "%GGOFF%"=="1" copy /y "Project64.cfg" "%GBE%\%EMUZ%\%PJ64%\Config"
if "%CEMU%"=="%PJ64%" call "%GBC%\pj64Inj.bat">>"%GBC%\logs\%CSTCONS%pj64Inj.log"
:MUPEN
"%GBC%\fart.exe" "mupen64plus.cfg" [EMUPTH] "%GBE%\%EMUZ%\%MUPEN%"
if "%CEMU%"=="%MUPEN%" call "%GBC%\mupen64plusinj.bat">>"%GBC%\logs\mupen64plusinj. log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%N64%\*.cpf" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%N64%\*.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%N64%\*.cfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET ROMN=%GAMFULL%
if "%INDVGAME%" NEQ "" SET ROMD=%GAMT%
if "%INDVGAME%" NEQ "" SET ROME=%GAMTEXT%
if "%INDVGAME%" NEQ "" SET ROMF=%CNGAMT%
if "%INDVGAME%" NEQ "" CALL :EACHROM
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".pal" SET ROMNM=%%~a
if /I "%%~xa"==".usa" SET ROMNM=%%~a
if /I "%%~xa"==".u64" SET ROMNM=%%~a
if /I "%%~xa"==".j64" SET ROMNM=%%~a
if /I "%%~xa"==".v64" SET ROMNM=%%~a
if /I "%%~xa"==".n64" SET ROMNM=%%~a
if /I "%%~xa"==".z64" SET ROMNM=%%~a
if /I "%%~xa"==".zip" SET ROMNM=%%~a
if /I "%%~xa"==".pal" "%GBC%\fart.exe" "*.bat" [EXT] pal
if /I "%%~xa"==".usa" "%GBC%\fart.exe" "*.bat" [EXT] usa
if /I "%%~xa"==".u64" "%GBC%\fart.exe" "*.bat" [EXT] u64
if /I "%%~xa"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%%~xa"==".v64" "%GBC%\fart.exe" "*.bat" [EXT] v64
if /I "%%~xa"==".n64" "%GBC%\fart.exe" "*.bat" [EXT] n64
if /I "%%~xa"==".z64" "%GBC%\fart.exe" "*.bat" [EXT] z64
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
CALL "%GBC%\N64inject.bat"
popd
:skp