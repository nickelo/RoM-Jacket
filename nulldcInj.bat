if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "%NULLDC%.cfg" [DSP] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [LIMIT] 1
"%GBC%\fart.exe" "%NULLDC%.cfg" [ASPCT] 1
"%GBC%\fart.exe" "%NULLDC%.cfg" [VSYNC] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [ZBUF] 2
"%GBC%\fart.exe" "%NULLDC%.cfg" [MULTQ] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [MULTC] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [ALPHA] 1
"%GBC%\fart.exe" "%NULLDC%.cfg" [PALETTE] 1
"%GBC%\fart.exe" "%NULLDC%.cfg" [VOL] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [TEX] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [RES] 2
"%GBC%\fart.exe" "%NULLDC%.cfg" [PROP] 1
"%GBC%\fart.exe" "%NULLDC%.cfg" [CABLE] 3
"%GBC%\fart.exe" "%NULLDC%.cfg" [FPU] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [GPUPLUG] drkPvr_Win32.dll
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM1] 0
"%GBC%\fart.exe" "%NULLDC%.cfg" [P1PAK1] "drkMapleDevices_Win32.dll:2"
"%GBC%\fart.exe" "%NULLDC%.cfg" [P2PAK1] "drkMapleDevices_Win32.dll:2"
if "%P2JOYTYPE%"=="JOY" call :KB1CHK
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [P1PAK2] NULL
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [P2PAK2] NULL
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 1
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 1
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 0
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 0
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [P1PAK2] "PuruPuru_Win32.dll:1"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [P2PAK2] "PuruPuru_Win32.dll:1"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [P1PLUGTYPE] "XMaple_Win32.dll:0"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [P2PLUGTYPE] "XMaple_Win32.dll:0"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [P1PLUGTYPE] "PuruPuru_Win32.dll:0"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [P2PLUGTYPE] "PuruPuru_Win32.dll:0"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE1] 0
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE2] 0
if "%P1JOYTYPE%"=="JOY" call "%GBC%\nulldcXJ1.bat">>"%GBC%\logs\nulldcXJ1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\nulldcXJ2.bat">>"%GBC%\logs\nulldcXJ2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\nulldckb1.bat">>"%GBC%\logs\nulldckb1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\nulldckb2.bat">>"%GBC%\logs\nulldckb2.log"
set CFGFILE=nulldc.cfg
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\cfgfileInj.bat">>"%GBC%\logs\cfgFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b


:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
if "%P2JOYTYPE%"=="JOY" call :KB1CHK
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:KB1CHK
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM2] 0
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM2] 1
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\fart.exe" "%NULLDC%.cfg" [P1PAK1] "drkMapleDevices_Win32.dll:2"
"%GBC%\fart.exe" "%NULLDC%.cfg" [P2PAK1] "drkMapleDevices_Win32.dll:2"
echo."drkMapleDevices_Win32.dll:2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."drkMapleDevices_Win32.dll:2">>"%GBC%\%CEMU%_%CSTCONS%.ini"

if "%P1JOYTYPE%"=="JOY" set P1JT=1
if "%P1JOYTYPE%"=="KB" set P1JT=2
"%GBC%\wbox.exe" "RJ_GUI" "Select a Plugin for Player1" "Xinput;PuruPuru;darkMaple" /DB=%P1JT%
if %ERRORLEVEL%==1 goto :XCTRL
if %ERRORLEVEL%==2 goto :PURC
if %ERRORLEVEL%==3 goto :DRKM
goto :QUITOUT
:XCTRL
"%GBC%\fart.exe" "nulldc.cfg" [P1PLUGTYPE] "XMaple_Win32.dll:0"
echo."XMaple_Win32.dll:0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLUGPL2
:PURUC
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 1
if "%P1JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM1] 1
if "%P1JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM1] 0
if "%P1JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "nulldc.cfg" [P1PLUGTYPE] "PuruPuru_Win32.dll:1"
echo."PuruPuru_Win32.dll:1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLUGPL2
:DRKM
"%GBC%\fart.exe" "nulldc.cfg" [P1PLUGTYPE] "drkMapleDevices_Win32.dll:0"
echo."drkMapleDevices_Win32.dll:0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLUGPL2

:PLUGPL2
if "%P2JOYTYPE%"=="JOY" set P2JT=1
if "%P2JOYTYPE%"=="KB" set P2JT=2
"%GBC%\wbox.exe" "RJ_GUI" "Select a Plugin for Player 2" "Xinput;PuruPuru;darkMaple" /DB=%P2JT%
if %ERRORLEVEL%==1 goto :XCTRL2
if %ERRORLEVEL%==2 goto :PURC2
if %ERRORLEVEL%==3 goto :DRKM2
goto :QUITOUT
:XCTRL2
"%GBC%\fart.exe" "nulldc.cfg" [P2PLUGTYPE] "XMaple_Win32.dll:0"
echo."XMaple_Win32.dll:0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTD
:PURUC2
if "%P2JOYTYPE%"=="JOY" call :KB1CHK
"%GBC%\fart.exe" "nulldc.cfg" [P2PLUGTYPE] "PuruPuru_Win32.dll:1"
goto :INPUTD
:DRKM2
if "%P2JOYTYPE%"=="JOY" call :KB1CHK
"%GBC%\fart.exe" "nulldc.cfg" [P2PLUGTYPE] "drkMapleDevices_Win32.dll:0"
echo."drkMapleDevices_Win32.dll:0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTD

:INPUTD
"%GBC%\wbox.exe" "RJ_GUI" "Select a joystick input driver for Player 1" "Xinput;SDL;Keyboard" /DB=1
if %ERRORLEVEL%==1 goto :XINPUT
if %ERRORLEVEL%==2 goto :SDL
if %ERRORLEVEL%==3 goto :KBONLY
goto :QUITOUT
:XINPUT
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM1] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 1
if "%P1JOYTYPE%"=="KB" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 0
if "%P1JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE1] 1
if "%P1JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P1PAK2
:SDL
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM1] 0
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 1
if "%P1JOYTYPE%"=="KB" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 0
if "%P1JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE1] 0
if "%P1JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P1PAK2
:KBONLY
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM1] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG1] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE1] 0
if "%P1JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P1PAK2
:P1PAK2
"%GBC%\wbox.exe" "RJ_GUI" "Select a Pak-type for port 2 Player 1" "Puru-Win32;Puru-XMaple" /DB=2
if %ERRORLEVEL%==1 goto :PURUWIN
if %ERRORLEVEL%==2 goto :PURUX
goto :QUITOUT

:PURUWIN
"%GBC%\fart.exe" "%NULLDC%.cfg" [P1PAK2] "PuruPuru_Win32.dll:1"
echo."PduruPuru_Win32.dll:1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER2

:PURUX
"%GBC%\fart.exe" "%NULLDC%.cfg" [P1PAK2] "XMaple_Win32.dll:3"
echo."XMaple_Win32.dll:3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER2

:PLAYER2
"%GBC%\wbox.exe" "RJ_GUI" "Select a joystick input driver for Player 2" "Xinput;SDL;Keyboard" /DB=1
if %ERRORLEVEL%==1 goto :XINPUT2
if %ERRORLEVEL%==2 goto :SDL2
if %ERRORLEVEL%==3 goto :KBONLY2
goto :QUITOUT
:XINPUT2
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM2] 0
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 1
if "%P2JOYTYPE%"=="KB" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 0
if "%P2JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE2] 1
if "%P2JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P2PAK2
:SDL2
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM2] 0
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 1
if "%P2JOYTYPE%"=="KB" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 0
if "%P2JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE2] 0
if "%P2JOYTYPE%"=="JOY" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P2PAK2

:KBONLY2
"%GBC%\fart.exe" "%NULLDC%.cfg" [JOYNUM2] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%NULLDC%.cfg" [KBTOG2] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%NULLDC%.cfg" [INPUTTYPE2] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P2PAK2
:P2PAK2
"%GBC%\wbox.exe" "RJ_GUI" "Select a Pak-type for port 2 Player 2" "Puru-Win32;Puru-XMaple" /DB=2
if %ERRORLEVEL%==1 goto :PURUWIN2
if %ERRORLEVEL%==2 goto :PURUX2
goto :QUITOUT

:PURUWIN2
"%GBC%\fart.exe" "%NULLDC%.cfg" [P2PAK2] "PuruPuru_Win32.dll:1"
echo."PuruPuru_Win32.dll:1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CONSTPROP

:PURUX2
"%GBC%\fart.exe" "%NULLDC%.cfg" [P2PAK2] "XMaple_Win32.dll:3"
echo."XMaple_Win32.dll:3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CONSTPROP

:CONSTPROP
"%GBC%\wbox.exe" "RJ_GUI" "Enable Constant Propagation?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :PROP
if %ERRORLEVEL%==2 goto :NPROP
goto :QUITOUT
:PROP
"%GBC%\fart.exe" "%NULLDC%.cfg" [PROP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :UNDER
:NPROP
"%GBC%\fart.exe" "%NULLDC%.cfg" [PROP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :UNDER

:UNDER
"%GBC%\wbox.exe" "RJ_GUI" "Underclock the FPU?" "Underclock;Off" /DB=2
if %ERRORLEVEL%==1 goto :COCK
if %ERRORLEVEL%==2 goto :NCLOCK
goto :QUITOUT
:CLOCK
"%GBC%\fart.exe" "%NULLDC%.cfg" [FPU] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :CABLE
:NCLOCK
"%GBC%\fart.exe" "%NULLDC%.cfg" [FPU] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :CABLE

:CABLE
"%GBC%\wbox.exe" "RJ_GUI" "Select a cable type" "VGA;VGA1;TV;TV1" /DB=4
if %ERRORLEVEL%==1 goto :VGA
if %ERRORLEVEL%==2 goto :VGA1
if %ERRORLEVEL%==3 goto :TV
if %ERRORLEVEL%==4 goto :TV1
goto :QUITOUT
:VGA
"%GBC%\fart.exe" "%NULLDC%.cfg" [CABLE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU
:VGA1
"%GBC%\fart.exe" "%NULLDC%.cfg" [CABLE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU
:TV
"%GBC%\fart.exe" "%NULLDC%.cfg" [CABLE] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU
:TV1
"%GBC%\fart.exe" "%NULLDC%.cfg" [CABLE] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU

:GPU
"%GBC%\wbox.exe" "RJ_GUI" "Select a GPU plugin" "Direct3d;DX11" /DB=1
if %ERRORLEVEL%==1 goto :DRKPVR
if %ERRORLEVEL%==2 goto :DX11
goto :QUITOUT

:DRKPVR
"%GBC%\fart.exe" "%NULLDC%.cfg" [GPUPLUG] drkPvr_Win32.dll
echo."drkPvr_Win32.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INJDRKPVR

:DX11
"%GBC%\fart.exe" "%NULLDC%.cfg" [GPUPLUG] mudpvr.dll
echo."mudpvr.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO

:INJDRKPVR
"%GBC%\wbox.exe" "RJ_GUI" "Enable multi-sampling?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :MULTS1
if %ERRORLEVEL%==2 goto :MULTS0
goto :QUITOUT

:MULTS0
"%GBC%\fart.exe" "%NULLDC%.cfg" [MULTQ] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%NULLDC%.cfg" [MULTC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALPHA

:MULTS1
"%GBC%\fart.exe" "%NULLDC%.cfg" [MULTQ] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%NULLDC%.cfg" [MULTC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ALPHA


:ALPHA
"%GBC%\wbox.exe" "RJ_GUI" "Alpha Sort-Mode" "Off;Per-Strip;Per-Triangle" /DB=2
if %ERRORLEVEL%==1 goto :NOALPH
if %ERRORLEVEL%==2 goto :STRIPA
if %ERRORLEVEL%==3 goto :TRIANG
goto :QUITOUT

:NOALPH
"%GBC%\fart.exe" "%NULLDC%.cfg" [ALPHA] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PALETTE
:STRIPA
"%GBC%\fart.exe" "%NULLDC%.cfg" [ALPHA] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PALETTE
:TRIANG
"%GBC%\fart.exe" "%NULLDC%.cfg" [ALPHA] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PALETTE

:PALETTE
"%GBC%\wbox.exe" "RJ_GUI" "Paletted Textures" "Static;Versioned;DynamicP;FULL" /DB=2
if %ERRORLEVEL%==1 goto :STATICP
if %ERRORLEVEL%==2 goto :VERSP
if %ERRORLEVEL%==3 goto :DYNP
if %ERRORLEVEL%==4 goto :FULLP
goto :QUITOUT

:STATICP
"%GBC%\fart.exe" "%NULLDC%.cfg" [PALETTE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VOL
:VERSP
"%GBC%\fart.exe" "%NULLDC%.cfg" [PALETTE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VOL
:DYNP
"%GBC%\fart.exe" "%NULLDC%.cfg" [PALETTE] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VOL
:FULLP
"%GBC%\fart.exe" "%NULLDC%.cfg" [PALETTE] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VOL

:VOL
"%GBC%\wbox.exe" "RJ_GUI" "Modifier Volumes (Shadows)" "Off;Normal;NormalClip;Volumes" /DB=2
if %ERRORLEVEL%==1 goto :VOLOFF
if %ERRORLEVEL%==2 goto :VOLN
if %ERRORLEVEL%==3 goto :VOLC
if %ERRORLEVEL%==4 goto :VOLF
goto :QUITOUT

:VOLOFF
"%GBC%\fart.exe" "%NULLDC%.cfg" [VOL] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ZBUF
:VOLN
"%GBC%\fart.exe" "%NULLDC%.cfg" [VOL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ZBUF
:VOLC
"%GBC%\fart.exe" "%NULLDC%.cfg" [VOL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ZBUF
:VOLF
"%GBC%\fart.exe" "%NULLDC%.cfg" [VOL] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ZBUF

:ZBUF
"%GBC%\wbox.exe" "RJ_GUI" "Z-Buffer Mode" "Mode1-Low;Mode2-Low;Slow;Fast;Adaptive" /DB=4
if %ERRORLEVEL%==1 goto :MODE1
if %ERRORLEVEL%==2 goto :MODE2
if %ERRORLEVEL%==3 goto :SLOW
if %ERRORLEVEL%==4 goto :FAST
if %ERRORLEVEL%==5 goto :ADAPT
goto :QUITOUT

:MODE1
"%GBC%\fart.exe" "%NULLDC%.cfg" [ZBUF] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TEX
:MODE2
"%GBC%\fart.exe" "%NULLDC%.cfg" [ZBUF] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TEX
:SLOW
"%GBC%\fart.exe" "%NULLDC%.cfg" [ZBUF] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TEX
:FAST
"%GBC%\fart.exe" "%NULLDC%.cfg" [ZBUF] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TEX
:ADAPT
"%GBC%\fart.exe" "%NULLDC%.cfg" [ZBUF] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TEX

:TEX
"%GBC%\wbox.exe" "RJ_GUI" "Delete Cache Mode" "Old;Invalidated" /DB=1
if %ERRORLEVEL%==1 goto :DELOLD
if %ERRORLEVEL%==2 goto :DELINV
goto :QUITOUT

:DELOLD
"%GBC%\fart.exe" "%NULLDC%.cfg" [TEX] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION
:DELINV
"%GBC%\fart.exe" "%NULLDC%.cfg" [TEX] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESOLUTION

:RESOLUTION
"%GBC%\wbox.exe" "RJ_GUI" "Select the resolution mode" "MaxSupported;Max;Native;Half;Quarter" /DB=3
if %ERRORLEVEL%==1 goto :MAXS
if %ERRORLEVEL%==2 goto :MAX
if %ERRORLEVEL%==3 goto :NATIVE
if %ERRORLEVEL%==4 goto :HALF
if %ERRORLEVEL%==5 goto :QUART
goto :QUITOUT

:MAXS
"%GBC%\fart.exe" "%NULLDC%.cfg" [RES] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:MAX
"%GBC%\fart.exe" "%NULLDC%.cfg" [RES] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:NATIVE
"%GBC%\fart.exe" "%NULLDC%.cfg" [RES] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:HALF
"%GBC%\fart.exe" "%NULLDC%.cfg" [RES] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:QUART
"%GBC%\fart.exe" "%NULLDC%.cfg" [RES] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EVSYNC
if %ERRORLEVEL%==2 goto :DVSYNC
goto :QUITOUT

:EVSYNC
"%GBC%\fart.exe" "%NULLDC%.cfg" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRA
:DVSYNC
"%GBC%\fart.exe" "%NULLDC%.cfg" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :EXTRA

:EXTRA
"%GBC%\wbox.exe" "RJ_GUI" "Set the aspect ratio type" "Stretch;ExtraGeo;Borders" /DB=3
if %ERRORLEVEL%==1 goto :STRETCH
if %ERRORLEVEL%==2 goto :EXTRAG
if %ERRORLEVEL%==3 goto :BORDER
goto :QUITOUT

:STRETCH
"%GBC%\fart.exe" "%NULLDC%.cfg" [ASPCT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO
:EXTRAG
"%GBC%\fart.exe" "%NULLDC%.cfg" [ASPCT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO
:BORDER
"%GBC%\fart.exe" "%NULLDC%.cfg" [ASPCT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO

:AUDIO
"%GBC%\wbox.exe" "RJ_GUI" "Sync Audio?" "Sync;LimitSync;Off" /DB=2
if %ERRORLEVEL%==1 goto :SYNC
if %ERRORLEVEL%==2 goto :LSYNC
if %ERRORLEVEL%==3 goto AOFF
goto :QUITOUT

:SYNC
"%GBC%\fart.exe" "%NULLDC%.cfg" [LIMIT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DSP
:LSYNC
"%GBC%\fart.exe" "%NULLDC%.cfg" [LIMIT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DSP
:AOFF
"%GBC%\fart.exe" "%NULLDC%.cfg" [LIMIT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DSP

:DSP
"%GBC%\wbox.exe" "RJ_GUI" "Enable DSP Emulation?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :DSPON
if %ERRORLEVEL%==2 goto :DSPOFF
goto :QUITOUT

:DSPON
"%GBC%\fart.exe" "%NULLDC%.cfg" [DSP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :NULLDCCOMPL
:DSPOFF
"%GBC%\fart.exe" "%NULLDC%.cfg" [DSP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :NULLDCCOMPL

:NULLDCCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1