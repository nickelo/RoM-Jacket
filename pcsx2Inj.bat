for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\lilypad*.dll"') do set PS2PAD=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\lilypad-r*.dll"') do set PS2PAD=%%~a
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "GSdx.ini" [RENDER] 0
"%GBC%\fart.exe" "GSdx.ini" [INTERL] 7
"%GBC%\fart.exe" "GSdx.ini" [ASPCT] 0
"%GBC%\fart.exe" "GSdx.ini" [UPSCALE] 1
"%GBC%\fart.exe" "GSdx.ini" [8BITTEX] 0
"%GBC%\fart.exe" "GSdx.ini" [EDGEAA] 0
"%GBC%\fart.exe" "GSdx.ini" [NATIVEREZ] 1
"%GBC%\fart.exe" "GSdx.ini" [CSTX] 1024
"%GBC%\fart.exe" "GSdx.ini" [CSTY] 1024
"%GBC%\fart.exe" "GSdx.ini" [EXTRATHRD] 0
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 0
"%GBC%\fart.exe" "GSdx.ini" [SHDBOOST] 0
"%GBC%\fart.exe" "GSdx.ini" [SATLVL] 50
"%GBC%\fart.exe" "GSdx.ini" [BRILVL] 50
"%GBC%\fart.exe" "GSdx.ini" [CONLVL] 50
"%GBC%\fart.exe" "GSdx.ini" [FXAA] 0
"%GBC%\fart.exe" "GSdx.ini" [SHADR] 0
"%GBC%\fart.exe" "GSdx.ini" [HACKTOG] 0
"%GBC%\fart.exe" "GSdx.ini" [MSAALVL] 0
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 0
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2GFX] "%PS2GFX%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%PS2PAD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2AUD] "%PS2AUD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2DVD] "%PS2DVD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2BIOS] "%PS2BIOS%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [SPEEDHACKS] 1
"%GBC%\fart.exe" "PCSX2_ui.ini" [GAMEFIXES] 0
"%GBC%\fart.exe" "PCSX2_ui.ini" [PRESETS] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [HOSTFS] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [PATCHES] enabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [CHEAT] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [BACKUP] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [WIDESCREEN] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [FRAMESK] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [VSYNC] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [MVSYNC] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [VUTHREAD] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [DRWLVL] 2
"%GBC%\fart.exe" "PCSX2_vm.ini" [SKPLVL] 2
call "%GBC%\pcsx2Joy.bat">>"%GBC%\logs\pcsxJ2oy.log"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
call "%GBC%\pcsx2Joy.bat">>"%GBC%\logs\pcsxJ2oy.log"
exit /b

:QUERY
del /q "%GBC%\pcsx2gfx.ini"
del /q "%GBC%\pcsx2snd.ini"
del /q "%GBC%\pcsx2pad.ini"
del /q "%GBC%\pcsx2dvd.ini"
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
pushd %GBE%\%EMUZ%\%PCSX2%\plugins"
del /q "%GBC%\instrset.ini"
for /f "tokens=1,* delims=:" %%a in ('"%GBC%\CHKCPU32.exe" /v') do if "%%~a"==" Instr set extensions" echo."%%~b">>"%GBC%\instrset.ini"
"%GBC%\fart.exe" "%GBC%\instrset.ini" "\"" --remove
for /f "tokens=1,2,3,4,5,6,7,8,9 delims=, " %%a in ('type "%GBC%\instrset.ini"') do set CPUINST=%%~a%%~b%%~c%%~d%%~e%%~f%%~g%%~h%%~i
set AVXP=
set S4SS=
set S3SS=
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="SE4A" SET SINST="GSdx*AVX*.dll"
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="E4.2" SET SINST="GSdx*SSE4*.dll"
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="E4.1" SET SINST="GSdx*SSE4*.dll"
for %%a in ("%CPUINST:~-4%") do if "%%~a"=="SSE3" SET SINST="GSdx*SSSE3*.dll"
for /f "delims="  %%a in ('dir /b/a-d "GSdx*SSE2*.dll" %SINST% "ZeroGS*.dll" "GSnull*" "ZZOgl*.dll"') do echo.%%~a>>"%GBC%\pcsx2gfx.ini"
"%GBC%\wselect.exe" "%GBC%\pcsx2gfx.ini" "Select a GFX Plugin" "set GFXPLUG=$item" > "%GBC%\gfxplug.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\gfxplug.cmd"
popd
if "%GFXPLUG%"=="" goto :DEFAULTGPU
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2GFX] "%GFXPLUG%"
echo."%GFXPLUG%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
for %%a in ("%GFXPLUG:~0,4%") do if /i "%%~a"=="gsdx" set GFXOPT=1
goto :SOUNDPLUG
:DEFAULTGPU
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2GFX] "%PS2GFX%"
echo."%PS2GFX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
set GFXOPT=1
:SOUNDPLUG
pushd %GBE%\%EMUZ%\%PCSX2%\plugins"
for /f "delims="  %%a in ('dir /b/a-d "spu2P*.dll" "SPU2*.dll" "ZeroSPU2*.dll"') do echo.%%~a>>"%GBC%\pcsx2snd.ini"
"%GBC%\wselect.exe" "%GBC%\pcsx2snd.ini" "Select a Sound Plugin" "set SNDPLUG=$item" > "%GBC%\sndplug.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\sndplug.cmd"
popd
if "%SNDPLUG%"=="" goto :DEFAULTSPU
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2AUD] "%SNDPLUG%"
echo."%SNDPLUG%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PADPLUG
:DEFAULTSPU
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2AUD] "%PS2AUD%"
echo."%PS2AUDIO%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:PADPLUG
if "%P1JOYTYPE%"=="KB" goto :DEFAULTPAD
if "%P2JOYTYPE%"=="KB" goto :DEFAULTPAD
pushd %GBE%\%EMUZ%\%PCSX2%\plugins"
for /f "delims="  %%a in ('dir /b/a-d "xpad*.dll" "padpokopom.dll" "LilyPad*.dll"') do echo.%%~a>>"%GBC%\pcsx2pad.ini"
"%GBC%\wselect.exe" "%GBC%\pcsx2pad.ini" "Select a Joystick Plugin" "set PADPLUG=$item" > "%GBC%\padplug.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\padplug.cmd"
popd
if "%PADPLUG%"=="" goto :DEFAULTPAD
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%PADPLUG%"
echo."%PADPLUG%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if /I "%PADPLUG%"=="padpokopom.dll" goto :DVDPLUG
for %%a in ("%PADPLUG:~0,7%") do if /i "%%~a" NEQ "lilypad" goto :DVDPLUG
call "%GBC%\pcsx2Joy.bat">>"%GBC%\logs\pcsx2Joy.log"
goto :DVDPLUG
:DEFAULTPAD
set PADPLUG=LilyPad.dll
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%PADPLUG%"
call "%GBC%\pcsx2Joy.bat">>"%GBC%\logs\pcsx2Joy.log"
:DVDPLUG
pushd %GBE%\%EMUZ%\%PCSX2%\plugins"
for /f "delims="  %%a in ('dir /b/a-d "cdvd*.dll"') do echo.%%~a>>"%GBC%\pcsx2dvd.ini"
"%GBC%\wselect.exe" "%GBC%\pcsx2dvd.ini" "Select a DVD Plugin" "set DVDPLUG=$item" > "%GBC%\dvdplug.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\dvdplug.cmd"
popd
if "%DVDPLUG%"=="" goto :DEFAULTDVD
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2DVD] "%DVDPLUG%"
echo."%DVDPLUG%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BIOSEL
:DEFAULTDVD
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2DVD] "%PS2DVD%"
echo."%PS2DVD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:BIOSEL
set BIOSCOUNT=
for /f "delims="  %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\bios\*.bin"') do (
set /a BIOSCOUNT+=1
set BIOSPLUG=%%~a
echo.%%~a>>"%GBC%\pcsx2bios.ini"
)
if "%BIOSCOUNT%"=="1" set PS2BIOS=%BIOSPLUG%
if "%BIOSCOUNT%"=="1" goto :DEFAULTBIOS
"%GBC%\wselect.exe" "%GBC%\pcsx2bios.ini" "Select a BIOS Plugin" "set BIOSPLUG=$item" > "%GBC%\biosplug.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\biosplug.cmd"
if "%BIOSPLUG%"=="" goto :DEFAULTBIOS
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2BIOS] "%BIOSPLUG%"
echo."%BIOSPLUG%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GFXOPT
:DEFAULTBIOS
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2BIOS] "%PS2BIOS%"
echo."%PS2BIOS%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:GFXOPT
if "%GFXOPT%" NEQ "1" goto :PCSX2COMPL
:DXVERS
echo Direct3D9 (Hardware)>"%GBC%\dxvers.ini"
echo Direct3D9 (Software)>>"%GBC%\dxvers.ini"
echo Direct3D9 (Null)>>"%GBC%\dxvers.ini"
echo Direct3D10 (Hardware)>>"%GBC%\dxvers.ini"
echo Direct3D10 (Software)>>"%GBC%\dxvers.ini"
echo Direct3D10 (Null)>>"%GBC%\dxvers.ini"
echo Direct3D11 (Hardware)>>"%GBC%\dxvers.ini"
echo Direct3D11 (Software)>>"%GBC%\dxvers.ini"
echo Direct3D11 (Null)>>"%GBC%\dxvers.ini"
echo Null (Software)>>"%GBC%\dxvers.ini"
echo Null (Null)>>"%GBC%\dxvers.ini"
echo OpenGL (Hardware)>>"%GBC%\dxvers.ini"
echo OpenGL (Software)>>"%GBC%\dxvers.ini"
"%GBC%\wselect.exe" "%GBC%\dxvers.ini" "Select a Plugin" "set GSDXV=$item" > "%GBC%\gsdxv.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\gsdxv.cmd"
if "%GSDXV%"=="" set GSDXN=0
if "%GSDXV%"=="Direct3D9 (Hardware)" SET GSDXN=0
if "%GSDXV%"=="Direct3D9 (Software)" SET GSDXN=1
if "%GSDXV%"=="Direct3D9 (Null)" SET GSDXN=2
if "%GSDXV%"=="Direct3D10 (Hardware)" SET GSDXN=3
if "%GSDXV%"=="Direct3D10 (Software)" SET GSDXN=4
if "%GSDXV%"=="Direct3D10 (Null)" SET GSDXN=5
if "%GSDXV%"=="Direct3D11 (Hardware)" SET GSDXN=6
if "%GSDXV%"=="Direct3D11 (Software)" SET GSDXN=7
if "%GSDXV%"=="Direct3D11 (Null)" SET GSDXN=8
if "%GSDXV%"=="Null (Software)" SET GSDXN=10
if "%GSDXV%"=="Null (Null)" SET GSDXN=11
if "%GSDXV%"=="OpenGL (Hardware)" SET GSDXN=12
if "%GSDXV%"=="OpenGL (Software)" SET GSDXN=13
"%GBC%\fart.exe" "GSdx.ini" [RENDER] %GSDXN%
echo."%GSDXN%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:INTERL
echo Auto>"%GBC%\interl.ini"
echo None>>"%GBC%\interl.ini"
echo Weave tff (saw-tooth)>>"%GBC%\interl.ini"
echo Weave bff (saw-tooth)>>"%GBC%\interl.ini"
echo Bob tff (use blend if shaking)>>"%GBC%\interl.ini"
echo Bob bff (use blend if shaking)>>"%GBC%\interl.ini"
echo Blend tff (slight blur, 1/2 fps)>>"%GBC%\interl.ini"
echo Blend bff (slight blur, 1/2 fps)>>"%GBC%\interl.ini"
"%GBC%\wselect.exe" "%GBC%\interl.ini" "Select interlacing" "set INTERL=$item" > "%GBC%\interl.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\interl.cmd"
if "%INTERL%"=="" SET INTERLN=7
if "%INTERL%"=="Auto" SET INTERLN=7
if "%INTERL%"=="None" SET INTERLN=0
if "%INTERL%"=="Weave tff (saw-tooth)" SET INTERLN=1
if "%INTERL%"=="Weave bff (saw-tooth)" SET INTERLN=2
if "%INTERL%"=="Bob tff (use blend if shaking)" SET INTERLN=3
if "%INTERL%"=="Bob bff (use blend if shaking)" SET INTERLN=4
if "%INTERL%"=="Blend tff (slight blur, 1/2 fps)" SET INTERLN=5
if "%INTERL%"=="Blend bff (slight blur, 1/2 fps)" SET INTERLN=6
"%GBC%\fart.exe" "GSdx.ini" [INTERL] "%INTERLN%"
echo."%INTERLN%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:ASPECT
"%GBC%\wbox.exe" "RJ_GUI" "Select an aspect ratio" "4x3;16x9;Stretch" /DB=1
if %ERRORLEVEL%==1 goto :STAND
if %ERRORLEVEL%==2 goto :WIDE
if %ERRORLEVEL%==3 goto :STRETCH
goto :QUITOUT
:STAND
"%GBC%\fart.exe" "GSdx.ini" [ASPCT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION
:WIDE
"%GBC%\fart.exe" "GSdx.ini" [ASPCT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION
:STRETCH
"%GBC%\fart.exe" "GSdx.ini" [ASPCT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION

:RESOLUTION
"%GBC%\wbox.exe" "RJ_GUI" "Select an internal resolution" "Native;Custom;2x;3x;4x;5x;6x" /DB=1
if %ERRORLEVEL%==1 goto :NATIVERES
if %ERRORLEVEL%==2 goto :CUSTOMRES
if %ERRORLEVEL%==3 goto :2XRES
if %ERRORLEVEL%==4 goto :3XRES
if %ERRORLEVEL%==5 goto :4XRES
if %ERRORLEVEL%==6 goto :5XRES
if %ERRORLEVEL%==7 goto :6XRES
goto :QUITOUT

:NATIVERES
"%GBC%\fart.exe" "GSdx.ini" [NATIVEREZ] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [UPSCALE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [CSTX] 1024
echo."1024">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [CSTY] 1024
echo."1024">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHDBOOST
:CUSTOMRES
"%GBC%\fart.exe" "GSdx.ini" [NATIVEREZ] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [UPSCALE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\Winput.exe" "set CSTX=$input" "Enter resolution X" "1024">"%GBC%\cstx.cmd"
if %ERRORLEVEL%==1 goto :NATIVERES
call "%GBC%\cstx.cmd"
if "%CSTX%"=="" set CSTX=1024
echo."%CSTX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\Winput.exe" "set CSTX=$input" "Enter resolution Y" "1024">"%GBC%\csty.cmd"
if %ERRORLEVEL%==1 goto :NATIVERES
call "%GBC%\csty.cmd"
if "%CSTX%"=="" set CSTY=1024
echo."%CSTY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [CSTX] "%CSTX%"
"%GBC%\fart.exe" "GSdx.ini" [CSTY] "%CSTY%"
goto :SHDBOOST
:SHDBOOST
"%GBC%\wbox.exe" "RJ_GUI" "Enable shade-boost?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SETSHD
if %ERRORLEVEL%==2 goto :DSHD
goto :QUITOUT
:DSHD
"%GBC%\fart.exe" "GSdx.ini" [SHDBOOST] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [SATLVL] 50
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [BRILVL] 50
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [CONLVL] 50
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EDGEAA
:SETSHD
"%GBC%\fart.exe" "GSdx.ini" [SHDBOOST] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\Winput.exe" "set SATLVL=$input" "Select a saturation level (0-100)" "50">"%GBC%\satlvl.cmd"
if %ERRORLEVEL%==1 goto :DEFSAT
call "%GBC%\satlvl.cmd"
:DEFSAT
if "%SATLVL%"=="" set SATLVL=50
"%GBC%\Winput.exe" "set BRILVL=$input" "Select a saturation level (0-100)" "50">"%GBC%\brilvl.cmd"
if %ERRORLEVEL%==1 goto :DEFBRI
call "%GBC%\brilvl.cmd"
:DEFBRI
if "%BRILVL%"=="" set BRILVL=50
"%GBC%\Winput.exe" "set CONLVL=$input" "Select a saturation level (0-100)" "50">"%GBC%\conlvl.cmd"
if %ERRORLEVEL%==1 goto :DEFCON
call "%GBC%\conlvl.cmd"
:DEFCON
if "%CONLVL%"=="" set SATLVL=50
"%GBC%\fart.exe" "GSdx.ini" [SATLVL] "%SATLVL%"
echo."%SATLVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [BRILVL] "%BRILVL%"
echo."%BRILVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [CONLVL] "%CONLVL%"
echo."%CONLVL%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:EDGEAA
"%GBC%\wbox.exe" "RJ_GUI" "Enable edge-antialiasing?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EEDGE
if %ERRORLEVEL%==2 goto :DEDGE
goto :QUITOUT
:EEDGE
"%GBC%\fart.exe" "GSdx.ini" [EDGEAA] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FXAA
:DEDGE
"%GBC%\fart.exe" "GSdx.ini" [EDGEAA] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FXAA
:FXAA
"%GBC%\wbox.exe" "RJ_GUI" "Enable FXAA?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EFXAA
if %ERRORLEVEL%==2 goto :DFXAA
goto :QUITOUT
:EFXAA
"%GBC%\fart.exe" "GSdx.ini" [FXAA] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FXSHAD
:DFXAA
"%GBC%\fart.exe" "GSdx.ini" [FXAA] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FXSHAD
:FXSHAD
"%GBC%\wbox.exe" "RJ_GUI" "Enable FX Shader?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ESHAD
if %ERRORLEVEL%==2 goto :DSHAD
goto :QUITOUT
:ESHAD
"%GBC%\fart.exe" "GSdx.ini" [SHADR] 1
"%GBC%\fart.exe" "GSdx.ini" [SHADRGLSL] "shaders/GSdx.fx"
"%GBC%\fart.exe" "GSdx.ini" [SHADRCONF] "shaders/GSdx_FX_Settings.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :8BITTEX
:DSHAD
"%GBC%\fart.exe" "GSdx.ini" [SHADR] 0
"%GBC%\fart.exe" "GSdx.ini" [SHADRGLSL] --remove
"%GBC%\fart.exe" "GSdx.ini" [SHADRCONF] --remove
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :8BITTEX
:8BITTEX
"%GBC%\wbox.exe" "RJ_GUI" "Enable 8-Bit textures?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :ETEX
if %ERRORLEVEL%==2 goto :DTEX
goto :QUITOUT
:ETEX
"%GBC%\fart.exe" "GSdx.ini" [8BITTEX] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :HWHACKS
:DTEX
"%GBC%\fart.exe" "GSdx.ini" [8BITTEX] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :HWHACKS
:HWHACKS
"%GBC%\wbox.exe" "RJ_GUI" "Enable Hardware Hacks?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EHACKS
if %ERRORLEVEL%==2 goto :DHACKS
goto :QUITOUT
:EHACKS
"%GBC%\fart.exe" "GSdx.ini" [HACKTOG] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MSAA
:DHACKS
"%GBC%\fart.exe" "GSdx.ini" [HACKTOG] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "GSdx.ini" [MSAALVL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:MSAA
"%GBC%\wbox.exe" "RJ_GUI" "Set the MSAA Level" "0x;2x;4x;8x" /DB=1
if %ERRORLEVEL%==1 goto :NOMSAA
if %ERRORLEVEL%==2 goto :2XMSAA
if %ERRORLEVEL%==3 goto :4XMSAA
if %ERRORLEVEL%==4 goto :8XMSAA
goto :QUITOUT
:NOMSAA
"%GBC%\fart.exe" "GSdx.ini" [MSAALVL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:2XMSAA
"%GBC%\fart.exe" "GSdx.ini" [MSAALVL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:4XMSAA
"%GBC%\fart.exe" "GSdx.ini" [MSAALVL] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:8XMSAA
"%GBC%\fart.exe" "GSdx.ini" [MSAALVL] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANIS
:ANIS
"%GBC%\wbox.exe" "RJ_GUI" "Set the anistropy level" "off;1x;2x;4x;8x;16x" /DB=1
if %ERRORLEVEL%==1 goto :NOANIS
if %ERRORLEVEL%==2 goto :1XANIS
if %ERRORLEVEL%==3 goto :2XANIS
if %ERRORLEVEL%==4 goto :4XANIS
if %ERRORLEVEL%==5 goto :8XANIS
if %ERRORLEVEL%==6 goto :16XANIS
goto :QUITOUT
:NOANIS
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 0
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRAREND
:1XANIS
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 1
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRAREND
:2XANIS
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 1
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 2
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRAREND
:4XANIS
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 1
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 3
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRAREND
:8XANIS
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 1
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 4
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRAREND
:16XANIS
"%GBC%\fart.exe" "GSdx.ini" [ANISTOG] 1
"%GBC%\fart.exe" "GSdx.ini" [ANISLVL] 5
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRAREND
:EXTRAREND
"%GBC%\wbox.exe" "RJ_GUI" "Enable Extra Threads?" "Off;1;2;3" /DB=1
if %ERRORLEVEL%==1 goto :NOTHREAD
if %ERRORLEVEL%==2 goto :1THREAD
if %ERRORLEVEL%==3 goto :2THREAD
if %ERRORLEVEL%==4 goto :3THREAD
goto :QUITOUT
:NOTHREAD
"%GBC%\fart.exe" "GSdx.ini" [EXTRATHRD] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PATCHES
:1THREAD
"%GBC%\fart.exe" "GSdx.ini" [EXTRATHRD] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PATCHES
:2THREAD
"%GBC%\fart.exe" "GSdx.ini" [EXTRATHRD] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PATCHES
:3THREAD
"%GBC%\fart.exe" "GSdx.ini" [EXTRATHRD] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PATCHES
:PATCHES
"%GBC%\wbox.exe" "RJ_GUI" "Enable Patches?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :EPATCH
if %ERRORLEVEL%==2 goto :DPATCH
goto :QUITOUT
:EPATCH
"%GBC%\fart.exe" "PCSX2_vm.ini" [PATCHES] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CHEATS
:DPATCH
"%GBC%\fart.exe" "PCSX2_vm.ini" [PATCHES] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CHEATS
:CHEATS
"%GBC%\wbox.exe" "RJ_GUI" "Enable Cheats?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ECHEAT
if %ERRORLEVEL%==2 goto :DCHEAT
goto :QUITOUT
:ECHEAT
"%GBC%\fart.exe" "PCSX2_vm.ini" [CHEAT] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIDESCREEN
:DCHEAT
"%GBC%\fart.exe" "PCSX2_vm.ini" [CHEAT] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIDESCREEN
:WIDESCREEN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Widescreen?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EWIDE
if %ERRORLEVEL%==2 goto :DWIDE
goto :QUITOUT
:EWIDE
"%GBC%\fart.exe" "PCSX2_vm.ini" [WIDESCREEN] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRAMESK
:DWIDE
"%GBC%\fart.exe" "PCSX2_vm.ini" [WIDESCREEN] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRAMESK

:FRAMESK
"%GBC%\wbox.exe" "RJ_GUI" "Enable Frameskipping?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ESKIP
if %ERRORLEVEL%==2 goto :DSKIP
goto :QUITOUT
:ESKIP
"%GBC%\fart.exe" "PCSX2_vm.ini" [FRAMESK] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SKPLVL
:DSKIP
"%GBC%\fart.exe" "PCSX2_vm.ini" [FRAMESK] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [SKPLVL] 2
"%GBC%\fart.exe" "PCSX2_vm.ini" [DRWLVL] 2
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:SKPLVL
"%GBC%\wbox.exe" "RJ_GUI" "Set the frameskip number" "1;2;3" /DB=2
if %ERRORLEVEL%==1 goto :1FRAME
if %ERRORLEVEL%==2 goto :2FRAME
if %ERRORLEVEL%==3 goto :3FRAME
goto :QUITOUT
:1FRAME
"%GBC%\fart.exe" "PCSX2_vm.ini" [SKPLVL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRWFRAME
:2FRAME
"%GBC%\fart.exe" "PCSX2_vm.ini" [SKPLVL] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRWFRAME
:3FRAME
"%GBC%\fart.exe" "PCSX2_vm.ini" [SKPLVL] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRWFRAME
:DRWFRAME
"%GBC%\wbox.exe" "RJ_GUI" "Set the draw number" "1;2;3" /DB=2
if %ERRORLEVEL%==1 goto :1DRW
if %ERRORLEVEL%==2 goto :2DRW
if %ERRORLEVEL%==3 goto :3DRW
goto :QUITOUT
:1DRW
"%GBC%\fart.exe" "PCSX2_vm.ini" [DRWLVL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:2DRW
"%GBC%\fart.exe" "PCSX2_vm.ini" [DRWLVL] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:3DRW
"%GBC%\fart.exe" "PCSX2_vm.ini" [DRWLVL] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ESYNC
if %ERRORLEVEL%==2 goto :DSYNC
goto :QUITOUT
:ESYNC
"%GBC%\fart.exe" "PCSX2_vm.ini" [VSYNC] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GSYNC
:DSYNC
"%GBC%\fart.exe" "PCSX2_vm.ini" [VSYNC] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "PCSX2_vm.ini" [MVSYNC] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREADED
:GSYNC
SET DYNVSYNC=2
if %GSDXN% GEQ 3 SET DYNVSYNC=1
if %GSDXN% GEQ 11 SET DYNVSYNC=2
"%GBC%\wbox.exe" "RJ_GUI" "Enable Dynamic VSYNC?" "Enable;Disable" /DB=%DYNVSYNC%
if %ERRORLEVEL%==1 goto :DYNON
if %ERRORLEVEL%==2 goto :DYNOFF
goto :QUITOUT
:DYNON
"%GBC%\fart.exe" "PCSX2_vm.ini" [MVSYNC] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREADED
:DYNOFF
"%GBC%\fart.exe" "PCSX2_vm.ini" [MVSYNC] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :THREADED
:THREADED
"%GBC%\wbox.exe" "RJ_GUI" "Enable multi-threaded microVU1?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :MTHREAD
if %ERRORLEVEL%==2 goto :STHREAD
goto :QUITOUT
:STHREAD
"%GBC%\fart.exe" "PCSX2_vm.ini" [VUTHREAD] disabled
echo."disabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PCSX2COMPL
:MTHREAD
"%GBC%\fart.exe" "PCSX2_vm.ini" [VUTHREAD] enabled
echo."enabled">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PCSX2COMPL

:PCSX2COMPL
"%GBC%\fart.exe" "PCSX2_ui.ini" [GAMEFIXES] enabled
"%GBC%\fart.exe" "PCSX2_ui.ini" [SPEEDHACKS] enabled
"%GBC%\fart.exe" "PCSX2_ui.ini" [PRESETS] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [BACKUP] disabled
"%GBC%\fart.exe" "PCSX2_vm.ini" [HOSTFS] disabled
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1