if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "Altirra.ini" [STRETCH] 1	
"%GBC%\fart.exe" "Altirra.ini" [DX11] 0
"%GBC%\fart.exe" "Altirra.ini" [AT8Y] %REZY%
"%GBC%\fart.exe" "Altirra.ini" [AT8X] %REZX%
"%GBC%\fart.exe" "Altirra.ini" [OGL] 0
"%GBC%\fart.exe" "Altirra.ini" [ARTIF] 0
"%GBC%\fart.exe" "Altirra.ini" [SCAN] 0
"%GBC%\fart.exe" "Altirra.ini" [SYNC] 0
"%GBC%\fart.exe" "Altirra.ini" [BLEND] 0
"%GBC%\fart.exe" "Altirra.ini" [FILT] 4
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "Altirra.ini" [AT8X] %REZX%
"%GBC%\fart.exe" "Altirra.ini" [AT8Y] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%WINVER%"=="XP" goto :DXOFF
if "%WINVER%"=="VISTA" goto :DXOFF

"%GBC%\wbox.exe" "RJ_GUI" "Use DX11?" "On;Off" /DB=2
if %ERRORLEVEL%==1 goto :DXON
if %ERRORLEVEL%==2 goto :DXOFF
goto :QUITOUT

:DXOFF
"%GBC%\fart.exe" "Altirra.ini" [DX11] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :OGL

:DXON
"%GBC%\fart.exe" "Altirra.ini" [DX11] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :OGL

:OGL
"%GBC%\wbox.exe" "RJ_GUI" "Use OpenGL?" "On;Off" /DB=2
if %ERRORLEVEL%==1 goto :OGLON
if %ERRORLEVEL%==2 goto :OGLOFF
goto :QUITOUT

:OGLOFF
"%GBC%\fart.exe" "Altirra.ini" [OGL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILT

:OGLON
"%GBC%\fart.exe" "Altirra.ini" [OGL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILT

:FILT
"%GBC%\wbox.exe" "RJ_GUI" "Use Filtering?" "Point;Bilinear;Sharp;Bicubic;Any" /DB=5
if %ERRORLEVEL%==1 goto :POINT
if %ERRORLEVEL%==2 goto :BILIN
if %ERRORLEVEL%==3 goto :SHRP
if %ERRORLEVEL%==4 goto :BICU
if %ERRORLEVEL%==5 goto :NOINJ
goto :QUITOUT

:POINT
"%GBC%\fart.exe" "Altirra.ini" [FILT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER
:BILIN
"%GBC%\fart.exe" "Altirra.ini" [FILT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER
:SHRP
"%GBC%\fart.exe" "Altirra.ini" [FILT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER
:BICU
"%GBC%\fart.exe" "Altirra.ini" [FILT] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER
:NOINJ
"%GBC%\fart.exe" "Altirra.ini" [FILT] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Stretching^^Fit: Fit the image to the screen size^Aspect: The aspect ratio is kept to the screen size^Ratio-X: The original resolution to the nearest multiplier of the screens resolution limit^Square: Square pixels are maintained to the screen's resolution limits^Square-X: Square pixels are maintained in the original resolution to the nearest multiplier of the screens resolution limit" "Fit;Aspect;Ratio-X;Square;Square-X;Off" /DB=2 /AL
if %ERRORLEVEL%==1 goto :FIT
if %ERRORLEVEL%==2 goto :ASPCT
if %ERRORLEVEL%==3 goto :RATIOX
if %ERRORLEVEL%==4 goto :SQUARE
if %ERRORLEVEL%==5 goto :SQUAREX
goto :QUITOUT

:FIT
"%GBC%\fart.exe" "Altirra.ini" [STRETCH] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:ASPCT
"%GBC%\fart.exe" "Altirra.ini" [STRETCH] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:RATIOX
"%GBC%\fart.exe" "Altirra.ini" [STRETCH] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:SQUARE
"%GBC%\fart.exe" "Altirra.ini" [STRETCH] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:SQUAREX
"%GBC%\fart.exe" "Altirra.ini" [STRETCH] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Turn on scanlines?" "On;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SCANON
if %ERRORLEVEL%==2 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "Altirra.ini" [SCAN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLND
:SCANOFF
"%GBC%\fart.exe" "Altirra.ini" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLND

:BLND
"%GBC%\wbox.exe" "RJ_GUI" "Enable frameblending?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :FRMON
if %ERRORLEVEL%==2 goto :FRMOFF
goto :QUITOUT

:FRMON
"%GBC%\fart.exe" "Altirra.ini" [BLEND] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:FRMOFF
"%GBC%\fart.exe" "Altirra.ini" [BLEND] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :VSYNCON
if %ERRORLEVEL%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "Altirra.ini" [SYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TIMING
:VSYNCOFF
"%GBC%\fart.exe" "Altirra.ini" [SYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TIMING

:TIMING
"%GBC%\wbox.exe" "RJ_GUI" "Use Artifacting?" "None;NTSC;NTSC+;PAL;PAL+" /DB=1
if %ERRORLEVEL%==1 goto :ALTT
if %ERRORLEVEL%==2 goto :NORMT
if %ERRORLEVEL%==3 goto :NORM2
if %ERRORLEVEL%==4 goto :PAL
if %ERRORLEVEL%==5 goto :PAL2
goto :QUITOUT

:NORMT
"%GBC%\fart.exe" "Altirra.ini" [ARTIF] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALTRACOMP

:NORM2
"%GBC%\fart.exe" "Altirra.ini" [ARTIF] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALTRACOMP

:PAL
"%GBC%\fart.exe" "Altirra.ini" [ARTIF] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALTRACOMP

:PAL2
"%GBC%\fart.exe" "Altirra.ini" [ARTIF] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALTRACOMP
:ALTT
"%GBC%\fart.exe" "Altirra.ini" [ARTIF] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALTRACOMP

:ALTRACOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1