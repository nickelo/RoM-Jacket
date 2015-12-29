set FSCRN=
for /f "tokens=2 delims=@" %%a in ('"%GBC%\Qres.exe" /V/S') do set THERZ=%%~a
for %%a in ("%THERZ:~1, -4%") do set HERTZ=%%~a
call "%GBC%\unzjoy.bat">>"%GBC%\logs\unzjoy.log"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "Unz.ini" [WINDOW] 0
"%GBC%\fart.exe" "Unz.ini" [HERTZ] %HERTZ%
"%GBC%\fart.exe" "Unz.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "Unz.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "Unz.ini" [VSYNC] 0
"%GBC%\fart.exe" "Unz.ini" [MEM] 36
"%GBC%\fart.exe" "Unz.ini" [PAD1] 2
"%GBC%\fart.exe" "Unz.ini" [PAD2] 2
"%GBC%\fart.exe" "Unz.ini" [SCAN] 0
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 0
"%GBC%\fart.exe" "Unz.ini" [X86TYPE] 0
"%GBC%\fart.exe" "Unz.ini" [CLOCK] 1600
"%GBC%\fart.exe" "Unz.ini" [CLOCKFAST] 2000
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Fullscreen or Full-Window mode?" "Fullscreen;Full-window" /DB=1
if %ERRORLEVEL%==1 goto :FSCREEN
if %ERRORLEVEL%==2 goto :FULLWIN
goto :QUITOUT
:FSCREEN
SET FSCRN=1
"%GBC%\fart.exe" "Unz.ini" [WINDOW] 0
"%GBC%\fart.exe" "Unz.ini" [HERTZ] %HERTZ%
"%GBC%\fart.exe" "Unz.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "Unz.ini" [REZY] %DREZY%
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%DREZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%DREZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEM
:FULLWIN
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\Winput.exe" "set HERTZ=$input" "Enter a Freqency in Hz" "%HERTZ%">"%GBC%\hertz.cmd"
if %ERRORLEVEL%==1 goto :SETHZD
call "%GBC%\hertz.cmd"
if "%HERTZ%"=="" SET HERTZ=60
"%GBC%\fart.exe" "Unz.ini" [HERTZ] %HERTZ%
"%GBC%\fart.exe" "Unz.ini" [REZX] %REZX%
"%GBC%\fart.exe" "Unz.ini" [REZY] %REZY%
goto :WINDOW

:WINDOW
"%GBC%\wbox.exe" "RJ_GUI" "Set the window size" "Normal;768x512;640x508;1024x768" /DB=1
if %ERRORLEVEL%==1 goto :NORML
if %ERRORLEVEL%==2 goto :768
if %ERRORLEVEL%==3 goto :640
if %ERRORLEVEL%==4 goto :1024
goto :QUITOUT

:NORML
"%GBC%\fart.exe" "Unz.ini" [WINDOW] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :MAG
:768
"%GBC%\fart.exe" "Unz.ini" [WINDOW] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :MAG
:640
"%GBC%\fart.exe" "Unz.ini" [WINDOW] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :MAG
:1024
"%GBC%\fart.exe" "Unz.ini" [WINDOW] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :MAG

:MAG
"%GBC%\wbox.exe" "RJ_GUI" "Set a magnification multiplier" "Normal;1.25x;1.5x;1.75x;2x"
if %ERRORLEVEL%==1 goto :NOMAG
if %ERRORLEVEL%==2 goto :125X
if %ERRORLEVEL%==3 goto :15X
if %ERRORLEVEL%==4 goto :175X
if %ERRORLEVEL%==5 goto :2X
goto :QUITOUT

:NOMAG
"%GBC%\fart.exe" "Unz.ini" [MAG] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEM
:125X
"%GBC%\fart.exe" "Unz.ini" [MAG] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEM
:15X
"%GBC%\fart.exe" "Unz.ini" [MAG] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEM
:175X
"%GBC%\fart.exe" "Unz.ini" [MAG] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEM
:2X
"%GBC%\fart.exe" "Unz.ini" [MAG] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEM

:MEM
"%GBC%\wbox.exe" "RJ_GUI" "Select a RAM config" "8mb;16mb;32mb;64mb;96mb" /DB=3
if %ERRORLEVEL%==1 goto :8MB
if %ERRORLEVEL%==2 goto :16MB
if %ERRORLEVEL%==3 goto :32MB
if %ERRORLEVEL%==4 goto :64MB
if %ERRORLEVEL%==5 goto :96MB
goto :QUITOUT

:8MB
"%GBC%\fart.exe" "Unz.ini" [MEM] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:16MB
"%GBC%\fart.exe" "Unz.ini" [MEM] 16
echo."16">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:32MB
"%GBC%\fart.exe" "Unz.ini" [MEM] 32
echo."32">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:64MB
"%GBC%\fart.exe" "Unz.ini" [MEM] 64
echo."64">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:96MB
"%GBC%\fart.exe" "Unz.ini" [MEM] 96
echo."96">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SCANON
if %ERRORLEVEL%==2 goto :SCANOFF
goto :QUITOUT
:SCANON
"%GBC%\fart.exe" "Unz.ini" [SCAN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:SCANOFF
"%GBC%\fart.exe" "Unz.ini" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :VSYNCON
if %ERRORLEVEL%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "Unz.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPRITE
:VSYNCOFF
"%GBC%\fart.exe" "Unz.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPRITE

:SPRITE
"%GBC%\wbox.exe" "RJ_GUI" "Enable Sprite boost?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :SPRITEON
if %ERRORLEVEL%==2 goto :SPRITEOFF
goto :QUITOUT

:SPRITEON
"%GBC%\fart.exe" "Unz.ini" [SPRITEBOOST] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BRITE
:SPRITEOFF
"%GBC%\fart.exe" "Unz.ini" [SPRITEBOOST] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BRITE

:BRITE
"%GBC%\wbox.exe" "RJ_GUI" "Set the Brightness level" "0;1;2;3;4;5;6;7" /BW=15 /DB=1
if %ERRORLEVEL%==1 goto :B1
if %ERRORLEVEL%==2 goto :B2
if %ERRORLEVEL%==3 goto :B3
if %ERRORLEVEL%==4 goto :B4
if %ERRORLEVEL%==5 goto :B5
if %ERRORLEVEL%==6 goto :B6
if %ERRORLEVEL%==7 goto :B7
if %ERRORLEVEL%==8 goto :B8
goto :QUITOUT

:B1
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B2
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B3
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B4
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B5
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B6
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B7
"%GBC%\fart.exe" "Unz.ini" [BRIGHT] 6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED
:B8
"%GBC%\fart.exe" [BRIGHT] 7
echo."7">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPEED

:SPEED
"%GBC%\wbox.exe" "RJ_GUI" "Set the speed" "16;33;66" /DB=1
if %ERRORLEVEL%==1 goto :16SPEED
if %ERRORLEVEL%==2 goto :33SPEED
if %ERRORLEVEL%==3 goto :66SPEED
goto :QUITOUT

:16SPEED
"%GBC%\fart.exe" "Unz.ini" [CLOCK] 1600
"%GBC%\fart.exe" "Unz.ini" [CLOCKFAST] 2000
echo."1600">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PROCTYPE
:33SPEED
"%GBC%\fart.exe" "Unz.ini" [CLOCK] 3300
"%GBC%\fart.exe" "Unz.ini" [CLOCKFAST] 4400
echo."3300">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."4400">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :PROCTYPE
:66SPEED
"%GBC%\fart.exe" "Unz.ini" [CLOCK] 6600
"%GBC%\fart.exe" "Unz.ini" [CLOCKFAST] 8800
echo."6600">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."8800">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :PROCTYPE

:PROCTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Set the processor type" "386;486" /DB=1
if %ERRORLEVEL%==1 goto :386
if %ERRORLEVEL%==2 goto :486
goto :QUITOUT

:386
"%GBC%\fart.exe" "Unz.ini" [X86TYPE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PADS
:486
"%GBC%\fart.exe" "Unz.ini" [X86TYPE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PADS

:PADS
"%GBC%\wbox.exe" "RJ_GUI" "6-button Pads?" "6button;3button" /DB=2
if %ERRORLEVEL%==1 goto :P1K
if %ERRORLEVEL%==2 goto :P1J
goto :QUITOUT

:P1K
"%GBC%\fart.exe" "Unz.ini" [PADTYPE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :UNZCOMPL
:P1J
"%GBC%\fart.exe" "Unz.ini" [PADTYPE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :UNZCOMPL


:UNZCOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1