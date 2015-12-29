"%GBC%\fart.exe" "stella.ini" [EMUL] "%GBE%\%EMUZ%\%STLA%"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "stella.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "stella.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "stella.ini" [TYPE] soft
"%GBC%\fart.exe" "stella.ini" [FILTNUM] 0
"%GBC%\fart.exe" "stella.ini" [SCAN] 0
"%GBC%\fart.exe" "stella.ini" [VSYNC] false
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "stella.ini" [REZX] %REZX%
"%GBC%\fart.exe" "stella.ini" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:VIDEOTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a video driver" "OpenGL;Soft" /DB=1
if %ERRORLEVEL%==1 goto :OPENGL
if %ERRORLEVEL%==2 goto :SOFT
goto :QUITOUT
:OPENGL
"%GBC%\fart.exe" "stella.ini" [TYPE] gl
echo."gl">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC
:SOFT
"%GBC%\fart.exe" "stella.ini" [TYPE] soft
"%GBC%\fart.exe" "stella.ini" [FILTNUM] 0
"%GBC%\fart.exe" "stella.ini" [SCAN] 0
echo."soft">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL
:SYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SYNCON
if %ERRORLEVEL%==2 goto :SYNCOFF
goto :QUITOUT
:SYNCON
"%GBC%\fart.exe" "stella.ini" [VSYNC] true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTER
:SYNCOFF
"%GBC%\fart.exe" "stella.ini" [VSYNC] false
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
"%GBC%\fart.exe" "stella.ini" [FILTNUM] 0
"%GBC%\fart.exe" "stella.ini" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL
:SVIDEO
"%GBC%\fart.exe" "stella.ini" [FILTNUM] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCANL
:RGBV
"%GBC%\fart.exe" "stella.ini" [FILTNUM] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCANL
:BADADJ
"%GBC%\fart.exe" "stella.ini" [FILTNUM] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
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
"%GBC%\fart.exe" "stella.ini" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL
:LITSCAN
"%GBC%\fart.exe" "stella.ini" [SCAN] 20
echo."20">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL
:MEDSCAN
"%GBC%\fart.exe" "stella.ini" [SCAN] 35
echo."35">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL
:LOTSCAN
"%GBC%\fart.exe" "stella.ini" [SCAN] 70
echo."70">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL
:FULLSCAN
"%GBC%\fart.exe" "stella.ini" [SCAN] 100
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STLACOMPL

:STLACOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1