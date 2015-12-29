set OGINI=gfx_opengl.ini
set DXINI=gfx_dx11.ini
:JOYSELECT
call "%GBC%\dolphinjoy.bat">>"%GBC%\logs\dolphinjoy.log"
if "%CANCELLED%"=="1" goto :CANCELLED
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
set GFXINI=%OGINI%
"%GBC%\fart.exe" "%DOLPH%.ini" [REZX] "%DREZX%"
"%GBC%\fart.exe" "%DOLPH%.ini" [REZY] "%DREZY%"
"%GBC%\fart.exe" "%DOLPH%.ini" [BACKEND] "OGL"
"%GBC%\fart.exe" "%DOLPH%.ini" [AUDIO] DSound
"%GBC%\fart.exe" "%GFXINI%" [PROGSCN] 0
"%GBC%\fart.exe" "%GFXINI%" [VSYNC] False
"%GBC%\fart.exe" "%GFXINI%" [ASPCT] 0
"%GBC%\fart.exe" "%GFXINI%" [WIDE] False
"%GBC%\fart.exe" "%GFXINI%" [USEXFB] False
"%GBC%\fart.exe" "%GFXINI%" [REALXFB] False
"%GBC%\fart.exe" "%GFXINI%" [PPXL] False
"%GBC%\fart.exe" "%GFXINI%" [PPDPTH] 
"%GBC%\fart.exe" "%GFXINI%" [AALVL] 0
"%GBC%\fart.exe" "%GFXINI%" [EFBS] 2
"%GBC%\fart.exe" "%GFXINI%" [ALPHAP] False
"%GBC%\fart.exe" "%GFXINI%" [NOFOG] False
"%GBC%\fart.exe" "%GFXINI%" [OPENCL] 
"%GBC%\fart.exe" "%GFXINI%" [OMPD] False
"%GBC%\fart.exe" "%GFXINI%" [FORCEF] False
"%GBC%\fart.exe" "%GFXINI%" [ANIS] 0
"%GBC%\fart.exe" "%GFXINI%" [SHADR] --remove
"%GBC%\fart.exe" "%GFXINI%" [EFBA] True
"%GBC%\fart.exe" "%GFXINI%" [DLIST] False
"%GBC%\fart.exe" "%GFXINI%" [EFBC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBT] True
"%GBC%\fart.exe" "%GFXINI%" [EFBSC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBCC] False
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "%DOLPH%.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "%DOLPH%.ini" [REZY] "%REZY%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:BACKEND
"%GBC%\wbox.exe" "RJ_GUI" "Select a video Driver" "OGL;DX" /DB=2
if %ERRORLEVEL%==1 goto :OGL
if %ERRORLEVEL%==2 goto :DX
goto :QUITOUT

:DX
set GFXINI=%DXINI%
"%GBC%\fart.exe" "%DOLPH%.ini" [BACKEND] "D3D"
echo."D3D">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO
:OGL
set GFXINI=%OGINI%
"%GBC%\fart.exe" "%DOLPH%.ini" [BACKEND] "OGL"
echo."OGL">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:AUDIO
"%GBC%\wbox.exe" "RJ_GUI" "Select an audio backend" "DSound;XAudio2;OpenAL" /DB=1
if %errorlevel%==1 goto :DSOUND
if %errorlevel%==2 goto :XAUDIO
if %errorlevel%==3 goto :OPENAL
goto :QUITOUT

:DSOUND
"%GBC%\fart.exe" "%DOLPH%.ini" [AUDIO] DSound
echo."DSound">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PROG
:XAUDIO
"%GBC%\fart.exe" "%DOLPH%.ini" [AUDIO] XAudio2
echo."XAudio2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PROG
:OPENAL
"%GBC%\fart.exe" "%DOLPH%.ini" [AUDIO] OpenAL	
echo."OpenAL">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PROG

:PROG
"%GBC%\wbox.exe" "RJ_GUI" "Enable Progressive Scan?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :PROGON
if %ERRORLEVEL%==2 goto :PROGOFF
goto :QUITOUT

:PROGON
"%GBC%\fart.exe" "%GFXINI%" [PROGSCN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:PROGOFF
"%GBC%\fart.exe" "%GFXINI%" [PROGSCN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :VSYNCON
if %ERRORLEVEL%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "%GFXINI%" [VSYNC] True
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIDE

:VSYNCOFF
"%GBC%\fart.exe" "%GFXINI%" [VSYNC] False
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:WIDE
"%GBC%\wbox.exe" "RJ_GUI" "Enable widescreen hack?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :WIDEON
if %ERRORLEVEL%==2 goto :WIDEOFF
goto :QUITOUT

:WIDEON
"%GBC%\fart.exe" "%GFXINI%" [WIDE] True
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT

:WIDEOFF
"%GBC%\fart.exe" "%GFXINI%" [WIDE] False
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:ASPCT
"%GBC%\wbox.exe" "RJ_GUI" "Select an aspect ratio" "Auto;16x9;4x3;Stretch" /DB=1
if %ERRORLEVEL%==1 goto :ASPCTON
if %ERRORLEVEL%==2 goto :ASPCTWID
if %ERRORLEVEL%==3 goto :ASPCTSTD
if %ERRORLEVEL%==4 goto :ASPCTSTR
goto :QUITOUT

:ASPCTON
"%GBC%\fart.exe" "%GFXINI%" [ASPCT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:ASPCTWID
"%GBC%\fart.exe" "%GFXINI%" [ASPCT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:ASPCTSTD
"%GBC%\fart.exe" "%GFXINI%" [ASPCT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:ASPCTSTR
"%GBC%\fart.exe" "%GFXINI%" [ASPCT] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"


:SHADER
del /q "%GBC%\dolph.ini"
if "%BACKEND%"=="D3D" goto :SHDR0
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%DOLPH%\Sys\Shaders\*.glsl"') do echo.%%~na>>"%GBC%\dolph.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable a shader?" "Select;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR0
goto :QUITOUT

:SHDR1
"%GBC%\wselect.exe" "%GBC%\dolph.ini" "Select a Shader" "set SHADRB=$item" > "%GBC%\shader.cmd"
if %errorlevel% == 0 goto :SHDR0
call "%GBC%\shader.cmd"
if "%SHADRB%"=="" goto :SHDR0

"%GBC%\fart.exe" "%GFXINI%" [SHADR] "%SHADRB%"
echo."%SHADRB%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:SHDR0
"%GBC%\fart.exe" "%GFXINI%" [SHADR] --remove
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
"%GBC%\wbox.exe" "RJ_GUI" "DOLPHIN PRESETS^Select a preset" "Fast;Medium;Pretty"
if %ERRORLEVEL%==1 goto :OGLOW
if %ERRORLEVEL%==2 goto :OGMID
if %ERRORLEVEL%==3 goto :OGHI
goto :QUITOUT


:OGLOW
"%GBC%\fart.exe" "%GFXINI%" [USEXFB] False
"%GBC%\fart.exe" "%GFXINI%" [REALXFB] False
"%GBC%\fart.exe" "%GFXINI%" [PPXL] False
"%GBC%\fart.exe" "%GFXINI%" [PPDPTH] "False"
"%GBC%\fart.exe" "%GFXINI%" [AALVL] 0
"%GBC%\fart.exe" "%GFXINI%" [EFBS] 2
"%GBC%\fart.exe" "%GFXINI%" [ALPHAP] False
"%GBC%\fart.exe" "%GFXINI%" [NOFOG] False
"%GBC%\fart.exe" "%GFXINI%" [OPENCL] False
"%GBC%\fart.exe" "%GFXINI%" [OMPD] False
"%GBC%\fart.exe" "%GFXINI%" [FORCEF] False
"%GBC%\fart.exe" "%GFXINI%" [ANIS] 0
"%GBC%\fart.exe" "%GFXINI%" [EFBA] True
"%GBC%\fart.exe" "%GFXINI%" [DLIST] False
"%GBC%\fart.exe" "%GFXINI%" [EFBC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBT] True
"%GBC%\fart.exe" "%GFXINI%" [EFBSC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBCC] False

echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DOLPHCOMP

:OGMID
"%GBC%\fart.exe" "%GFXINI%" [USEXFB] False
"%GBC%\fart.exe" "%GFXINI%" [REALXFB] False
"%GBC%\fart.exe" "%GFXINI%" [PPXL] False
"%GBC%\fart.exe" "%GFXINI%" [PPDPTH] False
"%GBC%\fart.exe" "%GFXINI%" [AALVL] 0
"%GBC%\fart.exe" "%GFXINI%" [EFBS] 2
"%GBC%\fart.exe" "%GFXINI%" [ALPHAP] False
"%GBC%\fart.exe" "%GFXINI%" [NOFOG] False
"%GBC%\fart.exe" "%GFXINI%" [OPENCL] False
"%GBC%\fart.exe" "%GFXINI%" [OMPD] False
"%GBC%\fart.exe" "%GFXINI%" [FORCEF] False
"%GBC%\fart.exe" "%GFXINI%" [ANIS] 0
"%GBC%\fart.exe" "%GFXINI%" [EFBA] True
"%GBC%\fart.exe" "%GFXINI%" [DLIST] False
"%GBC%\fart.exe" "%GFXINI%" [EFBC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBT] True
"%GBC%\fart.exe" "%GFXINI%" [EFBSC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBCC] False

echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DOLPHCOMP

:OGHI
"%GBC%\fart.exe" "%GFXINI%" [USEXFB] False
"%GBC%\fart.exe" "%GFXINI%" [REALXFB] False
"%GBC%\fart.exe" "%GFXINI%" [PPXL] True
"%GBC%\fart.exe" "%GFXINI%" [PPDPTH] True
"%GBC%\fart.exe" "%GFXINI%" [AALVL] 8
"%GBC%\fart.exe" "%GFXINI%" [EFBS] 7
"%GBC%\fart.exe" "%GFXINI%" [ALPHAP] False
"%GBC%\fart.exe" "%GFXINI%" [NOFOG] False
"%GBC%\fart.exe" "%GFXINI%" [OPENCL] False
"%GBC%\fart.exe" "%GFXINI%" [OMPD] True
"%GBC%\fart.exe" "%GFXINI%" [FORCEF] True
"%GBC%\fart.exe" "%GFXINI%" [ANIS] 4
"%GBC%\fart.exe" "%GFXINI%" [EFBA] True
"%GBC%\fart.exe" "%GFXINI%" [DLIST] False
"%GBC%\fart.exe" "%GFXINI%" [EFBC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBT] False
"%GBC%\fart.exe" "%GFXINI%" [EFBSC] True
"%GBC%\fart.exe" "%GFXINI%" [EFBCC] True

echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."7">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."False">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."True">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DOLPHCOMP

:DOLPHCOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1