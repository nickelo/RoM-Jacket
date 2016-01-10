if "%PRVST%"=="1" goto :PRESETS
:NOPRESET

if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "config.ini" [GBABIOS] --remove
"%GBC%\fart.exe" "config.ini" [USEBIOS] 0
"%GBC%\fart.exe" "config.ini" [LOCKASPECT] 0
"%GBC%\fart.exe" "config.ini" [FPSTARGET] 0
"%GBC%\fart.exe" "config.ini" [FRMSKPNUM] 0
"%GBC%\fart.exe" "config.ini" [SYNCVID] 0
"%GBC%\fart.exe" "config.ini" [SYNCVID] 0
"%GBC%\fart.exe" "config.ini" [REAMPVID] 0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to enable buffering?" "VSYNC;Triple;Both;OFF"
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR2
if %ERRORLEVEL%==3 goto :SHDR3
if %ERRORLEVEL%==4 goto :SHDR0
goto :QUITOUT

:SHDR1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.ini" [VSYNC] 1
"%GBC%\fart.exe" "config.ini" [BUF] 0
goto :BLIT
:SHDR2
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.ini" [VSYNC] 0
"%GBC%\fart.exe" "config.ini" [BUF] 1
goto :BLIT
:SHDR3
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.ini" [VSYNC] 1
"%GBC%\fart.exe" "config.ini" [BUF] 1
goto :BLIT
:SHDR0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.ini" [VSYNC] 0
"%GBC%\fart.exe" "config.ini" [BUF] 0
goto :BLIT

:BLIT
"%GBC%\wbox.exe" "RJ_GUI" "Select a filter." "Pixelate;Scanlines;HQ3X;Select;OFF" /DB=4
if %ERRORLEVEL%==1 goto :BLITLOW
if %ERRORLEVEL%==2 goto :BLITMID
if %ERRORLEVEL%==3 goto :BLITON
if %ERRORLEVEL%==4 goto :BLITDX
if %ERRORLEVEL%==5 goto :BLITOFF
goto :QUITOUT

:BLITDX
del /q "%GBC%\vbashader.ini"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%VGBA%\plugins\*.rpi"') do echo.%%~a>>"%GBC%\vbashader.ini"
if not exist "%GBC%\vbashader.ini" goto :BLITOFF
"%GBC%\wselect.exe" "%GBC%\vbashader.ini" "Select a shader" "set VBASHAD=$item" > "%GBC%\vbashad.cmd"
if %errorlevel% == 0 goto :BLITOFF
call "%GBC%\vbashad.cmd"
if "%VBASHAD%"=="" goto :BLITOFF
"%GBC%\fart.exe" "config.ini" [FILT] 5
"%GBC%\fart.exe" "config.ini" [PLUG] "%VBASHAD%"
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%VBASHAD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITON
"%GBC%\fart.exe" "config.ini" [FILT] 15
"%GBC%\fart.exe" "config.ini" [PLUG] --remove
echo."15">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITMID
"%GBC%\fart.exe" "config.ini" [FILT] 4
"%GBC%\fart.exe" "config.ini" [PLUG] --remove
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITLOW
"%GBC%\fart.exe" "config.ini" [FILT] 2
"%GBC%\fart.exe" "config.ini" [PLUG] --remove
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITOFF
"%GBC%\fart.exe" "config.ini" [FILT] 0
"%GBC%\fart.exe" "config.ini" [PLUG] --remove
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Turn enable cheating?" "CHEAT;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SCANLOW
if %ERRORLEVEL%==2 goto :SCANMID
goto :QUITOUT

:SCANON
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.ini" [CHT] 1
goto :GAMMA
:SCANOFF
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.ini" [CHT] 0
goto :GAMMA


:GAMMA
:VBACOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1