SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
if "%CEMU%"=="%NGBA%" call "%GBC%\NGBAJoy1.bat">>"%GBC%\logs\%CSTCONS%fusnjoy.log"

pushd "%GBC%\net\%LNCH%\%NGBA%"
if "%CEMU%" NEQ "%VGBA%" goto :INJCT
if "%P1JOYTYPE%"=="JOY" call "%GBC%\ngbajoy1.bat">>"%GBC%\logs\ngbajoy1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\ngbakb1.bat">>"%GBC%\logs\ngbakb1.log"
if "%CEMU%"=="%VGBA%" set CFGFILE=vbam.ini
if "%CEMU%"=="%MGBA%" set CFGFILE=config.ini
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"

:INJCT
if "%CEMU%"=="%MEDN%" "%GBC%\fart.exe" "%MEDN%*.cfg" [EMUPTH] "%GBE%\%EMUZ%\%MEDN%"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%CEMU%"=="%VGBA%" call "%GBC%\vbaInj.bat">>"%GBC%\logs\%CSTCONS%vbaInj.log"
if "%CEMU%"=="%MGBA%" call "%GBC%\mgbaInj.bat">>"%GBC%\logs\%CSTCONS%mgbaInj.log"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%MEDN%\GBA*.rom") do set NGBABIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%MEDN%\GBA*.bin") do set NGBABIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%VGBA%\GBA*.rom") do set NGBABIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%VGBA%\GBA*.bin") do set NGBABIOS=%%~a
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "vbam.ini" [preferences] batteryDir==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "vbam.ini" [preferences] saveDir==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "vbam.ini" [preferences] captureDir==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "vbam.ini" [preferences] aviRecordDir==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "vbam.ini" [preferences] movieRecordDir==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "vbam.ini" [preferences] soundRecordDir==
if "%CEMU%"=="%MGBA%" "%GBC%\fart.exe" "config.ini" [EMUPTH] "%GBE%\%EMUZ%\%MGBA%"
if "%CEMU%"=="%VGBA%" "%GBC%\fart.exe" "vbam.ini" [EMUPTH] "%GBE%\%EMUZ%\%VGBA%"
if "%CEMU%"=="%VGBA%" "%GBC%\fart.exe" "vbam.ini" [NGBABIOS] "%NGBABIOS%"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%CEMU%"=="%MEDN%" "%GBC%\fart.exe" "%MEDN%*.cfg" [GBABIOS] "%NGBABIOS%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NGBA%\vbam.ini" "%%~g\vbam.ini"
if "%CEMU%"=="%MEDN%" copy /Y "%GBC%\net\%LNCH%\%NGBA%\%MEDN%.cfg" "%%~g"
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
if /I "%%~xa"==".sgb" "%GBC%\fart.exe" "*.bat" [EXT] sgb
if /I "%%~xa"==".gba" "%GBC%\fart.exe" "*.bat" [EXT] gba
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
call "%GBC%\Ngbainject.bat"
popd
:skp
