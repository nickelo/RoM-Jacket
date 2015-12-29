SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%AT78%"
call "%GBC%\prosysInj.bat">>"%GBC%\logs\prosysInj.log"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" [Recent] Recent0=
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" [Console] Save.Path=[EMUPTH]
"%GBC%\fart.exe" "%PROSYS%.ini" [EMUPTH] "%GBE%\%EMUZ%\%PROSYS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "ProSystem.ini" [AT78X] %DREZX%
if "%GGOFF%"=="1" "%GBC%\fart.exe" "ProSystem.ini" [AT78Y] %DREZY%
popd



:INJ
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" "%GBE%\%EMUZ%\%PROSYS%"
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET AT78ROM=%CNGAMT%
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".a78" "%GBC%\fart.exe" "*.bat" [EXT] a78
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".a78" SET AT78ROM=%%~a
if /I "%%~xa"==".bin" SET AT78ROM=%%~a
if /I "%%~xa"==".zip" SET AT78ROM=%%~a
if /I "%%~xa"==".rom" SET AT78ROM=%%~a
)
CALL "%GBC%\AT78inject.bat"
popd
:skp