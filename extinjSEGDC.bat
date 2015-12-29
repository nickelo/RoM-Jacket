SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%SEGDC%"
if "%CEMU%"=="%DMUL%" call "%GBC%\dmulInj.bat">>"%GBC%\logs\%CSTCONS%dmulInj.log"
if "%CEMU%"=="%DMUL%" "%GBC%\fart.exe" "demul.ini" [EMUPTH] "%GBE%\%EMUZ%\%DMUL%"
if "%CEMU%"=="%NULLDC%" call "%GBC%\nulldcInj.bat">>"%GBC%\logs\%CSTCONS%nulldcInj.log"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] LoadDefaultImage=0
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] DefaultImage==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] LastImage==
popd

if "%CANCELLED%"=="1" exit /b

for %NIVA% %%g IN (%NEWGAMDIR%) DO (
SET DCIMG=
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SEGDC%\%NULLDC%.cfg" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SEGDC%\*.ini" "%%~g"
pushd "%%~g"
call :injext
)

if "%GGOFF%"=="1" copy /y "%NULLDC%.cfg" "%GBE%\%EMUZ%\%NULLDC%"
exit /b

:NULLDC
if not exist ".Mem\vmu_data_port01.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vmu_data_port01.bin"
if not exist ".Mem\vmu_data_port02.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vmu_data_port02.bin"
if not exist ".Mem\vmu_data_port41.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vmu_data_port41.bin"
if not exist ".Mem\vmu_data_port42.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vmu_data_port42.bin"
exit /b

:DEMUL
if not exist ".Mem\vms00.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vms00.bin"
if not exist ".Mem\vms01.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vms01.bin"
if not exist ".Mem\vms10.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vms10.bin"
if not exist ".Mem\vms11.bin" copy /y "%GBC%\net\%LNCH%\%SEGDC%\vms.bin" ".Mem\vms11.bin"
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%CEMU%"=="%NULLDC%" call :NULLDC
if "%CEMU%"=="%DMUL%" call :DEMUL
if "%INDVGAME%" NEQ "" SET DCROM=%CNGAMT%
if "%INDVGAME%" NEQ "" popd
if "%INDVGAME%" NEQ "" exit /b

for /f "delims=" %%a in ('dir /b/a-d-h "*.cue" "*.mds"') do (
set DCROM=%%~a
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [EXT] mds
if /I "%%~xa"==".mds" SET DCIMG=1
if /I "%%~xa"==".cue" SET DCIMG=1
)
if "%DCIMG%" NEQ "" CALL "%GBC%\Segdcinject.bat"
if "%DCIMG%" NEQ "" popd
if "%DCIMG%" NEQ "" exit /b

for /f "delims=" %%a in ('dir /b/a-d-h "*.cdi" "*.mdf" "*.nrg" "*.gdi" "*.iso"') do (
set DCROM=%%~a
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".gdi" "%GBC%\fart.exe" "*.bat" [EXT] gdi
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".cdi" SET DCIMG=1
if /I "%%~xa"==".mdf" SET DCIMG=1
if /I "%%~xa"==".mds" SET DCIMG=1
if /I "%%~xa"==".nrg" SET DCIMG=1
if /I "%%~xa"==".gdi" SET DCIMG=1
if /I "%%~xa"==".iso" SET DCIMG=1

if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [GDRMODE] false
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [GDRMODE] false
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [GDRMODE] false
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [GDRMODE] false
if /I "%%~xa"==".gdi" "%GBC%\fart.exe" "*.bat" [GDRMODE] false
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [GDRMODE] false

if /I "%%~xa"==".chd" "%GBC%\fart.exe" "*.bat" [EXT] chd
if /I "%%~xa"==".chd" "%GBC%\fart.exe" "*.bat" [GDRMODE] true
if /I "%%~xa"==".chd" SET DCIMG=2

)
if "%DCIMG%" NEQ "" CALL "%GBC%\Segdcinject.bat"
popd
:skp