pushd "%GBC%\net\%LNCH%\Other"
set NOSYNC=
set CORETYPE=
set COREVALUE=
set SHADERTYPE=
set SHADERVALUE=
REM if "%RATYPE%" NEQ "" d%RATYPE%.dll
if "%P1JOYTYPE%"=="KB" call "%GBC%\retroArchKb1.bat">>"%GBC%\logs\retroArchKb1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\retroArchkb2.bat">>"%GBC%\logs\retroArchKb2.log"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\retroArchJoy1.bat">>"%GBC%\logs\retroArchJoy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\retroArchJoy2.bat">>"%GBC%\logs\retroArchJoy2.log"
set CFGFILE=retroarch.cfg
call "%GBC%\cfgFileRA.bat">>"%GBC%\logs\cfgFileRA.log"
if "%DEFTOPT%"=="1" call "%GBC%\radefaultopt.bat">>"%GBC%\logs\radefaultopt.log"
if "%DEFTOPT%"=="1" exit /b
if "%PRVST%"=="1" goto :PRESETS

:NOPRESET
if "%ALLCONSOLES%"=="" goto :JOYSETUP
if "%RATYPE%"=="" call :GETRATYPE
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
goto :%SHRTN%
exit /b

:JOYSETUP
set IPTYP=
if "%P1JOYTYPE%"=="JOY" set IPTYP=;xinput
if "%P2JOYTYPE%"=="JOY" set IPTYP=;xinput

"%GBC%\wbox.exe" "RJ_GUI" "Set Input Driver type" "dinput;sdl" /db=1
if %ERRORLEVEL%==1 goto :DINPUT
if %ERRORLEVEL%==2 goto :SDL
goto :DINPUT

:DINPUT
"%GBC%\fart.exe" "retroarch.cfg" [INPUTD] "dinput"
echo."dinput">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SELTYPE

:SDL
"%GBC%\fart.exe" "retroarch.cfg" [INPUTD] "sdl"
echo."sdl">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SELTYPE

:SELTYPE
del /q "%GBC%\shaderlist.ini"
echo -------->"%GBC%\shaderlist.ini"
echo None>>"%GBC%\shaderlist.ini"
echo Select>>"%GBC%\shaderlist.ini"
set SHADERVALUE=%CSTEML%\shaders\crt\crt-interlaced-halation\crt-interlaced-halation.cgp
call :GETSHADERS
del /q "%GBC%\SHADERTYPE.cmd"
"%GBC%\wselect.exe" "%GBC%\shaderlist.ini" "Select a Shader" "set SHADERTYPE=$item" > "%GBC%\shaderlist.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\shaderlist.cmd"
if "%SHADERTYPE%"=="--------" goto :SELTYPE
if "%SHADERTYPE%"=="Select" goto :SHADERBROWSE
if "%SHADERTYPE%"=="None" goto :FILTYPE
if "%SHADERTYPE%"=="" goto :FILTYPE
for %%A in ("%GBE%\%EMUZ%\%RTROA%\%SHADERTYPE%") do set SHADERVALUE=%%~A
for %%a in ("%SHADERTYPE:~1,1%") do if "%%~a" NEQ ":" goto :FILTYPE
for %%a in ("%SHADERTYPE%") do set SHADERVALUE=%%~a
goto :FILTYPE

:SHADERBROWSE
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SHADERTYPE=" "%GBE%\%EMUZ%\%RTROA%\shaders\*.*" "Select a shader" /noquote') do %%a
for %%a in ("%SHADERTYPE%") do set SHADERVALUE=%%~a
goto :FILTYPE

:FILTYPE
del /q "%GBC%\filterlist.ini"
echo None>"%GBC%\filterlist.ini"
echo Select>>"%GBC%\filterlist.ini"
set FILTERVALUE=%CSTEML%\filters\video
call :GETFILTERS
del /q "%GBC%\FILTERTYPE.cmd"
"%GBC%\wselect.exe" "%GBC%\filterlist.ini" "Select a Video-Filter" "set FILTERTYPE=$item" > "%GBC%\filterlist.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\filterlist.cmd"
if "%FILTERTYPE%"=="--------" goto :FILTYPE
if "%FILTERTYPE%"=="Select" goto :FILTERBROWSE
if "%FILTERTYPE%"=="None" goto :WRITEFILTER
if "%FILTERTYPE%"=="" goto :WRITEFILTER
for %%A in ("%GBE%\%EMUZ%\%RTROA%\%FILTERTYPE%") do set FILTERVALUE=%%~A
for %%a in ("%FILTERTYPE:~1,1%") do if "%%~a" NEQ ":" goto :WRITEFILTER
for %%a in ("%FILTERTYPE%") do set FILTERVALUE=%%~a
goto :WRITEFILTER

:GETFILTERS
pushd "%GBE%\%EMUZ%\%RTROA%\filters\video"
for /f "delims=" %%a in ('dir /s/b/a-d "*.filt"') do echo.%%~dpnxa>>"%GBC%\filterlist.ini"
popd
pushd "%GBC%"
if not exist "%GBC%\filterlist.ini" echo.%GBE%\%EMUZ%\%RTROA%\>"%GBC%\filterlist.ini"
"%GBC%\fart.exe" "%GBC%\filterlist.ini" "%GBE%\%EMUZ%\%RTROA%\\" --remove
exit /b

:FILTERBROWSE
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET FILTERTYPE=" "%GBE%\%EMUZ%\%RTROA%\filters\video\*.filt" "Select a filter" /noquote') do %%a
for %%a in ("%FILTERTYPE%") do set FILTERVALUE=%%~a
goto :WRITEFILTER

:WRITEFILTER
pushd "%GBC%\net\%LNCH%\Other"
if "%RATYPE%"=="" call :GETRATYPE
"%GBC%\wbox.exe" "RJ_GUI" "Override the default core?" "Override;Default" /DB=2
if %errorlevel%==1 goto :COREOVERRIDE
if %errorlevel%==2 goto :DEFAULTCORE
goto :QUITOUT

:COREOVERRIDE
call :GETRATYPE

:DEFAULTCORE
if "%ARPOP%"=="64" "%GBC%\fart.exe" "retroarch.cfg" "[ARCH]" "86_64" || "%GBC%\fart.exe" "retroarch.cfg" "[ARCH]" "86"
"%GBC%\fart.exe" "retroarch.cfg" "[EMUDLL]" "cores\%RACORE%"
"%GBC%\fart.exe" "retroarch.cfg" "[EMUPTH]" "%CSTEML%"
"%GBC%\fart.exe" "retroarch.cfg" "[SHADERPTH]" "%CSTEML%\shaders"
"%GBC%\fart.exe" "retroarch.cfg" "[CSTEMU]" "%RTROA%"
if "%SHADERTYPE%"=="" "%GBC%\fart.exe" "retroarch.cfg" "[SHADERTOGGLE]" "false"
"%GBC%\fart.exe" "retroarch.cfg" "[SHADERTOGGLE]" "true"
if "%SHADERTYPE%"=="" "%GBC%\fart.exe" "retroarch.cfg" "[VIDSHADER]" --remove
"%GBC%\fart.exe" "retroarch.cfg" "[VFILT]" "%FILTERVALUE%"
"%GBC%\fart.exe" "retroarch.cfg" "[VIDSHADER]" "%SHADERVALUE%"

echo."cores\%RACORE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%CSTEML%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%CSTEML%\shaders">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%RTROA%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%SHADERTYPE%"=="" echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%SHADERTYPE%" NEQ "" echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%FILTERVALUE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%SHADERVALUE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

"%GBC%\wbox.exe" "RJ_GUI" "Enable Rewind?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EREW
if %ERRORLEVEL%==2 goto :DREW
goto :DREW

:EREW
"%GBC%\fart.exe" "retroarch.cfg" "[REWIND]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIOSYNC

:DREW
"%GBC%\fart.exe" "retroarch.cfg" "[REWIND]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIOSYNC

:AUDIOSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable Audiosync?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :AUDSYNCON
if %ERRORLEVEL%==2 goto :AUDSYNCOFF
goto :QUITOUT

:AUDSYNCON
"%GBC%\fart.exe" "retroarch.cfg" [AUDIOSYNC] true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRIVER

:AUDSYNCOFF
"%GBC%\fart.exe" "retroarch.cfg" [AUDIOSYNC] false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRIVER

:DRIVER
"%GBC%\wbox.exe" "RJ_GUI" "Select a display driver" "OpenGL;Direct3D;SDL" /DB=1
if %ERRORLEVEL%==1 goto :GL 
if %ERRORLEVEL%==2 goto :D3D
if %ERRORLEVEL%==3 goto :SDL
goto :GL

:GL
"%GBC%\fart.exe" "retroarch.cfg" "[DRIVER]" gl
echo."gl">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER

:D3D
"%GBC%\fart.exe" "retroarch.cfg" "[DRIVER]" d3d9
echo."d3d9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER

:SDL
"%GBC%\fart.exe" "retroarch.cfg" "[DRIVER]" sdl
echo."sdl">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BUFFER

:BUFFER
"%GBC%\wbox.exe" "RJ_GUI" "Frame Delay" "0;1;2;3;4" /DB=1
if %errorlevel%==1 goto :FRAME0
if %errorlevel%==2 goto :FRAME1
if %errorlevel%==3 goto :FRAME2
if %errorlevel%==4 goto :FRAME3
if %errorlevel%==5 goto :FRAME4
goto :QUITOUT

:FRAME0
"%GBC%\fart.exe" "retroarch.cfg" "[FRAMEDELAY]" 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEB

:FRAME1
"%GBC%\fart.exe" "retroarch.cfg" "[FRAMEDELAY]" 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEB

:FRAME2
"%GBC%\fart.exe" "retroarch.cfg" "[FRAMEDELAY]" 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEB

:FRAME3
"%GBC%\fart.exe" "retroarch.cfg" "[FRAMEDELAY]" 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEB

:FRAME4
"%GBC%\fart.exe" "retroarch.cfg" "[FRAMEDELAY]" 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEB


:TRIPLEB
"%GBC%\wbox.exe" "RJ_GUI" "Enable triple buffering?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EBUFFER
if %ERRORLEVEL%==2 goto :NBUFFER
goto :NBUFFER

:EBUFFER
"%GBC%\fart.exe" "retroarch.cfg" "[BUFFER]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCTCHK

:NBUFFER
"%GBC%\fart.exe" "retroarch.cfg" "[BUFFER]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCTCHK

:ASPCTCHK
"%GBC%\wbox.exe" "RJ_GUI" "Set the scaling Type" "Integer;Stretch" /DB=1
if %ERRORLEVEL%==1 goto :INTEGER
if %ERRORLEVEL%==2 goto :FULLSCR
goto :INTEGER

:INTEGER
"%GBC%\fart.exe" "retroarch.cfg" "[ASPCT]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCALE

:FULLSCR
"%GBC%\fart.exe" "retroarch.cfg" "[ASPCT]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCALE

:SCALE
"%GBC%\wbox.exe" "RJ_GUI" "Set the scale size" "4x3;16x9;16x10;16x15;8-7 1-1;CORE" /DB=6
if %ERRORLEVEL%==1 goto :4X3
if %ERRORLEVEL%==2 goto :16X9
if %ERRORLEVEL%==3 goto :16X10
if %ERRORLEVEL%==4 goto :16X15
if %ERRORLEVEL%==5 goto :8X7
if %ERRORLEVEL%==6 goto :CORESCALE
goto :CORESCALE

:4x3
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:16x9
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:16x10
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:16x15
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:8X7
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:CORESCALE
"%GBC%\fart.exe" "retroarch.cfg" "[SCALE]" 6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EVSYNC
if %ERRORLEVEL%==2 goto :DVSYNC
goto :DVSYNC

:EVSYNC
"%GBC%\fart.exe" "retroarch.cfg" "[VSYNC]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :HSYNC

:DVSYNC
"%GBC%\fart.exe" "retroarch.cfg" "[VSYNC]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
set NOSYNC=1
goto :HSYNC

:HSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable Hard GPU Sync?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EHSYNC
if %ERRORLEVEL%==2 goto :DHSYNC
goto :DHSYNC

:EHSYNC
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNC]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FHSYNC

:DHSYNC
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNC]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNCF]" 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFRAMEINS

:FHSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Select the frame sync amount" "1-Frame;2-Frames;3-Frames;OFF" /DB=1
if %ERRORLEVEL%==1 goto :H1SYNC
if %ERRORLEVEL%==2 goto :H2SYNC
if %ERRORLEVEL%==3 goto :H3SYNC
if %ERRORLEVEL%==4 goto :NOHSYNC
goto :NOHSYNC
:H1SYNC
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNCF]" 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFRAMEINS
:H2SYNC
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNCF]" 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFRAMEINS
:H3SYNC
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNCF]" 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFRAMEINS
:NOHSYNC
"%GBC%\fart.exe" "retroarch.cfg" "[HSYNCF]" 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFRAMEINS
:BFRAMEINS
"%GBC%\wbox.exe" "RJ_GUI" "Black-frame insertion" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EBFRAME
if %ERRORLEVEL%==2 goto :DBFRAME
goto :DBFRAME
:EBFRAME
"%GBC%\fart.exe" "retroarch.cfg" "[BFRAMEINS]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FLICKER
:DBFRAME
"%GBC%\fart.exe" "retroarch.cfg" "[BFRAMEINS]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FLICKER
:FLICKER
"%GBC%\wbox.exe" "RJ_GUI" "Enable Flickering" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :FLICKON
if %ERRORLEVEL%==2 goto :FLICKOFF
goto :FLICKOFF
:FLICKON
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKER]" true
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FLICKNUM
:FLICKOFF
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKER]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKNUM]" 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSWAP
:FLICKNUM
"%GBC%\wbox.exe" "RJ_GUI" "Flicker-Frame number" "1;2;Off" /DB=3
if %ERRORLEVEL%==1 goto :FLICK1
if %ERRORLEVEL%==2 goto :FLICK2
if %ERRORLEVEL%==3 goto :FLICKOFF
goto :FLICKOFF
:FLICK1
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKNUM]" 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSWAP
:FLICK2
"%GBC%\fart.exe" "retroarch.cfg" "[FLICKNUM]" 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSWAP
:VSWAP
if "%NOSYNC%"=="1" goto :1VSWAP
"%GBC%\wbox.exe" "RJ_GUI" "VSYNC swap interval level" "1;2;3;4" /DB=1
if %ERRORLEVEL%==1 goto :1VSWAP
if %ERRORLEVEL%==2 goto :2VSWAP
if %ERRORLEVEL%==3 goto :3VSWAP
if %ERRORLEVEL%==4 goto :4VSWAP
goto :1VSWAP
:1VSWAP
"%GBC%\fart.exe" "retroarch.cfg" "[VSWAP]" 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREAD
:2VSWAP
"%GBC%\fart.exe" "retroarch.cfg" "[VSWAP]" 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREAD
:3VSWAP
"%GBC%\fart.exe" "retroarch.cfg" "[VSWAP]" 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREAD
:4VSWAP
"%GBC%\fart.exe" "retroarch.cfg" "[VSWAP]" 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREAD
:THREAD
set PROPN=2
if "%ARPOP%"=="64" set PROPN=1
"%GBC%\wbox.exe" "RJ_GUI" "Threaded Driver" "Enable;Disable" /DB=%PROPN%
if %ERRORLEVEL%==1 goto :THREADON
if %ERRORLEVEL%==2 goto :THREADOFF
goto :THREADOFF
:THREADON
"%GBC%\fart.exe" "retroarch.cfg" "[THREAD]" true
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROT
:THREADOFF
"%GBC%\fart.exe" "retroarch.cfg" "[THREAD]" false
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ROT
:ROT
"%GBC%\wbox.exe" "RJ_GUI" "Set the rotation" "None;90;180;270" /DB=1
if %ERRORLEVEL%==1 goto :NOROT
if %ERRORLEVEL%==2 goto :90ROT
if %ERRORLEVEL%==3 goto :180ROT
if %ERRORLEVEL%==4 goto :270ROT
goto :NOROT
:NOROT
"%GBC%\fart.exe" "retroarch.cfg" "[ROT]" 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CORECHK
:90ROT
"%GBC%\fart.exe" "retroarch.cfg" "[ROT]" 90
echo."90">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CORECHK
:180ROT
"%GBC%\fart.exe" "retroarch.cfg" "[ROT]" 180
echo."180">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CORECHK
:270ROT
"%GBC%\fart.exe" "retroarch.cfg" "[ROT]" 270
echo."270">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CORECHK

:CORECHK
call "%GBC%\conCheck.bat">>"%GBC%\logs\conCheck.log"
goto :%SHRTN%
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSALIGN] main_top_ext_bottom
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSFRMSK] none
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK1] memory
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK2] memory
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ACCUR] high
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GFXPLUG] auto
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SNDPLUG] auto
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64REZ] 640x480
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FILT] auto
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64SPEED] 1500
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FRAMER] original
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PCESPRL] true
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXPAD] auto
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] rgb
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXREND] normal
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD1] "3 Button"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD2] "3 Button"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOSPRL] "enabled"
popd
exit /b
:PSP
"%GBC%\wbox.exe" "RJ_GUI" "Select the CPU Core Type" "jit;interpreter" /DB=1
if %errorlevel%==1 goto :JIT
if %errorlevel%==2 goto :INTERP
goto :QUITOUT
:JIT
"%GBC%\fart.exe" "retroarch-core-options.cfg" [CPUCORE] jit
echo."jit">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :CPUSPEED
:INTERP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [CPUCORE] interpreter
echo."interpreter">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :CPUSPEED

:CPUSPEED
"%GBC%\wbox.exe" "RJ_GUI" "Select CPU Speed" "off;222;266;333" /DB=1
if %errorlevel%==1 goto :AUTOSPEED
if %errorlevel%==2 goto :222SPEED
if %errorlevel%==3 goto :266SPEED
if %errorlevel%==4 goto :333SPEED
goto :QUITOUT

:AUTOSPEED
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPSPEED] off
echo."off">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERMODE

:222SPEED
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPSPEED] 222
echo."222">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERMODE

:266SPEED
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPSPEED] 266
echo."266">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERMODE

:333SPEED
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPSPEED] 333
echo."333">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERMODE

:RENDERMODE
"%GBC%\wbox.exe" "RJ_GUI" "Set the render buffering mode" "buffer;off;cpu;gpu" /DB=1
if %errorlevel%==1 goto :BUFFERING
if %errorlevel%==2 goto :NOBUFFER
if %errorlevel%==3 goto :CPUBUFFER
if %errorlevel%==4 goto :GPUBUFFER
goto :QUITOUT

:NOBUFFER
"%GBC%\fart.exe" "retroarch-core-options.cfg" [RENDERMODE] off
echo."off">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FRAMESKIP

:BUFFERING
"%GBC%\fart.exe" "retroarch-core-options.cfg" [RENDERMODE] buffer
echo."buffer">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FRAMESKIP

:CPUBUFFER
"%GBC%\fart.exe" "retroarch-core-options.cfg" [RENDERMODE] read_framebuffers_to_memory_cpu
echo."read_framebuffers_to_memory_cpu">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FRAMESKIP

:GPUBUFFER
"%GBC%\fart.exe" "retroarch-core-options.cfg" [RENDERMODE] read_framebuffers_to_memory_gpu
echo."read_framebuffers_to_memory_gpu">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FRAMESKIP

:FRAMESKIP
"%GBC%\wbox.exe" "RJ_GUI" "Set the frameskip mode" "off;1;2;3" /DB=1
if %errorlevel%==1 goto :NOFRAMESKIP
if %errorlevel%==2 goto :1SKIP
if %errorlevel%==3 goto :2SKIP
if %errorlevel%==4 goto :3SKIP
goto :QUITOUT

:NOFRAMESKIP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [AUTOFRAMESKIP] 0
echo."0">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [FRMSKPNUM] 0
echo."0">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :INTRES

:1SKIP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [AUTOFRAMESKIP] on
echo."on">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [FRMSKPNUM] 1
echo."1">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :INTRES

:2SKIP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [AUTOFRAMESKIP] on
echo."on">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [FRMSKPNUM] 1
echo."1">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :INTRES

:3SKIP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [AUTOFRAMESKIP] on
echo."on">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [FRMSKPNUM] 1
echo."1">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :INTRES

:INTRES
"%GBC%\wbox.exe" "RJ_GUI" "Select the internal resolution" "Native;960x;1440x;1920x;2400x" /DB=1
if %errorlevel%==1 goto :NATIVE
if %errorlevel%==2 goto :960
if %errorlevel%==3 goto :1440
if %errorlevel%==4 goto :1920
if %errorlevel%==5 goto :2400
goto :QUITOUT
:NATIVE
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPINTRES] 480x272
echo."480x272">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :OUTRES
:960
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPINTRES] 960x480
echo."960x480">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :OUTRES
:1440
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPINTRES] 1440x816
echo."1440x816">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :OUTRES
:1920
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPINTRES] 1920x1088
echo."1920x1088">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :OUTRES
:2400
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPINTRES] 2400x1360
echo."2400x1360">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :OUTRES
:OUTRES
"%GBC%\wbox.exe" "RJ_GUI" "Select the output resolution" "Native;960x;1440x;1920x;2400x" /DB=1
if %errorlevel%==1 goto :oNATIVE
if %errorlevel%==2 goto :o960
if %errorlevel%==3 goto :o1440
if %errorlevel%==4 goto :o1920
if %errorlevel%==5 goto :o2400
goto :QUITOUT

:oNATIVE
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPEXTRES] 480x272
echo."480x272">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FASTMEM

:o960
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPEXTRES] 960x480
echo."960x480">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FASTMEM

:o1440
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPEXTRES] 1440x816
echo."1440x816">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FASTMEM

:o1920
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPEXTRES] 1920x1088
echo."1920x1088">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FASTMEM

:o2400
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PSPEXTRES] 2400x1360
echo."2400x1360">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :FASTMEM

:FASTMEM
"%GBC%\wbox.exe" "RJ_GUI" "Enable Fastmemory?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :FASTON
if %errorlevel%==2 goto :FASTOFF
goto :QUITOUT

:FASTON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [FASTMEM] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :TEXSCL

:FASTOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [FASTMEM] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :TEXSCL

:TEXSCL
"%GBC%\wbox.exe" "RJ_GUI" "Set the texture scaling level" "0;1;2;3;4;5" /DB=1
if %errorlevel%==1 goto :NOTEXSCL
if %errorlevel%==2 goto :1XSCL
if %errorlevel%==3 goto :2XSCL
if %errorlevel%==4 goto :3XSCL
if %errorlevel%==5 goto :4XSCL
if %errorlevel%==6 goto :5XSCL
goto :QUITOUT

:NOTEXSCL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] 0
echo."0">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SCLTYP

:1XSCL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] 1
echo."1">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SCLTYP

:2XSCL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] 2
echo."2">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SCLTYP

:3XSCL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] 3
echo."3">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SCLTYP

:4XSCL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] 4
echo."4">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SCLTYP

:5XSCL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [TEXSCALELVL] 5
echo."5">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SCLTYP

:SCLTYP
"%GBC%\wbox.exe" "RJ_GUI" "Set the texture scaling type" "xbrz;hybrid;bicubic;hybrid_bicubic" /DB=1
if %errorlevel%==1 goto :XBRZ
if %errorlevel%==2 goto :HYBRID
if %errorlevel%==3 goto :BICUB
if %errorlevel%==4 goto :HYBRBICUB
goto :QUITOUT

:XBRZ
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SCALETYPE] xbrz
echo."xbrz">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :ANTISC

:HYBRID
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SCALETYPE] hybrid
echo."hybrid">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :ANTISC

:BICUB
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SCALETYPE] bicubic
echo."bicubic">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :ANTISC

:HYBRBICUB
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SCALETYPE] hybrid_bicubic
echo."hybrid_bicubic">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :ANTISC

:ANTISC
"%GBC%\wbox.exe" "RJ_GUI" "Set the antisotropic filtering level" "off;1x;2x;3x;4x;5x" /DB=1
if %errorlevel%==1 goto :NOANTI
if %errorlevel%==2 goto :1x
if %errorlevel%==3 goto :2x
if %errorlevel%==4 goto :3x
if %errorlevel%==5 goto :4x
if %errorlevel%==6 goto :5x
goto :QUITOUT

:NOANTI
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] off
echo."off">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GPUTRANS

:1x
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] 1x
echo."1x">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GPUTRANS

:2x
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] 2x
echo."2x">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GPUTRANS

:3x
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] 3x
echo."3x">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GPUTRANS

:4x
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] 4x
echo."4x">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GPUTRANS

:5x
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ANTISFILT] 5x
echo."5x">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GPUTRANS

:GPUTRANS
"%GBC%\wbox.exe" "RJ_GUI" "Set the GPU transform" "Enabled;Disabled" /DB=2
if %errorlevel%==1 goto :GPUTON
if %errorlevel%==2 goto :GPUTOFF
goto :QUITOUT

:GPUTON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GPUTRANS] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :VERTC
:GPUTOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GPUTRANS] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :VERTC

:VERTC
"%GBC%\wbox.exe" "RJ_GUI" "Set the Vertex Cache" "Enabled;Disabled" /DB=2
if %errorlevel%==1 goto :VERTON
if %errorlevel%==2 goto :VERTOFF
goto :QUITOUT

:VERTON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [VERTCACHE] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :CPUTHREAD

:VERTOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [VERTCACHE] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :CPUTHREAD

:CPUTHREAD
"%GBC%\wbox.exe" "RJ_GUI" "Enable CPU Threading" "Enabled;Disabled" /DB=2
if %errorlevel%==1 goto :CPUTON
if %errorlevel%==2 goto :CPUTOFF
goto :QUITOUT

:CPUTON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [CPUTHREAD] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :IOTHREAD
:CPUTOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [CPUTHREAD] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :IOTHREAD

:IOTHREAD
"%GBC%\wbox.exe" "RJ_GUI" "Enable IO Threading?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :IOTON
if %errorlevel%==2 goto :IOTOFF
goto :QUITOUT
:IOTON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [IOTHREAD] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :UNSAFE
:IOTOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [IOTHREAD] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :UNSAFE
:UNSAFE
"%GBC%\wbox.exe" "RJ_GUI" "Enable Unsafe Function replacements?" "Enabled;Disabled" /DB=2
if %errorlevel%==1 goto :UNSAFEON
if %errorlevel%==2 goto :UNSAFEOFF
goto :QUITOUT

:UNSAFEON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [UNSAFE] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SOUNDHACK

:UNSAFEOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [UNSAFE] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :SOUNDHACK

:SOUNDHACK
"%GBC%\wbox.exe" "RJ_GUI" "Enable sound speedhack?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :SNDHON
if %errorlevel%==2 goto :SNDHOFF
goto :QUITOUT

:SNDHON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SOUNDHACK] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :PSPEND

:SNDHOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SOUNDHACK] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :PSPEND

:PSPEND
popd
exit /b

:P3DO
"%GBC%\wbox.exe" "RJ_GUI" "Enable High Resolution" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :4DOHIRES
if %errorlevel%==2 goto :4DOLOWRES
goto :QUITOUT

:4DOHIRES
"%GBC%\fart.exe" "retroarch-core-options.cfg" [4DORES] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
exit /b

:4DOLOWRES
"%GBC%\fart.exe" "retroarch-core-options.cfg" [4DORES] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
exit /b

:JAG
"%GBC%\wbox.exe" "RJ_GUI" "Use Fast Blitter?" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :JAGBLITON
if %errorlevel%==2 goto :JAGBLITOFF
goto :QUITOUT

:JAGBLITON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [JAGBLIT] enabled
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
exit /b
:JAGBLITOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [JAGBLIT] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
exit /b

popd
exit /b
:MSX
popd
exit /b

:NEOPKT
popd
exit /b

:NEOPKTC
popd
exit /b

:BWS
popd
exit /b

:BWSC
popd
exit /b

:NDS
"%GBC%\wbox.exe" "RJ_GUI" "Select a Layout" "Top-Bottom;Bottom-Top;Left-Right;Right-Left" /DB=1
if %ERRORLEVEL%==1 goto :TOPBOT
if %ERRORLEVEL%==2 goto :BOTTOP
if %ERRORLEVEL%==3 goto :RIGHTL
if %ERRORLEVEL%==4 goto :LEFTR
goto :TOPBOT

:TOPBOT
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSALIGN] main_top_ext_bottom
echo."main_top_ext_bottom">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :NDSFRMSK

:BOTTOP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSALIGN] main_bottom_ext_top
echo."main_bottom_ext_top">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :NDSFRMSK

:RIGHTL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSALIGN] main_left_ext_right
echo."main_left_ext_right">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :NDSFRMSK

:LEFTR
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSALIGN] main_right_ext_left
echo."main_right_ext_left">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :NDSFRMSK

:NDSFRMSK
"%GBC%\wbox.exe" "RJ_GUI" "Enable Frame Skipping?" "None;1Frame;2Frames;3Frames" /DB=1
if %ERRORLEVEL%==1 goto :NDSSKIPN
if %ERRORLEVEL%==2 goto :NDSSKIP1
if %ERRORLEVEL%==3 goto :NDSSKIP2
if %ERRORLEVEL%==4 goto :NDSSKIP3
goto :EOF

:NDSSKIPN
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSFRMSK] none
echo."none">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b

:NDSSKIP1
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSFRMSK] 1
echo."1">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b

:NDSSKIP2
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSFRMSK] 2
echo."2">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b

:NDSSKIP3
"%GBC%\fart.exe" "retroarch-core-options.cfg" [NDSFRMSK] 3
echo."3">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b

:N64
"%GBC%\wbox.exe" "RJ_GUI" "Expansion Pak 1 Type" "Memory;Rumble;Disabled" /DB=1
if %ERRORLEVEL%==1 goto :MEM1
if %ERRORLEVEL%==2 goto :RUM1
if %ERRORLEVEL%==3 goto :NOPAK1
goto :N64EXP2

:MEM1
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK1] memory
echo."memory">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64EXP2

:RUM1
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK1] rumble
echo."rumble">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64EXP2

:NOPAK1
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK1] none
echo."none">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64EXP2

:N64EXP2
"%GBC%\wbox.exe" "RJ_GUI" "Expansion Pak 2 Type" "Memory;Rumble;Disabled" /DB=1
if %ERRORLEVEL%==1 goto :MEM2
if %ERRORLEVEL%==2 goto :RUM2
if %ERRORLEVEL%==3 goto :NOPAK2
goto :N64ACC

:MEM2
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK2] memory
echo."memory">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64ACC

:RUM2
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK2] rumble
echo."rumble">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64ACC

:NOPAK2
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PAK2] none
echo."none">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64ACC

:N64ACC
"%GBC%\wbox.exe" "RJ_GUI" "Graphics Accuracy" "High;Medium;Low" /DB=1
if %ERRORLEVEL%==1 goto :HIGFX
if %ERRORLEVEL%==2 goto :MEDGFX
if %ERRORLEVEL%==3 goto :LOWGFX
goto :N64PLUG

:HIGFX
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ACCUR] high
echo."high">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64PLUG

:MEDFX
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ACCUR] medium
echo."medium">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64PLUG

:LOWGFX
"%GBC%\fart.exe" "retroarch-core-options.cfg" [ACCUR] low
echo."low">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64PLUG

:N64PLUG
"%GBC%\wbox.exe" "RJ_GUI" "Select  a Plugin Type" "Auto;GLN64;Rice;Glide64" /DB=1
if %ERRORLEVEL%==1 goto :autoplug
if %ERRORLEVEL%==2 goto :glnplug
if %ERRORLEVEL%==3 goto :riceplug
if %ERRORLEVEL%==4 goto :glideplug
goto :autoplug

:autoplug
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GFXPLUG] auto
echo."auto">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SNDPLUG

:glnplug
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GFXPLUG] gln64
echo."gln64">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SNDPLUG

:riceplug
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GFXPLUG] rice
echo."rice">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SNDPLUG

:glideplug
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GFXPLUG] glide64
echo."glide64">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SNDPLUG

:N64SNDPLUG
"%GBC%\wbox.exe" "RJ_GUI" "Select a Sound Plugin" "Auto;hle;cxd4" /DB=1
if %ERRORLEVEL%==1 goto :N64SNDA
if %ERRORLEVEL%==2 goto :N64HLE
if %ERRORLEVEL%==3 goto :N64CXD
goto :N64REZ

:N64SNDA
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SNDPLUG] auto
echo."auto">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64REZ

:N64HLE
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SNDPLUG] hle
echo."hle">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64REZ

:N64CXD
"%GBC%\fart.exe" "retroarch-core-options.cfg" [SNDPLUG] cxd4
echo."cxd4">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64REZ

:N64REZ
"%GBC%\wbox.exe" "RJ_GUI" "Select a resolution" "320x240;640x480;1280x960" /DB=2
if %ERRORLEVEL%==1 goto :N64320
if %ERRORLEVEL%==2 goto :N64640
if %ERRORLEVEL%==3 goto :N641280
goto :N64FILT

:N64320
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64REZ] 320x240
echo."320x240">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64FILT

:N64640
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64REZ] 640x480
echo."640x480">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64FILT

:N641280
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64REZ] 1280x960
echo."1280x960">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64FILT

:N64FILT
"%GBC%\wbox.exe" "RJ_GUI" "Select a filter type" "Auto;Bilinear;Nearest" /DB=1
if %ERRORLEVEL%==1 goto :N64FILTA
if %ERRORLEVEL%==2 goto :N64FILTB
if %ERRORLEVEL%==3 goto :N64FILTN
goto :N64FILTA

:N64FILTA
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FILT] auto
echo."auto">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SPEED

:N64FILTB
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FILT] bilinear
echo."bilinear">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SPEED

:N64FILTN
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FILT] nearest
echo."nearest">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64SPEED

:N64SPEED
"%GBC%\wbox.exe" "RJ_GUI" "Select a speed" "1500;2200" /DB=1
if %ERRORLEVEL%==1 goto :N641500
if %ERRORLEVEL%==2 goto :N642200
goto :goto :N641500

:N641500
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64SPEED] 1500
echo."1500">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64FRAME

:N642200
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64SPEED] 2200
echo."2200">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :N64FRAME

:N64FRAME
"%GBC%\wbox.exe" "RJ_GUI" "Query?" "Original;Fullspeed" /DB=1
if %ERRORLEVEL%==1 goto :N64DEFF
if %ERRORLEVEL%==2 goto :N64FULL
goto :N64DEFF

:N64DEFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FRAMER] original
echo."original">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b

:N64FULL
"%GBC%\fart.exe" "retroarch-core-options.cfg" [N64FRAMER] fullspeed
echo."fullspeed">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b
:NGB
popd
exit /b
:NGBC
popd
exit /b
:NGBA
popd
exit /b
:TG16
:PCENG
:SGFX
:TGCD
:PCECD
"%GBC%\wbox.exe" "RJ_GUI" "Disable the sprite limit?" "Disable;Enable" /DB=2
if %ERRORLEVEL%==1 goto :PCESPRD
if %ERRORLEVEL%==2 goto :PCESPRE
goto :EOF
:PCESPRD
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PCESPRL] false
echo."false">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b
:PCESPRE
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PCESPRL] true
echo."true">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b
:SEG1K
:SEGAMD
:SEGMS
:SEGG
:SEGAG
"%GBC%\wbox.exe" "RJ_GUI" "Select Pad Type" "Auto;3-Button;6-Button" /db=1
if %ERRORLEVEL%==1 goto :GENP
if %ERRORLEVEL%==2 goto :GEN3
if %ERRORLEVEL%==3 goto :GEN6 
goto :EOF
:GENP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXPAD] auto
echo."auto">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GENXFILT
:GEN3
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXPAD] 3-button
echo."3-button">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GENXFILT
:GEN6
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXPAD] 6-button
echo."6-button">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :GENXFILT
:GENXFILT
"%GBC%\wbox.exe" "RJ_GUI" "Enable Filtering?" "disabled;monochrome;composite;svideo;rgb" /DB=5
if %ERRORLEVEL%==1 goto :NOFILT
if %ERRORLEVEL%==2 goto :MONO
if %ERRORLEVEL%==3 goto :COMP
if %ERRORLEVEL%==4 goto :SVID
if %ERRORLEVEL%==5 goto :RGB
goto :EOF
:NOFILT
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] disabled
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERTYPE
:MONO
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] monochrome
echo."monochrome">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERTYPE
:COMP
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] composite
echo."composite">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERTYPE
:SVID
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] svideo
echo."svideo">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERTYPE
:RGB
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXFILT] rgb
echo."rgb">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :RENDERTYPE
:RENDERTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Render Type" "Normal;Double" /DB=1
if %ERRORLEVEL%==1 goto :NORMR
if %ERRORLEVEL%==2 goto :DOUBLR
goto :EOF
:NORMR
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXREND] normal
echo."normal">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b
:DOUBLR
"%GBC%\fart.exe" "retroarch-core-options.cfg" [GENXREND] double
echo."double">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b

:SEGDC
"%GBC%\wbox.exe" "RJ_GUI" "Select a resolution for reicast" "640x480;Select" /DB=1
if %errorlevel%==1 goto :RCSTDEF
if %errorlevel%==2 goto :SELRCREZ
goto :QUITOUT

:RCSTDEF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [DCREZ] 640x480
goto :DCWIDE
	
:SELRCREZ
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [DCREZ] "%REZX%x%REZY%"
goto :DCWIDE

:DCWIDE
"%GBC%\wbox.exe" "RJ_GUI" "Enable widescreen for reicast" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :DCWIDEON
if %errorlevel%==2 goto :DCWIDEOFF
goto :DCWIDEOFF

:DCWIDEON
"%GBC%\fart.exe" "retroarch-core-options.cfg" [DCWIDE] true
goto :SEGCD
:DCWIDEOFF
"%GBC%\fart.exe" "retroarch-core-options.cfg" [DCWIDE] false
goto :SEGCD

:SEGCD
:SEGAP
:SG32X
"%GBC%\wbox.exe" "RJ_GUI" "Select a pad type" "3Button;6Button" /DB=2
if %ERRORLEVEL%==1 goto :PICO3
if %ERRORLEVEL%==2 goto :PICO6
goto :PICO6
:PICO6
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD1] "6 Button"
echo."6 Button">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD2] "6 Button"
echo."6 Button">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :PICOSPR
:PICO3
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD1] "3 Button"
echo."3 Button">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOPAD2] "3 Button"
echo."3 Button">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
goto :PICOSPR
:PICOSPR
"%GBC%\wbox.exe" "RJ_GUI" "Disable Sprite-limiting?" "Disable;Enable" /DB=2
if %ERRORLEVEL%==1 goto :PICOSPRD
if %ERRORLEVEL%==2 goto :PICOSPRE
goto :EOF
:PICOSPRD
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOSPRL] "disabled"
echo."disabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b
:PICOSPRE
"%GBC%\fart.exe" "retroarch-core-options.cfg" [PICOSPRL] "enabled"
echo."enabled">>"%GBC%\%CEMU%_%RATYPE%_%CSTCONS%.ini"
popd
exit /b
:PS1
popd
exit /b


:GETRATYPE
del /q "%GBC%\corelist.ini"
echo -------->"%GBC%\corelist.ini"
echo Select>>"%GBC%\corelist.ini"
echo Default>>"%GBC%\corelist.ini"
pushd "%GBE%\%EMUZ%\%RTROA%\cores"
for /f "delims=" %%a in ('dir /s/b/a-d "*.dll"') do (
echo.%%~a>>"%GBC%\corelist.ini"
)
popd
pushd "%GBC%"
if not exist "%GBC%\corelist.ini" echo.%GBE%\%EMUZ%\%RTROA%\>"%GBC%\corelist.ini"
"%GBC%\fart.exe" "%GBC%\corelist.ini" "%GBE%\%EMUZ%\%RTROA%\cores\\" --remove
popd
set COREOVERIDE=
"%GBC%\wselect.exe" "%GBC%\corelist.ini" "Override the libretro core" "set RACORE=$item" > "%GBC%\coresel.cmd"
if %errorlevel% == 0 goto :DEFCORE
call "%GBC%\coresel.cmd"
set COREOVERIDE=1

:DEFCORE
if "%RACORE%"=="--------" goto :GETRATYPE
if "%RACORE%"=="Select" goto :COREBROWSE
if "%RACORE%"=="Default" set RACORE=%RATYPE%.dll
REM if "%RACORE%"=="" set RACORE=nxengine_libretro.dll
exit /b

:COREBROWSE
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CORETYPE=" "%GBE%\%EMUZ%\%RTROA%\cores\*.dll" "Select a core" /noquote') do %%a
for %%a in ("%CORETYPE%") do set COREVALUE=%%~na
for /f "delims=" %%a in ("%CORETYPE%") do set RACORE=%%~nxa
for /f "delims=" %%a in ("%CORETYPE%") do set COREVALUE=%%~na
for /f "delims=" %%a in ("%CORETYPE%") do set RATYPE=%%~na
if "%CORETYPE%"=="" set CORETYPE=
exit /b

:GETSHADERS
pushd "%GBE%\%EMUZ%\%RTROA%\shaders"
for /f "delims=" %%a in ('dir /s/b/a-d "*.cgp" "*.cg" "*.filter" "*.shader"') do echo.%%~dpnxa>>"%GBC%\shaderlist.ini"
popd
if not exist "%GBE%\%EMUZ%\%FSUAE%" goto :NRCHK
pushd "%GBE%\%EMUZ%\%FSUAE%\share\%FSUAE%\shaders"
for /f "delims=" %%a in ('dir /s/b/a-d "*.shader"') do echo.%%~dpnxa>>"%GBC%\shaderlist.ini"
popd
:NRCHK
if not exist "%GBE%\%EMUZ%\%NEORAINE%" goto :SHDCOMP
pushd "%GBE%\%EMUZ%\%NEORAINE%\shaders"
for /f "delims=" %%a in ('dir /s/b/a-d "*.shader"') do echo.%%~dpnxa>>"%GBC%\shaderlist.ini"
popd
:SHDCOMP
pushd "%GBC%"
if not exist "%GBC%\shaderlist.ini" echo.%GBE%\%EMUZ%\%RTROA%\>"%GBC%\shaderlist.ini"
"%GBC%\fart.exe" "%GBC%\shaderlist.ini" "%GBE%\%EMUZ%\%RTROA%\\" --remove
