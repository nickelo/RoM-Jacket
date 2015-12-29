"%GBC%\fart.exe" "%GBC%\%CEMU%_%CSTCONS%.ini" "\"" --remove
set CFGNUM=
for /f "delims=" %%a in ('type "%GBC%\%CEMU%_%CSTCONS%.ini"') do (
set /a CFGNUM+=1
call :GETNUM
)
exit /b

:GETNUM
set urlNthL=%CFGNUM%
set CFGVAL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%CEMU%_%CSTCONS%.ini" /L:%urlNthL%') do set CFGVAL=%%~a
popd

:CEMUAUTO
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
goto :%SHRTE%
:ALTRA
set CFGFILE=Altirra.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [AT8X] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [AT8Y] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [DX11] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [OGL] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [FILT] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [STRETCH] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [BLEND] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [SYNC] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [ARTIF] "%CFGVAL%"
exit /b

:ANEX
exit /b
:APLWIN
exit /b
:AT8E
set CFGFILE=at800.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [AT8X] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [AT8Y] "%CFGVAL%"
exit /b
:AT800
set CFGFILE=Altirra.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [TYPE] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [FILT] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [FILTNUM] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
exit /b
:BGB
set CFGFILE=bgb.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [HERTZ] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [SHADER] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [GPU] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [FSTYPE] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [STRETCH] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [TRIPLEBUFFER] "%CFGVAL%"
exit /b
:BMSX
set CFGFILE=bluemsx.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [HERTZ] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [SCANI] "%CFGVAL%"
exit /b
:CPS3
set CFGFILE=emulator.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [TILE] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [SCANTYPE] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [SCANL] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [MAN] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [VTX] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
exit /b
:DESMUME
set CFGFILE=desmume.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" "[FIRMWARE]" "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" "[BIOS9]" "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" "[BIOS7]" "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" "[BOOTF]" "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" "[DISP]" "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" "[VSYNC]" "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" "[RENDR]" "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" "[SCALE]" "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" "[ASYNC]" "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" "[AAMODE]" "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" "[FRMSK]" "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" "[ACCOLOR]" "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" "[EDGE]" "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%CFGFILE%" "[LINE]" "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "%CFGFILE%" "[FOG]" "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "%CFGFILE%" "[LAYOUT]" "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "%CFGFILE%" "[LCDSWAP]" "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "%CFGFILE%" "[FILT]" "%CFGVAL%"
if "%CFGNUM%"=="19" "%GBC%\fart.exe" "%CFGFILE%" "[SNDCORE]" "%CFGVAL%"
if "%CFGNUM%"=="20" "%GBC%\fart.exe" "%CFGFILE%" "[SYNCMODE]" "%CFGVAL%"
if "%CFGNUM%"=="21" "%GBC%\fart.exe" "%CFGFILE%" "[SYNCMETHOD]" "%CFGVAL%"
if "%CFGNUM%"=="22" "%GBC%\fart.exe" "%CFGFILE%" "[INTERP]" "%CFGVAL%"
if "%CFGNUM%"=="23" "%GBC%\fart.exe" "%CFGFILE%" "[ADV]" "%CFGVAL%"
exit /b
:DMUL
set CFGFILE=demul.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" "[VIDM]" "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" "[GPUPLUG]" "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" "[GPUPLUG]" "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "gpuDX1*.ini" "[AUTOROTATE]" "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "gpuDX1*.ini" "[ASPC]" "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "gpuDX1*.ini" "[SCALE]" "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "gpuDX1*.ini" "[ASORT]" "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "gpuDX1*.ini" "[OMOD]" "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "gpuDX1*.ini" "[TMOD]" "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "gpuDX1*.ini" "[VSYNC]" "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "gpuDX1*.ini" "[NETSORT]" "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "gpuDX1*.ini" "[MAXL]" "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "gpu*.ini" "[REZX]" "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "gpu*.ini" "[REZY]" "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "spuDemul.ini" "[SNDBUF]" "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "spuDemul.ini" "[HERTZ]" "%CFGVAL%"
exit /b
:DOLPH
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "WiimoteNew.ini" [INPUT1TYPE] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "WiimoteNew.ini" [INPUT2TYPE] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION1] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION2] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS1] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS2] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS3] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS4] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT1] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT2] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT3] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT4] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%DOLPH%.ini" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%DOLPH%.ini" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "%DOLPH%.ini" [BACKEND] "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "%DOLPH%.ini" [AUDIO] "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "%DOLPH%.ini" [PROGSCN] "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "%DOLPH%.ini" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="19" "%GBC%\fart.exe" "%DOLPH%.ini" [WIDE] "%CFGVAL%"
if "%CFGNUM%"=="20" "%GBC%\fart.exe" "%DOLPH%.ini" [ASPCT] "%CFGVAL%"
if "%CFGNUM%"=="21" "%GBC%\fart.exe" "%DOLPH%.ini" [SHADR] "%CFGVAL%"
if "%CFGNUM%"=="22" "%GBC%\fart.exe" "%DOLPH%.ini" [USEXFB] "%CFGVAL%"
if "%CFGNUM%"=="23" "%GBC%\fart.exe" "%DOLPH%.ini" [REALXFB] "%CFGVAL%"
if "%CFGNUM%"=="24" "%GBC%\fart.exe" "%DOLPH%.ini" [PPXL] "%CFGVAL%"
if "%CFGNUM%"=="25" "%GBC%\fart.exe" "%DOLPH%.ini" [PPDTH] "%CFGVAL%"
if "%CFGNUM%"=="26" "%GBC%\fart.exe" "%DOLPH%.ini" [AALVL] "%CFGVAL%"
if "%CFGNUM%"=="27" "%GBC%\fart.exe" "%DOLPH%.ini" [EFBS] "%CFGVAL%"
if "%CFGNUM%"=="28" "%GBC%\fart.exe" "%DOLPH%.ini" [ALPHAP] "%CFGVAL%"
if "%CFGNUM%"=="29" "%GBC%\fart.exe" "%DOLPH%.ini" [NOFOG] "%CFGVAL%"
if "%CFGNUM%"=="30" "%GBC%\fart.exe" "%DOLPH%.ini" [OPENCL] "%CFGVAL%"
if "%CFGNUM%"=="31" "%GBC%\fart.exe" "%DOLPH%.ini" [OMPD] "%CFGVAL%"
if "%CFGNUM%"=="32" "%GBC%\fart.exe" "%DOLPH%.ini" [FORCEF] "%CFGVAL%"
if "%CFGNUM%"=="33" "%GBC%\fart.exe" "%DOLPH%.ini" [ANIS] "%CFGVAL%"
if "%CFGNUM%"=="34" "%GBC%\fart.exe" "%DOLPH%.ini" [EFBA] "%CFGVAL%"
if "%CFGNUM%"=="35" "%GBC%\fart.exe" "%DOLPH%.ini" [DLIST] "%CFGVAL%"
if "%CFGNUM%"=="36" "%GBC%\fart.exe" "%DOLPH%.ini" [EFBC] "%CFGVAL%"
if "%CFGNUM%"=="37" "%GBC%\fart.exe" "%DOLPH%.ini" [EFBT] "%CFGVAL%"
if "%CFGNUM%"=="38" "%GBC%\fart.exe" "%DOLPH%.ini" [EFBSC] "%CFGVAL%"
if "%CFGNUM%"=="39" "%GBC%\fart.exe" "%DOLPH%.ini" [EFBCC] "%CFGVAL%"
exit /b
:EPSXE
exit /b
:FBA
set CFGFILE=fba.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [MONASPX] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [MONASPY] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [FILT] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [BRIGHT] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [BLITN] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [BLIT4V] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [SCANV] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [GAMMA] "%CFGVAL%"
exit /b
:FM7
exit /b
:FSUAE
set CFGFILE=config.fs-uae
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" -iC "%CFGFILE%" [ACCURACY] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [FSAA] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [VSYNCL] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [SHADER] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [SCANI] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [SCANV] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [SCANR] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [SCANL] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [FILTERTYPE] "%CFGVAL%"
exit /b
:FUSN
set CFGFILE=fusion.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [FILT] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [BRIGHT] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [VSYNCE] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [TIME] "%CFGVAL%"
exit /b
:M2EMU
set CFGFILE=emulator.ini
"%GBC%\fart.exe" "EMULATOR.ini" [BI] 1
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [WIDE] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [TRI] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [TRANS] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [TILE] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [MIP] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [GOUR] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [MAN] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [VTX] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
exit /b
:MAME
set CFGFILE=mame.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [SHD] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [MASK] "%CFGVAL%"
call "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
exit /b
:MEDN
set CFGFILE=mednafen.cfg
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [ASPC] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [SHADR] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [SHADG] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [NOGL] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [INTERP] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [BLUR] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [ACCUMBLUR] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [BLURLVL] "%CFGVAL%"
exit /b
:MESS
set CFGFILE=mess.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [LIGHTGUN] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [RESOLUTION] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [VIDEO] "%CFGVAL%"
if "%CFGNUM%"=="1" for %%a in ("%CFGVAL%") do set HLSLP=%%~a
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [MASK] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [SWITCHRES] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [TRIPLEBUFFER] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [AUDIOLAT] "%CFGVAL%"
call "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
exit /b
:MSBOX
set CFGFILE=dosbox.conf
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZL] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [V-SYNC] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [HERTZ] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [VDRIVER] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [PIXSHD] "%CFGVAL%"
exit /b
:MUPEN
set CFGFILE=mupen.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
exit /b
:NEORAINE
set CFGFILE=raine32_sdl.cfg
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [SHADER] "%CFGVAL%"
exit /b
:NULLDC
set CFGFILE=nulldc.cfg
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [P1PAK1] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [P1PLUGTYPE] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [KBTOG1] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [JOYNUM1] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [INPUTTYPE1] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [P1PAK2] "%CFGVAL%"

if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [P2PAK1] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [P2PLUGTYPE] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [KBTOG2] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [JOYNUM2] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [INPUTTYPE2] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [P2PAK2] "%CFGVAL%"

if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" [PROP] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%CFGFILE%" [FPU] "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "%CFGFILE%" [CABLE] "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "%CFGFILE%" [GPUPLUG] "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "%CFGFILE%" [MULTQ] "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "%CFGFILE%" [MULTC] "%CFGVAL%"
if "%CFGNUM%"=="19" "%GBC%\fart.exe" "%CFGFILE%" [ALPHA] "%CFGVAL%"
if "%CFGNUM%"=="20" "%GBC%\fart.exe" "%CFGFILE%" [PALETTE] "%CFGVAL%"
if "%CFGNUM%"=="21" "%GBC%\fart.exe" "%CFGFILE%" [VOL] "%CFGVAL%"
if "%CFGNUM%"=="22" "%GBC%\fart.exe" "%CFGFILE%" [ZBUF] "%CFGVAL%"
if "%CFGNUM%"=="23" "%GBC%\fart.exe" "%CFGFILE%" [TEX] "%CFGVAL%"
if "%CFGNUM%"=="24" "%GBC%\fart.exe" "%CFGFILE%" [RES] "%CFGVAL%"
if "%CFGNUM%"=="25" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="26" "%GBC%\fart.exe" "%CFGFILE%" [ASPCT] "%CFGVAL%"
if "%CFGNUM%"=="27" "%GBC%\fart.exe" "%CFGFILE%" [LIMIT] "%CFGVAL%"
if "%CFGNUM%"=="28" "%GBC%\fart.exe" "%CFGFILE%" [DSP] "%CFGVAL%"
exit /b
:PCSX2
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "PCSX2_ui.ini" [PS2GFX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "PCSX2_ui.ini" [PS2AUD] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "PCSX2_ui.ini" [PS2DVD] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "PCSX2_ui.ini" [PS2BIOS] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "GSdx.ini" [RENDER] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "GSdx.ini" [INTERL] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "GSdx.ini" [ASPCT] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "GSdx.ini" [NATIVEREZ] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "GSdx.ini" [UPSCALE] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "GSdx.ini" [CSTX] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "GSdx.ini" [CSTY] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "GSdx.ini" [SHDBOOST] "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "GSdx.ini" [SATLVL] "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "GSdx.ini" [BRILVL] "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "GSdx.ini" [CONLVL] "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "GSdx.ini" [EDGEAA] %CFGVAL%"
if "%CFGNUM%"=="19" "%GBC%\fart.exe" "GSdx.ini" [FXAA] "%CFGVAL%"
if "%CFGNUM%"=="20" "%GBC%\fart.exe" "GSdx.ini" [SHADR] "%CFGVAL%"
if "%CFGNUM%"=="21" "%GBC%\fart.exe" "GSdx.ini" [8BITTEX] "%CFGVAL%"
if "%CFGNUM%"=="22" "%GBC%\fart.exe" "GSdx.ini" [HACKTOG] "%CFGVAL%"
if "%CFGNUM%"=="23" "%GBC%\fart.exe" "GSdx.ini" [MSAALVL] "%CFGVAL%"
if "%CFGNUM%"=="24" "%GBC%\fart.exe" "GSdx.ini" [ANISTOG] "%CFGVAL%"
if "%CFGNUM%"=="25" "%GBC%\fart.exe" "GSdx.ini" [ANISLVL] "%CFGVAL%"
if "%CFGNUM%"=="26" "%GBC%\fart.exe" "GSdx.ini" [EXTRATHRD] "%CFGVAL%"
if "%CFGNUM%"=="27" "%GBC%\fart.exe" "PCSX2_vm.ini" [PATCHES] "%CFGVAL%"
if "%CFGNUM%"=="28" "%GBC%\fart.exe" "PCSX2_vm.ini" [CHEAT] "%CFGVAL%"
if "%CFGNUM%"=="29" "%GBC%\fart.exe" "PCSX2_vm.ini" [WIDESCREEN] "%CFGVAL%"
if "%CFGNUM%"=="30" "%GBC%\fart.exe" "PCSX2_vm.ini" [FRAMESK] "%CFGVAL%"
if "%CFGNUM%"=="31" "%GBC%\fart.exe" "PCSX2_vm.ini" [SKPLVL] "%CFGVAL%"
if "%CFGNUM%"=="32" "%GBC%\fart.exe" "PCSX2_vm.ini" [DRWLVL] "%CFGVAL%"
if "%CFGNUM%"=="33" "%GBC%\fart.exe" "PCSX2_vm.ini" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="34" "%GBC%\fart.exe" "PCSX2_vm.ini" [MVSYNC] "%CFGVAL%"
if "%CFGNUM%"=="35" "%GBC%\fart.exe" "PCSX2_vm.ini" [VUTHREAD] "%CFGVAL%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [SPEEDHACKS] 1
"%GBC%\fart.exe" "PCSX2_ui.ini" [GAMEFIXES] 0
"%GBC%\fart.exe" "PCSX2_ui.ini" [PRESETS] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [HOSTFS] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [BACKUP] disabled
exit /b
:PCSXR
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "*.bat" [PAD1TYPE] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "*.bat" [PAD2TYPE] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "*.bat" [GPU] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "*.bat" [WIDE] "%CFGVAL%"
exit /b
:PJ64
set CFGFILE=project64.cfg
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [PPJOY] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [PPJVER] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [PPJVER] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [PAD1TYPE] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [PAD2TYPE] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [PJLIB] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [PJPLUG] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [HIGH1] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [HIGH2] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [HIGH3] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" [LOW1] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%CFGFILE%" [LOW2] "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "%CFGFILE%" [LOW3] "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "%CFGFILE%" [ANIS] "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "%CFGFILE%" [SAMP] "%CFGVAL%"
exit /b
:PJVE
"%GBC%\fart.exe" "config.tmp" [CTRLR] "false"
"%GBC%\fart.exe" "config.tmp" [AA] "true"
"%GBC%\fart.exe" "config.tmp" [BRIGHT] "100"
"%GBC%\fart.exe" "config.tmp" [GAM] ".9"
"%GBC%\fart.exe" "config.tmp" [REZX] "640"
"%GBC%\fart.exe" "config.tmp" [REZY] "800"
"%GBC%\fart.exe" "config.tmp" [WOBBLE] "true"
"%GBC%\fart.exe" "config.tmp" [WOBN] "0.125"
"%GBC%\fart.exe" "config.tmp" [SCREEN] "true"
"%GBC%\fart.exe" "config.tmp" [GLOW] "true"
"%GBC%\fart.exe" "config.tmp" [GLOWP] "3"
"%GBC%\fart.exe" "config.tmp" [LINE] "1.0"
"%GBC%\fart.exe" "config.tmp" [PTS] "2.5"
"%GBC%\fart.exe" "config.tmp" [BUFFER] "false"
"%GBC%\fart.exe" "config.tmp" [FACT] "1.0"
"%GBC%\fart.exe" "config.tmp" [FLICK] "true"
"%GBC%\fart.exe" "config.tmp" [ATT] "true"
"%GBC%\fart.exe" "config.tmp" [ATTN] "6"
"%GBC%\fart.exe" "config.tmp" [BGAIN] "true"
"%GBC%\fart.exe" "config.tmp" [ADD] "true"
"%GBC%\fart.exe" "config.tmp" [PERS] "true"
"%GBC%\fart.exe" "endcfg.tmp" [JOY1] "JOYSTICK"
"%GBC%\fart.exe" "endcfg.tmp" [JOY2] "JOYSTICK"
copy /b config.tmp + endcfg.tmp configuration.xml
exit /b
:PPSSPP
set CFGFILE=ppsspp.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [GFXDRV] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [FAST] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [FASTM] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [ATOM] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [FRAMESK] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [DEPOST] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [LOWLAT] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [ANIS] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [TEXS] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [INTERN] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [BUF] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" [POST] "%CFGVAL%"
exit /b
:PROSYS
set CFGFILE=prosys.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
exit /b
:PSX
set CFGFILE=psx.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [INTERP] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [FRMSKP] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [HERTZ] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" -iC "%CFGFILE%" [ASPCT] "%CFGVAL%"
exit /b
:RTROA
set CFGFILE=retroarch.cfg
set CORCFG=%RATYPE%.cfg
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [INPUTD] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [EMUDLL] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [EMUPTH] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [SHADERPTH] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [CSTEMU] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [SHADERTOGGLE] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [VIDHADER] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [VFILT] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [VIDSHADER] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [REWIND] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [AUDIOSYNC] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [DRIVER] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" [FRAMEDELAY] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%CFGFILE%" [BUFFER] "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "%CFGFILE%" [ASPCT] "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "%CFGFILE%" [SCALE] "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "%CFGFILE%" [HSYNC] "%CFGVAL%"
if "%CFGNUM%"=="19" "%GBC%\fart.exe" "%CFGFILE%" [HSYNCF] "%CFGVAL%"
if "%CFGNUM%"=="20" "%GBC%\fart.exe" "%CFGFILE%" [BFRAMEINS] "%CFGVAL%"
if "%CFGNUM%"=="21" "%GBC%\fart.exe" "%CFGFILE%" [FLICKER] "%CFGVAL%"
if "%CFGNUM%"=="22" "%GBC%\fart.exe" "%CFGFILE%" [FLICKNUM] "%CFGVAL%"
if "%CFGNUM%"=="23" "%GBC%\fart.exe" "%CFGFILE%" [VSWAP] "%CFGVAL%"
if "%CFGNUM%"=="24" "%GBC%\fart.exe" "%CFGFILE%" [THREAD] "%CFGVAL%"
if "%CFGNUM%"=="25" "%GBC%\fart.exe" "%CFGFILE%" [ROT] "%CFGVAL%"
exit /b
:CORES
if "%CFGNUM%"=="26" "%GBC%\fart.exe" "retroarch-core-options.cfg" [CPUCORE] "%CFGVAL%"
if "%CFGNUM%"=="27" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPSPEED] "%CFGVAL%"
if "%CFGNUM%"=="28" "%GBC%\fart.exe" "retroarch-core-options.cfg" [RENDERMODE] "%CFGVAL%"
if "%CFGNUM%"=="29" "%GBC%\fart.exe" "retroarch-core-options.cfg" [AUTOFRAMESKIP] "%CFGVAL%"
if "%CFGNUM%"=="30" "%GBC%\fart.exe" "retroarch-core-options.cfg" [FRMSKPNUM] "%CFGVAL%"
if "%CFGNUM%"=="31" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPINTRES] "%CFGVAL%"
if "%CFGNUM%"=="32" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPEXTRES] "%CFGVAL%"
if "%CFGNUM%"=="33" "%GBC%\fart.exe" "retroarch-core-options.cfg" [FASTMEM] "%CFGVAL%"
if "%CFGNUM%"=="34" "%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] "%CFGVAL%"
if "%CFGNUM%"=="35" "%GBC%\fart.exe" "retroarch-core-options.cfg" [SCALETYPE] "%CFGVAL%"
if "%CFGNUM%"=="36" "%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] "%CFGVAL%"
if "%CFGNUM%"=="37" "%GBC%\fart.exe" "retroarch-core-options.cfg" [GPUTRANS] "%CFGVAL%"
if "%CFGNUM%"=="38" "%GBC%\fart.exe" "retroarch-core-options.cfg" [VERTCACHE] "%CFGVAL%"
if "%CFGNUM%"=="39" "%GBC%\fart.exe" "retroarch-core-options.cfg" [CPUTHREAD] "%CFGVAL%"
if "%CFGNUM%"=="40" "%GBC%\fart.exe" "retroarch-core-options.cfg" [DCREZ] "640x480"
if "%CFGNUM%"=="40" "%GBC%\fart.exe" "retroarch-core-options.cfg" [DCWIDE] "disabled"
if "%CFGNUM%"=="40" "%GBC%\fart.exe" "retroarch-core-options.cfg" [IOTHREAD] "%CFGVAL%"
if "%CFGNUM%"=="41" "%GBC%\fart.exe" "retroarch-core-options.cfg" [UNSAFE] "%CFGVAL%"
if "%CFGNUM%"=="42" "%GBC%\fart.exe" "retroarch-core-options.cfg" [SOUNDHACK] "%CFGVAL%"
if "%CFGNUM%"=="43" "%GBC%\fart.exe" "retroarch-core-options.cfg" [4DORES] "%CFGVAL%"
if "%CFGNUM%"=="44" "%GBC%\fart.exe" "retroarch-core-options.cfg" [JAGBLIT] "%CFGVAL%"
if "%CFGNUM%"=="45" "%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSALIGN] "%CFGVAL%"
if "%CFGNUM%"=="46" "%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSFRMSK] "%CFGVAL%"
if "%CFGNUM%"=="47" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK1] "%CFGVAL%"
if "%CFGNUM%"=="48" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK2] "%CFGVAL%"
if "%CFGNUM%"=="49" "%GBC%\fart.exe" "retroarch-core-options.cfg" [ACCUR] "%CFGVAL%"
if "%CFGNUM%"=="50" "%GBC%\fart.exe" "retroarch-core-options.cfg" [GFXPLUG] "%CFGVAL%"
if "%CFGNUM%"=="51" "%GBC%\fart.exe" "retroarch-core-options.cfg" [SNDPLUG] "%CFGVAL%"
if "%CFGNUM%"=="52" "%GBC%\fart.exe" "retroarch-core-options.cfg" [N64REZ] "%CFGVAL%"
if "%CFGNUM%"=="53" "%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FILT] "%CFGVAL%"
if "%CFGNUM%"=="54" "%GBC%\fart.exe" "retroarch-core-options.cfg" [N64SPEED] "%CFGVAL%"
if "%CFGNUM%"=="55" "%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FRAMER] "%CFGVAL%"
if "%CFGNUM%"=="56" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PCESPRL] "%CFGVAL%"
if "%CFGNUM%"=="57" "%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXPAD] "%CFGVAL%"
if "%CFGNUM%"=="58" "%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] "%CFGVAL%"
if "%CFGNUM%"=="59" "%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXREND] "%CFGVAL%"
if "%CFGNUM%"=="60" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD1] "%CFGVAL%"
if "%CFGNUM%"=="61" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD2] "%CFGVAL%"
if "%CFGNUM%"=="62" "%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOSPRL] "%CFGVAL%"
exit /b
:SIMC
set CFGFILE=simcoupe.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [SCANL] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [SCANLVL] "%CFGVAL%"

exit /b
:SPRM3
set CFGFILE=supermodel.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [ARPOP] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [SPEED] "%CFGVAL%"
if "%CFGNUM%"=="5" for %%a in ("%CFGVAL%") do set INPUTTYPE=%%~a
exit /b
:SSF
set CFGFILE=SSF.ini
if "%CFGNUM%"=="1" "%GBC%\inifile.exe" "%CFGFILE%" [Input] PadType0_0="%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\inifile.exe" "%CFGFILE%" [Input] PadType1_0="%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\inifile.exe" "%CFGFILE%" [Input] Pad0_0_0="%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\inifile.exe" "%CFGFILE%" [Input] Pad0_0_1="%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\inifile.exe" "%CFGFILE%" [Input] Pad0_0_3="%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\inifile.exe" "%CFGFILE%" [Input] Pad1_0_0="%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\inifile.exe" "%CFGFILE%" [Input] Pad1_0_1="%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\inifile.exe" "%CFGFILE%" [Input] Pad1_0_3="%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [WIDESCREEN] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [SCANS] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [ASPECT] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%CFGFILE%" [FIXFS] "%CFGVAL%"
if "%CFGNUM%"=="15" "%GBC%\fart.exe" "%CFGFILE%" [BFLIT] "%CFGVAL%"
if "%CFGNUM%"=="16" "%GBC%\fart.exe" "%CFGFILE%" [STRETCH] "%CFGVAL%"
if "%CFGNUM%"=="17" "%GBC%\fart.exe" "%CFGFILE%" [FSD] "%CFGVAL%"
if "%CFGNUM%"=="18" "%GBC%\fart.exe" "%CFGFILE%" [AREACODE] "%CFGVAL%"
exit /b
:STLA
set CFGFILE=stella.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [TYPE] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [FILTNUM] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
exit /b
:UNZ
set CFGFILE=unz.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [WINDOW] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [HERTZ] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [MAG] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [MEM] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="8" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="9" "%GBC%\fart.exe" "%CFGFILE%" [SPRITEBOOST] "%CFGVAL%"
if "%CFGNUM%"=="10" "%GBC%\fart.exe" "%CFGFILE%" [BRIGHT] "%CFGVAL%"
if "%CFGNUM%"=="11" "%GBC%\fart.exe" "%CFGFILE%" [CLOCK] "%CFGVAL%"
if "%CFGNUM%"=="12" "%GBC%\fart.exe" "%CFGFILE%" [CLOCKFAST] "%CFGVAL%"
if "%CFGNUM%"=="13" "%GBC%\fart.exe" "%CFGFILE%" [X86TYPE] "%CFGVAL%"
if "%CFGNUM%"=="14" "%GBC%\fart.exe" "%CFGFILE%" [PADTYPE] "%CFGVAL%"
exit /b
:VBA
set CFGFILE=vbam.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [BUF] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [FILT] "%CFGVAL%"
if "%CFGNUM%"=="6" "%GBC%\fart.exe" "%CFGFILE%" [PLUG] "%CFGVAL%"
if "%CFGNUM%"=="7" "%GBC%\fart.exe" "%CFGFILE%" [CHT] "%CFGVAL%"
exit /b
:VICE
set CFGFILE=vice.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [HERTZ] "%CFGVAL%"
exit /b
:WINAPE
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
exit /b
:XM6
set CFGFILE=xm6.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [STICK1TYPE] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [STICK1TYPE] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [SCANL] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [STRETCH] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [VSYNC] "%CFGVAL%"
exit /b
:ZSNES
exit /b
:ZXSPIN
set CFGFILE=zxspin.ini
if "%CFGNUM%"=="1" "%GBC%\fart.exe" "%CFGFILE%" [REZX] "%CFGVAL%"
if "%CFGNUM%"=="2" "%GBC%\fart.exe" "%CFGFILE%" [REZY] "%CFGVAL%"
if "%CFGNUM%"=="3" "%GBC%\fart.exe" "%CFGFILE%" [DISPLAY] "%CFGVAL%"
if "%CFGNUM%"=="4" "%GBC%\fart.exe" "%CFGFILE%" [SCAN] "%CFGVAL%"
if "%CFGNUM%"=="5" "%GBC%\fart.exe" "%CFGFILE%" [FRMSK] "%CFGVAL%"
exit /b
