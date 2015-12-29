set NEWNUM=
set NUMVALUE=
SET DESMUMEOGL=
SET DESMUMESOFT=
"%GBC%\fart.exe" "desmume.ini" [EMUPTH] "%GBE%\%EMUZ%\%DESMUME%"
"%GBC%\fart.exe" "desmume.ini" [EMUPTH] "%GBE%\%EMUZ%\%DESMUME%"
if "%P1JOYTYPE%"=="KB" call "%GBC%\desmumeKB.bat">>"%GBC%\logs\%CSTCONS%desmumeKB.log"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\desmumeJoy.bat">>"%GBC%\logs\%CSTCONS%desmumeJoy.log"
set CFGFILE=%DESMUME%.ini
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
if exist "%GBE%\%EMUZ%\%DESMUME%\firmware.bin" "%GBC%\fart.exe" "desmume.ini" [USEFIRM] 0
"%GBC%\fart.exe" "desmume.ini" [RENDR] 1
"%GBC%\fart.exe" "desmume.ini" [DISP] 1
"%GBC%\fart.exe" "desmume.ini" [ACCOLOR] 0
"%GBC%\fart.exe" "desmume.ini" [EDGE] 0
"%GBC%\fart.exe" "desmume.ini" [FOG] 0
"%GBC%\fart.exe" "desmume.ini" [LINE] 0
"%GBC%\fart.exe" "desmume.ini" [FILT] 0
"%GBC%\fart.exe" "desmume.ini" [AAMODE] 0
"%GBC%\fart.exe" "desmume.ini" [FRMSK] 1
"%GBC%\fart.exe" "desmume.ini" [SCALE] 0
"%GBC%\fart.exe" "desmume.ini" [USEXTB] 0
"%GBC%\fart.exe" "desmume.ini" [SNDCORE] 2
"%GBC%\fart.exe" "desmume.ini" [INTERP] 1
"%GBC%\fart.exe" "desmume.ini" [ADV] 0
"%GBC%\fart.exe" "desmume.ini" [ASYNC] 0
"%GBC%\fart.exe" "desmume.ini" [SYNCMODE] 0
"%GBC%\fart.exe" "desmume.ini" [SNDMETHOD] 0
"%GBC%\fart.exe" "desmume.ini" [BIOS9] --remove
"%GBC%\fart.exe" "desmume.ini" [BIOS7] --remove
"%GBC%\fart.exe" "desmume.ini" [USEFIRM] 0
"%GBC%\fart.exe" "desmume.ini" [FIRMWARE] --remove
"%GBC%\fart.exe" "desmume.ini" [BOOTF] 0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
if exist "%GBC%\%EMUZ%\%DESMUME%\firmware.bin" "%GBC%\fart.exe" [FIRMWARE] "%GBC%\%EMUZ%\%DESMUME%\firmware.bin"
if exist "%GBC%\%EMUZ%\%DESMUME%\bios9.bin" "%GBC%\fart.exe" [BIOS9] "%GBC%\%EMUZ%\%DESMUME%\bios9.bin"
if exist "%GBC%\%EMUZ%\%DESMUME%\bios7.bin" "%GBC%\fart.exe" [BIOS7] "%GBC%\%EMUZ%\%DESMUME%\bios7.bin"
echo."%GBC%\%EMUZ%\%DESMUME%\firmware.bin">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%GBC%\%EMUZ%\%DESMUME%\bios9.bin">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%GBC%\%EMUZ%\%DESMUME%\bios7.bin">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:TYPE
if not exist "%GBC%\%EMUZ%\%DESMUME%\firmware.bin" goto :BIOSA
"%GBC%\wbox.exe" "RJ_GUI" "Use external firmware?" "External;Desmume" /DB=2
if %ERRORLEVEL%==1 goto :FIRM
if %ERRORLEVEL%==2 goto :DESMUF
goto :QUITOUT

:FIRM
if exist "%GBE%\%EMUZ%\%DESMUME%\firmware.bin" "%GBC%\fart.exe" "desmume.ini" [USEFIRM] 1
"%GBC%\wbox.exe" "RJ_GUI" "Boot From Firmware?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :BOOTON
if %ERRORLEVEL%==2 goto :BOOTOFF
goto :QUITOUT

:BOOTON
"%GBC%\fart.exe" "desmume.ini" [BOOTF] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BIOSA
:BOOTOFF
"%GBC%\fart.exe" "desmume.ini" [BOOTF] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BIOSA

:BIOSA
if not exist "%GBE%\bios9.bin" goto :BOOTOFF
set BIOSA=1
SET BIOSA=
SET BIOSB=
if "%BIOSA%"=="" goto :BOOTOFF
if exist "%GBE%\bios7.bin" set BIOSB=1
if "%BIOSB%"=="" goto :BOOTOFF
"%GBC%\wbox.exe" "RJ_GUI" "Use External Bios files?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :BOOTON
if %ERRORLEVEL%==2 goto :BOOTOFF
goto :QUITOUT

:BOOTON
"%GBC%\fart.exe" "desmume.ini" [BOOTF] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DISP

:BOOTOFF
"%GBC%\fart.exe" "desmume.ini" [BOOTF] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DISP

:DISP
"%GBC%\wbox.exe" "RJ_GUI" "Set the display mode." "Hardware;Software;OpenGL" /DB=1
if %errorlevel%==1 goto :DDHW
if %errorlevel%==2 goto :DDSW
if %errorlevel%==3 goto :OGL
goto :QUITOUT

:DDSW
"%GBC%\fart.exe" "desmume.ini" [DISP] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
GOTO :VSYNC
:DDHW
"%GBC%\fart.exe" "desmume.ini" [DISP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
GOTO :VSYNC
:OGL
"%GBC%\fart.exe" "desmume.ini" [DISP] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable V-Sync?" "On;Off" /DB=1
if %errorlevel%==1 goto :VSYNCON
if %errorlevel%==2 goto :VSYNCOFF
goto :QUITOUT
:VSYNCON
"%GBC%\fart.exe" "desmume.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRIVER
:VSYNCOFF
"%GBC%\fart.exe" "desmume.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRIVER

:DRIVER
"%GBC%\wbox.exe" "RJ_GUI" "Use OpenGL, Soft or old.OpenGL driver?" "OpenGL;Soft;OldOGL" /DB=2
if %ERRORLEVEL%==1 goto :OPENGL
if %ERRORLEVEL%==2 goto :SOFT
if %ERRORLEVEL%==3 goto :OLDGL
goto :QUITOUT

:OPENGL
"%GBC%\fart.exe" "desmume.ini" [RENDR] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :OGLSCALE
:SOFT
"%GBC%\fart.exe" "desmume.ini" [RENDR] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SOFTSCALE
:OLDGL
"%GBC%\fart.exe" "desmume.ini" [RENDR] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRMSKP

:SOFTSCALE
set DESMUMESOFT=1
"%GBC%\wbox.exe" "RJ_GUI" "Select the internal resolution scale." "Default;2x;3x;4x" /DB=1
if %errorlevel%==1 goto :DEFAULTSOFT
if %errorlevel%==2 goto :2XSOFT
if %errorlevel%==3 goto :3XSOFT
if %errorlevel%==4 goto :4XSOFT
goto :QUITOUT

:DEFAULTSOFT
"%GBC%\fart.exe" "desmume.ini" [SCALE] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE
:2XSOFT
"%GBC%\fart.exe" "desmume.ini" [SCALE] 7
echo."7">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE
:3XSOFT
"%GBC%\fart.exe" "desmume.ini" [SCALE] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE
:4XSOFT
"%GBC%\fart.exe" "desmume.ini" [SCALE] 9
echo."9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE

:OGLSCALE
SET DESMUMEOGL=1
"%GBC%\wbox.exe" "RJ_GUI" "Select the internal resolution scale." "Default;2x;3x;4x" /DB=1
if %errorlevel%==1 goto :DEFAULTOGL
if %errorlevel%==2 goto :2XOGL
if %errorlevel%==3 goto :3XOGL
if %errorlevel%==4 goto :4XOGL
goto :QUITOUT

:DEFAULTOGL
"%GBC%\fart.exe" "desmume.ini" [SCALE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE
:2XOGL
"%GBC%\fart.exe" "desmume.ini" [SCALE] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE
:3XOGL
"%GBC%\fart.exe" "desmume.ini" [SCALE] 5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE
:4XOGL
"%GBC%\fart.exe" "desmume.ini" [SCALE] 6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNCMODE

:OLDGLSCALE
"%GBC%\fart.exe" "desmume.ini" [SCALE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANTIALIAS

:SYNCMODE
"%GBC%\wbox.exe" "RJ_GUI" "Set Async Mode" "On;Off" /DB=2
if %errorlevel%==1 goto :SYNCON
if %errorlevel%==2 goto :SYNCOFF
goto :QUITOUT

:SYNCON
"%GBC%\fart.exe" "desmume.ini" [ASYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANTIALIAS

:SYNCOFF
"%GBC%\fart.exe" "desmume.ini" [ASYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ANTIALIAS

:ANTIALIAS
if "%DESMUMEOGL%"=="" goto :FRMSKP
"%GBC%\wbox.exe" "RJ_GUI" "Enable Anti-aliasing?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :AAON
if %errorlevel%==2 goto :AAOFF
goto :QUITOUT
:AAON
"%GBC%\fart.exe" "desmume.ini" [AAMODE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRMSKP
:AAOFF
"%GBC%\fart.exe" "desmume.ini" [AAMODE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FRMSKP

:FRMSKP
"%GBC%\wbox.exe" "RJ_GUI" "Set the frame-skip amount." "Default;1Frame;2Frames;Input" /DB=3
if %errorlevel%==1 goto :NOSKIP
if %errorlevel%==2 goto :SKIP1
if %errorlevel%==3 goto :SKIP2
if %errorlevel%==4 goto :NUMSKP
goto :QUITOUT

:NOSKIP
"%GBC%\fart.exe" "desmume.ini" [FRMSK] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET

:SKIP1
"%GBC%\fart.exe" "desmume.ini" [FRMSK] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET

:SKIP2
"%GBC%\fart.exe" "desmume.ini" [FRMSK] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET

:NUMSKP
"%GBC%\Winput.exe" "set /a NUMVALUE=$input" "Number of Frames to Skip" "2">"%GBC%\input.cmd"
if %ERRORLEVEL%==1 goto :FRMSKP
call "%GBC%\input.cmd"
set /a NEWNUM=%NUMVALUE%/1
if "%NEWNUM%" NEQ "%NUMVALUE%" goto :FRMSKP
if %NEWNUM% GTR 9 goto :FRMSKP
"%GBC%\fart.exe" "desmume.ini" [FRMSK] %NUMVALUE%
echo."%NUMVALUE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
if "%DESMUMESOFT%"=="" goto :LOW
"%GBC%\wbox.exe" "RJ_GUI" "Select a preset for your video settings" "Fast;Nice" /DB=1
if %ERRORLEVEL%==1 goto :LOW
if %ERRORLEVEL%==2 goto :HIGH
goto :QUITOUT

:LOW
"%GBC%\fart.exe" "desmume.ini" [ACCOLOR] 0
"%GBC%\fart.exe" "desmume.ini" [EDGE] 0
"%GBC%\fart.exe" "desmume.ini" [LINE] 0
"%GBC%\fart.exe" "desmume.ini" [FOG] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :LAYOUT

:HIGH
"%GBC%\fart.exe" "desmume.ini" [ACCOLOR] 1
"%GBC%\fart.exe" "desmume.ini" [EDGE] 1
"%GBC%\fart.exe" "desmume.ini" [LINE] 1
"%GBC%\fart.exe" "desmume.ini" [FOG] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :LAYOUT

:LAYOUT
"%GBC%\wbox.exe" "RJ_GUI" "Select a layout" "Default;Inverse;View-Touch;Touch-View" /DB=1
if %ERRORLEVEL%==1 goto :TOPBOT
if %ERRORLEVEL%==2 goto :BOTTOP
if %ERRORLEVEL%==3 goto :LEFTR
if %ERRORLEVEL%==4 goto :RIGHTL
goto :QUITOUT

:TOPBOT
"%GBC%\fart.exe" "desmume.ini" [LAYOUT] 0
"%GBC%\fart.exe" "desmume.ini" [LCDSWAP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILT
:BOTTOP
"%GBC%\fart.exe" "desmume.ini" [LAYOUT] 0
"%GBC%\fart.exe" "desmume.ini" [LCDSWAP] 1
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILT
:LEFTR
"%GBC%\fart.exe" "desmume.ini" [LAYOUT] 1
"%GBC%\fart.exe" "desmume.ini" [LCDSWAP] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILT
:RIGHTL
"%GBC%\fart.exe" "desmume.ini" [LAYOUT] 1
"%GBC%\fart.exe" "desmume.ini" [LCDSWAP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILT

:FILT
"%GBC%\wbox.exe" "RJ_GUI" "Select a shader?" "Select;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SELSHAD
if %ERRORLEVEL%==2 goto :NOSHAD
goto :QUITOUT

:SELSHAD
echo None>"%GBC%\deshad.ini"
echo LQ2x>>"%GBC%\deshad.ini"
echo LQ2xS>>"%GBC%\deshad.ini"
echo HQ2x>>"%GBC%\deshad.ini"
echo HQ4x>>"%GBC%\deshad.ini"
echo HQ2xS>>"%GBC%\deshad.ini"
echo 2XSaI>>"%GBC%\deshad.ini"
echo Super2XSaI>>"%GBC%\deshad.ini"
echo SuperEagle>>"%GBC%\deshad.ini"
echo Scanline>>"%GBC%\deshad.ini"
echo Bilinear>>"%GBC%\deshad.ini"
echo Nearest 2X>>"%GBC%\deshad.ini"
echo Nearest 1.5X>>"%GBC%\deshad.ini"
echo Nearest+ 1.5X>>"%GBC%\deshad.ini"
echo EPX>>"%GBC%\deshad.ini"
echo EPX+>>"%GBC%\deshad.ini"
echo EPX 1.5X>>"%GBC%\deshad.ini"
echo EPX+ 1.5X>>"%GBC%\deshad.ini"
"%GBC%\wselect.exe" "%GBC%\deshad.ini" "Select a Shader" "set DESHAD=$item" > "%GBC%\deshad.cmd"
if %errorlevel% == 0 goto :NOSHAD
call "%GBC%\deshad.cmd"
if "%DESHAD%"=="" goto :NOSHAD
if "%DESHAD%"=="None" goto :NOSHAD
if "%DESHAD%"=="HQ2x" set SHADNUM=1
if "%DESHAD%"=="2XSaI" set SHADNUM=2
if "%DESHAD%"=="Super2XSaI" set SHADNUM=3
if "%DESHAD%"=="SuperEagle" set SHADNUM=4
if "%DESHAD%"=="Scanline" set SHADNUM=5
if "%DESHAD%"=="Bilinear" set SHADNUM=6
if "%DESHAD%"=="Nearest 2X" set SHADNUM=7
if "%DESHAD%"=="HQ2xS" set SHADNUM=8
if "%DESHAD%"=="LQ2x" set SHADNUM=9
if "%DESHAD%"=="LQ2xS" set SHADNUM=10
if "%DESHAD%"=="EPX" set SHADNUM=11
if "%DESHAD%"=="Nearest+ 1.5X" set SHADNUM=12
if "%DESHAD%"=="Nearest 1.5X" set SHADNUM=13
if "%DESHAD%"=="EPX+" set SHADNUM=14
if "%DESHAD%"=="EPX 1.5X" set SHADNUM=15
if "%DESHAD%"=="EPX+ 1.5X" set SHADNUM=16
if "%DESHAD%"=="HQ4x" set SHADNUM=17
"%GBC%\fart.exe" "desmume.ini" [FILT] "%SHADNUM%"
echo."%SHADNUM%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO
:NOSHAD
"%GBC%\fart.exe" "desmume.ini" [FILT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO
:AUDIO
"%GBC%\wbox.exe" "RJ_GUI" "Set the sound core" "DirectSound;X-Audio;OFF" /DB=1
if %ERRORLEVEL%==1 goto :DIRSND
if %ERRORLEVEL%==2 goto :XAUDIO
if %ERRORLEVEL%==3 goto :SNDOFF
goto :QUITOUT
:DIRSND
"%GBC%\fart.exe" "desmume.ini" [SNDCORE] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC
:XAUDIO
"%GBC%\fart.exe" "desmume.ini" [SNDCORE] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC
:SNDOFF
"%GBC%\fart.exe" "desmume.ini" [SNDCORE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC
:SYNC
"%GBC%\wbox.exe" "RJ_GUI" "Set the audio sync mode" "Dual-SPU;Syncronous" /DB=1
if %ERRORLEVEL%==1 goto :DUALSPU
if %ERRORLEVEL%==2 goto :ASYNC
goto :QUITOUT

:DUALSPU
"%GBC%\fart.exe" "desmume.ini" [SYNCMODE] 0
"%GBC%\fart.exe" "desmume.ini" [SNDMETHOD] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDCORE
:ASYNC
"%GBC%\fart.exe" "desmume.ini" [SYNCMODE] 1
"%GBC%\wbox.exe" "RJ_GUI" "Set method" "N;Z;P" /DB=1
if %ERRORLEVEL%==1 goto :SNDN
if %ERRORLEVEL%==2 goto :SNDZ
if %ERRORLEVEL%==3 goto :SNDP
goto :QUITOUT
:SNDN
"%GBC%\fart.exe" "desmume.ini" [SNDMETHOD] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDCORE
:SNDZ
"%GBC%\fart.exe" "desmume.ini" [SNDMETHOD] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDCORE
:SNDP
"%GBC%\fart.exe" "desmume.ini" [SNDMETHOD] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SNDCORE
:SNDCORE
"%GBC%\wbox.exe" "RJ_GUI" "Set the interpolation method" "Fast;Good;Best" /DB=2
if %ERRORLEVEL%==1 goto :FAST
if %ERRORLEVEL%==2 goto :GOOD
if %ERRORLEVEL%==3 goto :BEST
goto :QUITOUT
:FAST
"%GBC%\fart.exe" "desmume.ini" [INTERP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ADV
:GOOD
"%GBC%\fart.exe" "desmume.ini" [INTERP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ADV
:BEST
"%GBC%\fart.exe" "desmume.ini" [INTERP] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ADV
:ADV
"%GBC%\wbox.exe" "RJ_GUI" "Enable Advanced SPU logic?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ESPU
if %ERRORLEVEL%==2 goto :DSPU
goto :QUITOUT
:ESPU
"%GBC%\fart.exe" "desmume.ini" [ADV] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DESMUMECOMP
:DSPU
"%GBC%\fart.exe" "desmume.ini" [ADV] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DESMUMECOMP

:DESMUMECOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1