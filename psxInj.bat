if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" -C "psx.ini" [REZX] "\-1"
"%GBC%\fart.exe" -C "psx.ini" [REZY] "\-1"
"%GBC%\fart.exe" -C "psx.ini" [HERTZ] "\-1"
"%GBC%\fart.exe" "psx.ini" [INTERP] 1
"%GBC%\fart.exe" "psx.ini" [FRMSKP] 0
"%GBC%\fart.exe" "psx.ini" [VSYNC] 0
"%GBC%\fart.exe" -C "psx.ini" [ASPCT] "\-1"
exit /b


:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Enable Bilinear interpolation?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :EINTERP
if %ERRORLEVEL%==2 goto :DINTERP
goto :QUITOUT
:EINTERP
"%GBC%\fart.exe" "psx.ini" [INTERP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRAMSK
:DINTERP
"%GBC%\fart.exe" "psx.ini" [INTERP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRAMSK
:FRAMSK
"%GBC%\wbox.exe" "RJ_GUI" "Enable Frameskipping?" "Disabled;Enabled" /DB=1
if %ERRORLEVEL%==1 goto :NOSKIP
if %ERRORLEVEL%==2 goto :FRMSKIP
goto :QUITOUT
:NOSKIP
"%GBC%\fart.exe" "psx.ini" [FRMSKP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION
:FRMSKIP
"%GBC%\fart.exe" "psx.ini" [FRMSKP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION
:RESOLUTION
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "psx.ini" [REZX] %REZX%
"%GBC%\fart.exe" "psx.ini" [REZY] %REZY%
"%GBC%\Winput.exe" "set HERTZ=$input" "Enter a Freqency in Hz" "%HERTZ%">"%GBC%\hertz.cmd"
if %ERRORLEVEL%==1 goto :SETHZD
call "%GBC%\hertz.cmd"
if "%HERTZ%"=="" SET HERTZ=60
"%GBC%\fart.exe" "psx.ini" [HERTZ] %HERTZ%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ESYNC
if %ERRORLEVEL%==2 goto :NOSYNC
goto :QUITOUT

:ESYNC
"%GBC%\fart.exe" "psx.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPECT
:NOSYNC
"%GBC%\fart.exe" "psx.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPECT

:ASPECT
"%GBC%\wbox.exe" "RJ_GUI" "Select an Aspect Ratio" "None;Auto;4x3;5x4;16x9;16x10" /DB=3
if %ERRORLEVEL%==1 goto :NOCOR
if %ERRORLEVEL%==2 goto :AUTOA
if %ERRORLEVEL%==3 goto :4X3
if %ERRORLEVEL%==4 goto :5X4
if %ERRORLEVEL%==5 goto :16X9
if %ERRORLEVEL%==6 goto :16X10
goto :QUITOUT
:NOCOR
"%GBC%\fart.exe" -C "psx.ini" [ASPCT] "\-1"
echo."\-1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PSXCOMPL
:AUTOA
"%GBC%\fart.exe" "psx.ini" [ASPCT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PSXCOMPL
:4X3
"%GBC%\fart.exe" "psx.ini" [ASPCT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PSXCOMPL
:5X4
"%GBC%\fart.exe" "psx.ini" [ASPCT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PSXCOMPL
:16X9
"%GBC%\fart.exe" "psx.ini" [ASPCT] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PSXCOMPL
:16X10
"%GBC%\fart.exe" "psx.ini" [ASPCT] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PSXCOMPL
:PSXCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1