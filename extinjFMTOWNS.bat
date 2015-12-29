SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

CALL "%GBC%\fmdrv.bat">>"%GBC%\logs\fmdrv.log"

if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%FMTOWNS%\key*.def" "%GBE%\%EMUL%\%FMUNZ%"
"%DAMVAR%" -get_Letter scsi, 0
set DAMVARNUM=%errorlevel%
pushd "%GBC%\net\%LNCH%\%FMTOWNS%"
if "%CEMU%"=="%FMUNZ%" call "%GBC%\unzInj.bat">>"%GBC%\logs\%CSTCONS%unzInj.log"
"%GBC%\fart.exe" "%FMUNZ%.ini" [DRVLTR] %DAMVARNUM%
if "%GGOFF%"=="1" copy /y "%GBC%\net\%LNCH%\%FMTOWNS%\%FMUNZ%.ini" "%GBE%\%EMUZ%\%FMUNZ%"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%FMTOWNS%\%FMUNZ%.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
SET RDISK=
pushd "%%~g"
call :injext
)

exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
SET DSKFND=
if "%DTOFF%"=="1" goto :DSKS
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [DAM] --remove
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [DAM] --remove
if /I "%%~xa"==".ccd" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".ccd" "%GBC%\fart.exe" "*.bat" [DAM] --remove
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [DAM] --remove
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [DAM] --remove
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [DAM] --remove
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [DAM] --remove
SET DSKFND=1
)

for /f "delims=" %%a in ('dir /b/a-d-h "*.bin"') do (
if /I %%~za LEQ 5000000 "%GBC%\fart.exe" "*.bat" [EXT]  "bin"
if /I %%~za LEQ 5000000 "%GBC%\fart.exe" "*.bat" [OPT] --remove
if /I %%~za LEQ 5000000 "%GBC%\fart.exe" "*.bat" [DAM] "REM "
SET DSKFND=2
)

if "%DSKFND%"=="2" goto :DSKS
for /f "delims=" %%a in ('dir /b/a-d-h "*.bin"') do (
if /I %%~za GTR 5000000 "%GBC%\fart.exe" "*.bat" [EXT]  "bin"
if /I %%~za GTR 5000000 "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I %%~za GTR 5000000 "%GBC%\fart.exe" "*.bat" [DAM] --remove
SET DSKFND=1
)

for /f "delims=" %%a in ('dir /b/a-d-h "*.iso" "*.img" "*.nrg" "*.mds"') do (
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" .[EXT] "%%~xa"
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [DAM] --remove
SET DSKFND=1
)
CALL "%GBC%\FMTownsinject.bat">>"%GBC%\logs\fmtownsinject.log"
if "%DSKFND%"=="1" popd
if "%DSKFND%"=="1" exit /b

:DSKS
for /f "delims=" %%a in ('dir /b/a-d-h "*.bin" "*.fdi" "*.td0" "*.imd" "*.cqm" "*.dsk" "*.d77" "*.d88" "*.1dd"') do (
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [OPT] --remove
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [DAM] "REM "
)
CALL "%GBC%\FMTownsinject.bat">>"%GBC%\logs\fmtownsinject.log"
popd
:skp