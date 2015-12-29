SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%FERID%"=="1" call "%GBC%\%SHRTN%inject1.bat"
if "%FERID%"=="1" exit /b
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
pushd "%GBC%\net\%LNCH%\%AT26%"
if "%CEMU%"=="%STLA%" call "%GBC%\stlaInj.bat">>"%GBC%\logs\stlaInj.log"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "stella.ini" [ROMPTH] [EMUPTH]
"%GBC%\fart.exe" "stella.ini" [EMUPTH] "%GBE%\%EMUZ%\%STLA%"
if "%RECONF%"=="1" %COPYTYPE% "stella.ini" "%%~g\stella.ini"
popd
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
copy /Y "%GBC%\net\%LNCH%\%AT26%\stella.ini" "%%~g"
copy /Y "%GBC%\net\%LNCH%\%AT26%\basedir.txt" "%%~g"
pushd "%%~g"
call :injext
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT26%\stella.ini" "%GBE%\%EMUZ%\%STLA%"
exit /b
	:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".z26" "%GBC%\fart.exe" "*.bat" [EXT] z26
if /I "%%~xa"==".a26" "%GBC%\fart.exe" "*.bat" [EXT] a26
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
)
if "%RECONF%"=="1" CALL "%GBC%\AT26inject.bat"
popd
:skp
