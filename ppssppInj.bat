if "%DREZY%"=="600" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] False
if "%DREZX%"=="800" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] False
if "%DREZX%"=="1024" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] False
if "%DREZX%"=="1366" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] True
if "%DREZY%"=="960" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] True
if "%DREZY%"=="1080" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] True
if "%DREZY%"=="720" "%GBC%\fart.exe" "ppsspp.ini" [STRETCH] True
if "%P1JOYTYPE%"=="KB" call "%GBC%\ppssppKB1.bat">>"%GBC%\logs\ppssppKB1.log"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\ppssppJoy1.bat">>"%GBC%\logs\ppssppJoy1.log"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "ppsspp.ini" [GFXDRV] False
"%GBC%\fart.exe" "ppsspp.ini" [FAST] False
"%GBC%\fart.exe" "ppsspp.ini" [FASTA] True
"%GBC%\fart.exe" "ppsspp.ini" [ATOM] False
"%GBC%\fart.exe" "ppsspp.ini" [BUF] 1
"%GBC%\fart.exe" "ppsspp.ini" [FRAMESK] 0
"%GBC%\fart.exe" "ppsspp.ini" [ANIS] 0
"%GBC%\fart.exe" "ppsspp.ini" [TEXS] 0
"%GBC%\fart.exe" "ppsspp.ini" [DEPOST] 0
"%GBC%\fart.exe" "ppsspp.ini" [INTERN] 0
"%GBC%\fart.exe" "ppsspp.ini" [LOWLAT] 0
"%GBC%\fart.exe" "ppsspp.ini" [POST] Off
exit /b
:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:GFXDRV
"%GBC%\wbox.exe" "RJ_GUI" "GPU Backend" "DirectX;OpenGL" /DB=1
if %errorlevel%==1 goto :OPENGL
if %errorlevel%==2 goto :DIRECTD
goto :QUITOUT

:OPENGL
"%GBC%\fart.exe" "ppsspp.ini" [GFXDRV] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEMORY
:DIRECTD
"%GBC%\fart.exe" "ppsspp.ini" [GFXDRV] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEMORY
:MEMORY
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to enable Fast Memory?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :MEM1
if %ERRORLEVEL%==2 goto :MEM2
goto :QUITOUT

:MEM1
"%GBC%\fart.exe" "ppsspp.ini" [FAST] True
"%GBC%\fart.exe" "ppsspp.ini" [FASTM] True
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT
:MEM2
"%GBC%\fart.exe" "ppsspp.ini" [FAST] False
"%GBC%\fart.exe" "ppsspp.ini" [FASTM] False
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:BLIT
"%GBC%\wbox.exe" "RJ_GUI" "Enable Atomic Audio Locks?." "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :BLITLOW
if %ERRORLEVEL%==2 goto :BLITOFF
goto :QUITOUT

:BLITLOW
"%GBC%\fart.exe" "ppsspp.ini" [ATOM] True
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITOFF
"%GBC%\fart.exe" "ppsspp.ini" [ATOM] False
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Frameskipping?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SCANLOW
if %ERRORLEVEL%==2 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "ppsspp.ini" [FRAMESK] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TILE
:SCANOFF
"%GBC%\fart.exe" "ppsspp.ini" [FRAMESK] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TILE

:TILE
"%GBC%\wbox.exe" "RJ_GUI" "Enable texture deposterizing?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :MIPON
if %ERRORLEVEL%==2 goto :MIPOFF
goto :QUITOUT

:MIPON
"%GBC%\fart.exe" "ppsspp.ini" [DEPOST] True
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GOUR
:MIPOFF
"%GBC%\fart.exe" "ppsspp.ini" [DEPOST] False
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GOUR

:GOUR
"%GBC%\wbox.exe" "RJ_GUI" "Audio Latency Level" "None;Mid;High" /DB=2
if %ERRORLEVEL%==1 goto :GOURON
if %ERRORLEVEL%==2 goto :GOURMID
if %ERRORLEVEL%==3 goto :GOUROFF
goto :QUITOUT

:GOURON
"%GBC%\fart.exe" "ppsspp.ini" [LOWLAT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:GOURMID
"%GBC%\fart.exe" "ppsspp.ini" [LOWLAT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:GOUROFF
"%GBC%\fart.exe" "ppsspp.ini" [LOWLAT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS

:ANIS
"%GBC%\wbox.exe" "RJ_GUI" "Set Anistropy Level" "Low;Medium;High;Awesome;OFF" /DB=5
if %ERRORLEVEL%==1 goto :ANISLVL1
if %ERRORLEVEL%==2 goto :ANISLVL2
if %ERRORLEVEL%==3 goto :ANISLVL3
if %ERRORLEVEL%==4 goto :ANISLVL4
if %ERRORLEVEL%==5 goto :ANISOFF
goto :QUITOUT

:ANISLVL1
"%GBC%\fart.exe" "ppsspp.ini" [ANIS] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:ANISLVL2
"%GBC%\fart.exe" "ppsspp.ini" [ANIS] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:ANISLVL3
"%GBC%\fart.exe" "ppsspp.ini" [ANIS] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:ANISLVL4
"%GBC%\fart.exe" "ppsspp.ini" [ANIS] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:ANISOFF
"%GBC%\fart.exe" "ppsspp.ini" [ANIS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT

:MANT
"%GBC%\wbox.exe" "RJ_GUI" "Enable Texture Scaling?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :MANON
if %ERRORLEVEL%==2 goto :MANOFF
goto :QUITOUT

:MANON
"%GBC%\fart.exe" "ppsspp.ini" [TEXS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VTX
:MANOFF
"%GBC%\fart.exe" "ppsspp.ini" [TEXS] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VTX

:VTX
"%GBC%\wbox.exe" "RJ_GUI" "Internal Resolution" "1x;Native" /DB=2
if %ERRORLEVEL%==1 goto :VTXON
if %ERRORLEVEL%==2 goto :VTXOFF
goto :QUITOUT

:VTXON
"%GBC%\fart.exe" "ppsspp.ini" [INTERN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUF
:VTXOFF
"%GBC%\fart.exe" "ppsspp.ini" [INTERN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUF

:BUF
"%GBC%\wbox.exe" "RJ_GUI" "Buffering Type" "Buffer;CPU;GPU;OFF" /DB=1
if %ERRORLEVEL%==1 goto :BUFON
if %ERRORLEVEL%==2 goto :BUFCPU
if %ERRORLEVEL%==3 goto :BUFGPU
if %ERRORLEVEL%==4 goto :BUFFOFF
goto :QUITOUT

:BUFON
"%GBC%\fart.exe" "ppsspp.ini" [BUF] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:BUFCPU
"%GBC%\fart.exe" "ppsspp.ini" [BUF] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:BUFGPU
"%GBC%\fart.exe" "ppsspp.ini" [BUF] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:BUFFOFF
"%GBC%\fart.exe" "ppsspp.ini" [BUF] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSync" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :VSYNCON
if %errorlevel%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "ppsspp.ini" [VSYNC] True
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:VSYNCOFF
"%GBC%\fart.exe" "ppsspp.ini" [VSYNC] False
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Enable Shader?" "Select;OFF" /DB=2
if %ERRORLEVEL%==1 goto :VON
if %ERRORLEVEL%==2 goto :VOFF
goto :QUITOUT

:VON
del /q "%GBC%\ppssppshad.ini"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PSSP%\assets\shaders\*.fsh"') do echo.%%~na>>"%GBC%\ppssppshad.ini"
"%GBC%\wselect.exe" "%GBC%\ppssppshad.ini" "Select a shader" "set PPSSPPSHAD=$item" > "%GBC%\ppsspp.cmd"
if %errorlevel% == 0 goto :VOFF
call "%GBC%\ppsspp.cmd"
if "%PPSSPPSHAD%"=="" goto :VOFF
if "%PPSSPPSHAD%"=="fxaa" set POST=1
if "%PPSSPPSHAD%"=="crt" set POST=2
if "%PPSSPPSHAD%"=="natural" set POST=3
if "%PPSSPPSHAD%"=="vignette" set POST=4
if "%PPSSPPSHAD%"=="grayscale" set POST=5
if "%PPSSPPSHAD%"=="bloom" set POST=6
if "%PPSSPPSHAD%"=="sharpen" set POST=7
if "%PPSSPPSHAD%"=="inversecolors" set POST=8
if "%PPSSPPSHAD%"=="scanlines" set POST=9
if "%PPSSPPSHAD%"=="cartoon" set POST=10
if "%PPSSPPSHAD%"=="4xhqglsl" set POST=11
if "%PPSSPPSHAD%"=="aacolor" set POST=12
if "%PPSSPPSHAD%"=="upscale_spline36" set POST=13
"%GBC%\fart.exe" "ppsspp.ini" [POST] %POST%
echo."%POST%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :M2EMUCOMP
:VOFF
"%GBC%\fart.exe" "ppsspp.ini" [POST] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :M2EMUCOMP


:M2EMUCOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1