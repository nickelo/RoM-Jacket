if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "bgb.ini" [SHADER] blocky
"%GBC%\fart.exe" "bgb.ini" [GPU] auto
"%GBC%\fart.exe" "bgb.ini" [TRIPLEBUFFER] 0
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 0
"%GBC%\fart.exe" "bgb.ini" [STRETCH] 0
"%GBC%\fart.exe" "bgb.ini" [FSTYPE] 0
"%GBC%\fart.exe" "bgb.ini" [REZX] 640
"%GBC%\fart.exe" "bgb.ini" [REZY] 480
"%GBC%\fart.exe" "bgb.ini" [HERTZ] 60
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat"
"%GBC%\fart.exe" "bgb.ini" [REZX] %REZX%
"%GBC%\fart.exe" "bgb.ini" [REZY] %REZY%
"%GBC%\fart.exe" "bgb.ini" [HERTZ] %HERTZ%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:SHADER
echo.blocky>"%GBC%\bgbfilt.ini"
echo.scanlines50>>"%GBC%\bgbfilt.ini"
echo.scanlines100>>"%GBC%\bgbfilt.ini"
echo.blurry>>"%GBC%\bgbfilt.ini"
echo.scale2x>>"%GBC%\bgbfilt.ini"
echo.hq2x>>"%GBC%\bgbfilt.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Use a filter?" "None;Select" /DB=1
if %ERRORLEVEL%==1 goto :NOFILT
if %ERRORLEVEL%==2 goto :SELFILT
goto :QUITOUT

:NOFILT
"%GBC%\fart.exe" "bgb.ini" [SHADER] off
echo."off">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU

:SELFILT
"%GBC%\Wselect.exe" "%GBC%\bgbfilt.ini" "Select a filter" "set BGBFILT=$item" > "%GBC%\bgbfilt.cmd"
if %errorlevel%==0 goto :QUITOUT
CALL "%GBC%\bgbfilt.cmd"
"%GBC%\fart.exe" "bgb.ini" [SHADER] "%BGBFILT%"
echo."%BGBFILT%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU

:GPU
"%GBC%\wbox.exe" "RJ_GUI" "Select a Video Driver" "auto;DirectDraw;Direct3d;OpenGL;GDI" /DB=1
if %ERRORLEVEL%==1 goto :VAUTO
if %ERRORLEVEL%==2 goto :DDRAW
if %ERRORLEVEL%==3 goto :D3D
if %ERRORLEVEL%==4 goto :OGL
if %ERRORLEVEL%==5 goto :GDI
goto :QUITOUT

:VAUTO
"%GBC%\fart.exe" "bgb.ini" [GPU] "auto"
echo."auto">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSTYPE
:DDRAW
"%GBC%\fart.exe" "bgb.ini" [GPU] "DirectDraw"
echo."DirectDraw">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSTYPE
:D3D
"%GBC%\fart.exe" "bgb.ini" [GPU] "Direct3D"
echo."Direct3D">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSTYPE
:OGL
"%GBC%\fart.exe" "bgb.ini" [GPU] "OpenGL"
echo."OpenGL">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSTYPE
:GDI
"%GBC%\fart.exe" "bgb.ini" [GPU] "GDI"
echo."GDI">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSTYPE

:FSTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a Fullscreen Type" "Scale;Stretch" /DB=1
if %ERRORLEVEL%==1 goto :STAND
if %ERRORLEVEL%==2 goto :FULLSTRETCH
goto :QUITOUT

:STAND
"%GBC%\fart.exe" "bgb.ini" [FSTYPE] "1"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STRETCH

:FULLSTRETCH
"%GBC%\fart.exe" "bgb.ini" [FSTYPE] "0"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STRETCH

:STRETCH
"%GBC%\wbox.exe" "RJ_GUI" "Select a stretch type" "Blocky;Blurry" /DB=1
if %ERRORLEVEL%==1 goto :BLOCK
if %ERRORLEVEL%==2 goto :BLUR
goto :QUITOUT

:BLOCK
"%GBC%\fart.exe" "bgb.ini" [STRETCH] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:BLUR
"%GBC%\fart.exe" "bgb.ini" [STRETCH] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Select Vsync Type" "auto;1-1;1-2;1-3;timed;off;60fps" /DB=1
if %ERRORLEVEL%==1 goto :VON
if %ERRORLEVEL%==2 goto :V1
if %ERRORLEVEL%==3 goto :V2
if %ERRORLEVEL%==4 goto :V3
if %ERRORLEVEL%==5 goto :VT
if %ERRORLEVEL%==6 goto :VOFF
if %ERRORLEVEL%==7 goto :V6
goto :QUITOUT

:VON
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER
:V1
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER
:V2
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER
:V3
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER
:VT
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER

:VOFF
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER
:V6
"%GBC%\fart.exe" "bgb.ini" [VSYNC] 6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER

:BUFFER
"%GBC%\wbox.exe" "RJ_GUI" "Enable triple buffering?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :VBUFON
if %ERRORLEVEL%==2 goto :VBUFOFF
goto :QUITOUT

:VBUFON
"%GBC%\fart.exe" "bgb.ini" [TRIPLEBUFFER] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BGBCOMPL
:VBUFOFF
"%GBC%\fart.exe" "bgb.ini" [TRIPLEBUFFER] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BGBCOMPL
:BGBCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1