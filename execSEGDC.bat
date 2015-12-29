
pushd "%GBC%\net\%EXECT%\%SEGDC%"
if "%CEMU%"=="%NULLDC%" call "%GBC%\nulldcInj.bat">>"%GBC%\logs\%CSTCONS%nulldcInj.log"
if "%CEMU%"=="%DMUL%" call "%GBC%\dmulInj.bat">>"%GBC%\logs\%CSTCONS%dmulInj.log"
"%GBC%\fart.exe" "demul.ini" [EMUPTH] 
popd

IF "%CEMU%"=="%DMUL%" goto :GETDC
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%NULLDC%\Data\*"') do (
set BIOSN=%%~na
set BIOSF=%%~nxa
set BIOSA=%%~a
call :BIOSPUT
)
goto :INTP

:GETDC
set BIOSA=dc.zip
set BIOSF=dc.zip
set BIOSN=dc
call :BIOSPUT
goto :INTP

:BIOSPUT
IF "%CEMU%"=="%DMUL%" mkdir "%GBC%\net\%EXECT%\%CSTCONS%\roms"
IF "%CEMU%"=="%DMUL%" copy /y "%GBE%\%EMUZ%\%DMUL%\roms\dc.zip" "%GBC%\net\%EXECT%\%CSTCONS%\roms"
IF "%CEMU%"=="%DMUL%" copy /y "%GBE%\%EMUZ%\%DMUL%\roms\dc.zip" "%GBC%\net\%EXECT%\%CSTCONS%\roms\dc.zip"
IF "%CEMU%"=="%NULLDC%" copy /y "%GBE%\%EMUZ%\%NULLDC%\Data\%BIOSF%" "%GBC%\net\%EXECT%\%CSTCONS%\%BIOSF%"
IF "%CEMU%"=="%NULLDC%" echo.copy /y "%BIOSF%.bak" "Data\%BIOSF%">>"%GBC%\bioscpy.ini"
exit /b

:INTP
pushd "%GBC%\net\%EXECT%\%SEGDC%"
for /d %%g IN ("%CSTM%") DO (
if "%CEMU%"=="%NULLDC%" copy /Y "%GBC%\net\%EXECT%\%SEGDC%\%NULLDC%.cfg" "%%~g"
if "%CEMU%"=="%DMUL%" copy /Y "%GBC%\net\%EXECT%\%SEGDC%\*.ini" "%%~g"
mkdir "%%~g\.Mem"
if "%CEMU%"=="%NULLDC%" call :NULLDC
if "%CEMU%"=="%DMUL%" call :DEMUL
SET DCIMG=
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\SEGDCexeject.bat"
)
popd
exit /b

:NULLDC
copy /y "%CSTLOC%\.Mem\vmu_data_port01.bin" "%CSTM%\.Mem\vmu_data_port01.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vmu_data_port01.bin"
copy /y "%CSTLOC%\.Mem\vmu_data_port02.bin" "%CSTM%\.Mem\vmu_data_port02.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vmu_data_port02.bin"
copy /y "%CSTLOC%\.Mem\vmu_data_port41.bin" "%CSTM%\.Mem\vmu_data_port41.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vmu_data_port41.bin"
copy /y "%CSTLOC%\.Mem\vmu_data_port42.bin" "%CSTM%\.Mem\vmu_data_port42.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vmu_data_port42.bin"
exit /b
:DEMUL
copy /y "%CSTLOC%\.Mem\vms00.bin" "%CSTM%\.Mem\vms00.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vms00.bin"
copy /y "%CSTLOC%\.Mem\vms01.bin" "%CSTM%\.Mem\vms01.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vms01.bin"
copy /y "%CSTLOC%\.Mem\vms10.bin" "%CSTM%\.Mem\vms10.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vms10.bin"
copy /y "%CSTLOC%\.Mem\vms11.bin" "%CSTM%\.Mem\vms11.bin" || copy /y "%GBC%\net\%EXECT%\%SEGDC%\vms.bin" "%CSTM%\.Mem\vms11.bin"
exit /b



:injext
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h "%INROM%"') do (
set DCROM=%%~a
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".cue" SET DCIMG=1
if /I "%%~xa"==".cue" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [EXT] mds
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
if /I "%%~xa"==".cdi" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".mdf" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".mds" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".nrg" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".gdi" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".chd" CALL "%GBC%\Segdcexeject.bat"
if /I "%%~xa"==".iso" CALL "%GBC%\Segdcexeject.bat"
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1