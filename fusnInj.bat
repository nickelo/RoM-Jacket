if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "Fusion.ini" [BRIGHT] 0
"%GBC%\fart.exe" "Fusion.ini" [SCAN] 0
"%GBC%\fart.exe" "Fusion.ini" [SCN] none
"%GBC%\fart.exe" "Fusion.ini" [FILT] 0
"%GBC%\fart.exe" "Fusion.ini" [VSYNC] 0
"%GBC%\fart.exe" "Fusion.ini" [VSYNCE] 1
"%GBC%\fart.exe" "Fusion.ini" [TIME] 1
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Use Filtering?" "Filter;Off" /DB=1
if %ERRORLEVEL%==1 goto :FULLS
if %ERRORLEVEL%==2 goto :NOINJ
goto :QUITOUT

:FULLS
"%GBC%\fart.exe" "Fusion.ini" [FILT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:NOINJ
"%GBC%\fart.exe" "Fusion.ini" [FILT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to turn on Brightness?" "Brighten;OFF"
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR0
goto :QUITOUT

:SHDR1
"%GBC%\fart.exe" "Fusion.ini" [BRIGHT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SHDR0
"%GBC%\fart.exe" "Fusion.ini" [BRIGHT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Turn on scanlines?" "Low;Medium;High;OFF" /DB=1
if %ERRORLEVEL%==1 goto :SCANLOW
if %ERRORLEVEL%==2 goto :SCANMID
if %ERRORLEVEL%==3 goto :SCANON
if %ERRORLEVEL%==4 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "Fusion.ini" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:SCANMID
"%GBC%\fart.exe" "Fusion.ini" [SCAN] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:SCANLOW
"%GBC%\fart.exe" "Fusion.ini" [SCAN] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:SCANOFF
"%GBC%\fart.exe" "Fusion.ini" [SCAN] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :VSYNCON
if %ERRORLEVEL%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "Fusion.ini" [VSYNC] 0
"%GBC%\fart.exe" "Fusion.ini" [VSYNCE] 1
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TIMING
:VSYNCOFF
"%GBC%\fart.exe" "Fusion.ini" [VSYNC] 1
"%GBC%\fart.exe" "Fusion.ini" [VSYNCE] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TIMING

:TIMING
"%GBC%\wbox.exe" "RJ_GUI" "Use Alternate Timing?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :NORMT
if %ERRORLEVEL%==2 goto :ALTT
goto :QUITOUT

:NORMT
"%GBC%\fart.exe" "Fusion.ini" [TIME] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FUSNCOMP
:ALTT
"%GBC%\fart.exe" "Fusion.ini" [TIME] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FUSNCOMP

:FUSNCOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1