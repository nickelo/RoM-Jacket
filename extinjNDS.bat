SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%NDS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" [ROMPTH] "%GBE%\%EMUZ%\%DESMUME%"
if "%GGOFF%"=="1" copy /y "%DESMUME%.ini" "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.ini"
if exist "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\inifile.exe" "%NOGBA%.ini" [.] Reset/Startup Entrypoint == GBA BIOS (Nintendo logo)
if "%GGOFF%"=="1" copy /y "%NOGBA%.ini" "%GBE%\%EMUZ%\%NOGBA%"
if /i "%CEMU%"=="%DESMUME%" call "%GBC%\desmumeInj.bat">>"%GBC%\logs\%CSTCONS%desmumeInj.log"
if /i "%CEMU%"=="%NOGBA%" call "%GBC%\nogbaInj.bat">>"%GBC%\logs\%CSTCONS%nogbaInj.log"
if /i "%CEMU%"=="%NOGBA%" set CSTINI=NO*
if /i "%CEMU%"=="%DESMUME%" set CSTINI=%DESMUME%
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NDS%\%CSTINI%.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
SET NDSROM=%CNGAMT%
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".ds" set NDSROM=%%~a
if /I "%%~xa"==".ds" "%GBC%\fart.exe" "*.bat" [EXT] ds
if /I "%%~xa"==".nds" set NDSROM=%%~a
if /I "%%~xa"==".srl" set NDSROM=%%~a
if /I "%%~xa"==".nds" "%GBC%\fart.exe" "*.bat" [EXT] nds
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".zip" set NDSROM=%%~a
if /I "%%~xa"==".srl" "%GBC%\fart.exe" "*.bat" [EXT] srl
if /I "%%~xa"==".nd5" set NDSROM=%%~a
if /I "%%~xa"==".nd5" "%GBC%\fart.exe" "*.bat" [EXT] nd5
)
CALL "%GBC%\NDSinject.bat"
popd
:skp