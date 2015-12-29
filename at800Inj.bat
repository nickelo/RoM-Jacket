if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "atari800.cfg" [FILTNUM] 0
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 0
"%GBC%\fart.exe" "atari800.cfg" [TYPE] 0
"%GBC%\fart.exe" "atari800.cfg" [VSYNC] false

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "atari800.cfg" [REZX] %REZX%
"%GBC%\fart.exe" "atari800.cfg" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:VIDEOTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a video driver" "OpenGL;Soft" /DB=1
if %ERRORLEVEL%==1 goto :OPENGL
if %ERRORLEVEL%==2 goto :SOFT
goto :QUITOUT
:OPENGL
"%GBC%\fart.exe" "atari800.cfg" [TYPE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC
:SOFT
"%GBC%\fart.exe" "atari800.cfg" [TYPE] 0
"%GBC%\fart.exe" "atari800.cfg" [FILTNUM] 0
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :QUITOUT
:SYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SYNCON
if %ERRORLEVEL%==2 goto :SYNCOFF
goto :QUITOUT
:SYNCON
"%GBC%\fart.exe" "atari800.cfg" [VSYNC] true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTER
:SYNCOFF
"%GBC%\fart.exe" "atari800.cfg" [VSYNC] false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTER
:FILTER
"%GBC%\wbox.exe" "RJ_GUI" "Select a filter type." "None;S-Video;RGB;Bad-Adjust" /DB=1
if %ERRORLEVEL%==1 goto :NOFILTER
if %ERRORLEVEL%==2 goto :SVIDEO
if %ERRORLEVEL%==3 goto :RGBV
if %ERRORLEVEL%==4 goto :BADADJ
goto :QUITOUT

:NOFILTER
"%GBC%\fart.exe" "atari800.cfg" [FILT] 0
"%GBC%\fart.exe" "atari800.cfg" [FILTNUM] 0
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AT800COMPL
:SVIDEO
"%GBC%\fart.exe" "atari800.cfg" [FILT] 1
"%GBC%\fart.exe" "atari800.cfg" [FILTNUM] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCANL
:RGBV
"%GBC%\fart.exe" "atari800.cfg" [FILT] 1
"%GBC%\fart.exe" "atari800.cfg" [FILTNUM] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCANL
:BADADJ
"%GBC%\fart.exe" "atari800.cfg" [FILT] 1
"%GBC%\fart.exe" "atari800.cfg" [FILTNUM] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCANL
:SCANL
"%GBC%\wbox.exe" "RJ_GUI" "Set the scanline level" "OFF;Little;Medium;High;FULL" /DB=1
if %ERRORLEVEL%==1 goto :NOSCAN
if %ERRORLEVEL%==2 goto :LITSCAN
if %ERRORLEVEL%==3 goto :MEDSCAN
if %ERRORLEVEL%==4 goto :LOTSCAN
if %ERRORLEVEL%==4 goto :FULLSCAN
goto :QUITOUT
:NOSCAN
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AT800COMPL
:LITSCAN
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AT800COMPL
:MEDSCAN
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 25
echo."25">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AT800COMPL
:LOTSCAN
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 70
echo."70">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AT800COMPL
:FULLSCAN
"%GBC%\fart.exe" "atari800.cfg" [SCAN] 100
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AT800COMPL

:AT800COMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1