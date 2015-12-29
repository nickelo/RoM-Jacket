SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%ATMS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" .Mem memsaves
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" [ROMPTH] "[EMUPTH]"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" [ROMSRC] "[EMUPTH]"
"%GBC%\fart.exe" "*.ini" [EMUPTH] "%GBE%\%EMUZ%\%DMUL%"
if "%GGOFF%"=="1" copy /y "*.ini" "%GBE%\%EMUZ%\%DMUL%"
call "%GBC%\dmulInj.bat">>"%GBC%\logs\%CSTCONS%demulInj.log"
popd
pushd "%GBG%\%GAM%\%CONS%\%ATMS%"

if "%CANCELLED%"=="1" exit /b

for %NIVA% %%g IN (%NEWGAMDIR%) DO (
set CSTM=%%~g
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%ATMS%\*.ini" "%%~g"
SET TYPE=
SET NAROM=
SET EXT=
if "%INDVGAME%"=="1" set CSTM=%%~nxg
Pushd "%%~g"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET ROMXT=%GAMTEXT%
if "%INDVGAME%" NEQ "" CALL :INJOXT
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%i in ('dir /b /a-d-h') do (
SET ROMXT=%%~xi
CALL :INJOXT
)
CALL "%GBC%\ATMSinject.bat"
popd
exit /b

:INJOXT
if "%TYPE%" NEQ "" exit /b
if /I "%ROMXT%"==".bin" SET TYPE=customrom
if /I "%ROMXT%"==".dat" SET TYPE=customrom
if /I "%ROMXT%"==".gdi" SET TYPE=image
if /I "%ROMXT%"==".zip" SET TYPE=rom
CALL :INJAXT
exit /b
:INJAXT
if "%TYPE%"=="" goto :skp
if "%TYPE%"=="customrom" "%GBC%\fart.exe" "*.bat" [ROM] "\"^%%^CD%%\%%ROMN%%.[EXT]"\"
if "%TYPE%"=="image" "%GBC%\fart.exe" "*.bat" [ROM] "\"^%%^CD%%\%%ROMN%%.[EXT]"\"
if "%TYPE%"=="rom" "%GBC%\fart.exe" "*.bat" [ROM] "%%ROMN%%"
CALL :INJUXT
exit /b
:INJUXT
"%GBC%\fart.exe" "*.bat" [TYPE] "%TYPE%"
if /I "%ROMXT%"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%ROMXT%"==".dat" "%GBC%\fart.exe" "*.bat" [EXT] dat
if /I "%ROMXT%"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%ROMXT%"==".gdi" "%GBC%\fart.exe" "*.bat" [EXT] gdi
:skp
	