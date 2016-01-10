SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%SFAM%"
if "%CEMU%"=="%SN9X%" call "%GBC%\sn9xJoy.bat">>"%GBC%\logs\%CSTCONS%sn9xjoy.log"
if "%CEMU%"=="%SN9X%" call "%GBC%\sn9xInj.bat">>"%GBC%\logs\%CSTCONS%sn9xInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
"%GBC%\fart.exe" "snesgt.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "snesgt.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "snes9x.conf" [EMUPTH] "%GBE%\%EMUZ%\%ZSNS%"
"%GBC%\fart.exe" "zsnesw.cfg" [EMUPTH] "%GBE%\%EMUZ%\%ZSNS%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [EMUPTH] "%GBE%\%EMUZ%\%MEDN%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" "cvidmode=19" "cvidmode=2"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".sstates" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".snaps" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".Mem" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" \ \\
if "%GGOFF%"=="1" copy /y "%SN9X%.conf" "%EMUZ%\%EMUZ%\%SN9X%"
if "%GGOFF%"=="1" copy /y "%MEDN%*.cfg" "%EMUZ%\%EMUZ%\%MEDN%"
if "%GGOFF%"=="1" copy /y "zsnesw.cfg" "%EMUZ%\%EMUZ%\%ZSNS%"
if "%GGOFF%"=="1" copy /y "snesgt.ini" "%EMUZ%\%EMUZ%\%SNSGT%\snesgt.ini"
popd
if "%CANCELLED%"=="1" exit /b
if "%CEMU%"=="%SNSGT%" set CFGEXT=*.ini
if "%CEMU%"=="%SN9X%" set CFGEXT=*.conf
if "%CEMU%"=="%MEDN%" set CFGEXT=*.cfg
if "%CEMU%"=="%ZSNS%" set CFGEXT=*.cfg
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SFAM%\%CFGEXT%" "%%~g"
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
if /I "%%~xa"==".smc" "%GBC%\fart.exe" "*.bat" [EXT] smc
if /I "%%~xa"==".sfc" "%GBC%\fart.exe" "*.bat" [EXT] sfc
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
CALL "%GBC%\SFAMinject.bat"
popd
:skp