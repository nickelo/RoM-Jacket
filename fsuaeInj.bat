if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "Config.fs-uae" [JOYSTICK] mouse
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "Config.fs-uae" "[JOYSTICK #2]" keyboard
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Config.fs-uae" [JOYSTICK] joystick
if "%P1JOYTYPE%"=="KB" goto :J1TYPE
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Config.fs-uae" "[JOYSTICK #2]" "joystick #2"
goto :INJBEGIN
:J1TYPE
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Config.fs-uae" "[JOYSTICK #2]" joystick
:INJBEGIN
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY 
"%GBC%\fart.exe" "Config.fs-uae" [REZY] %DREZY%
"%GBC%\fart.exe" "Config.fs-uae" [REZX] %DREZX%
"%GBC%\fart.exe" "Config.fs-uae" [ACCURACY] 0
"%GBC%\fart.exe" "Config.fs-uae" [FSAA] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANI] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANV] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANR] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANL] 0
"%GBC%\fart.exe" "Config.fs-uae" [VSYNC] auto
"%GBC%\fart.exe" "Config.fs-uae" [VSYNCL] 0
"%GBC%\fart.exe" "Config.fs-uae" [SHADER] --remove
"%GBC%\fart.exe" "Config.fs-uae" [FILTERTYPE] linear
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "Config.fs-uae" [REZX] "%REZX%"
"%GBC%\fart.exe" "Config.fs-uae" [REZY] "%REZY%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:ACCURACY
"%GBC%\wbox.exe" "RJ_GUI" "Set the Accuracy" "Accurate;Fast;Fastest" /DB=2
if %ERRORLEVEL%==1 goto :ACCURATE
if %ERRORLEVEL%==2 goto :FAST
if %ERRORLEVEL%==3 goto :FASTEST
goto :QUITOUT
:ACCURATE
"%GBC%\fart.exe" "Config.fs-uae" [ACCURACY] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VISUALS
:FAST
"%GBC%\fart.exe" "Config.fs-uae" [ACCURACY] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VISUALS
:FASTEST
"%GBC%\fart.exe" -C "Config.fs-uae" [ACCURACY] "\-1"
echo."\-1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VISUALS

:VISUALS
echo.NONE>"%GBC%\fsShader.ini"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\share\fs-uae\shaders\*.shader"') do echo.:L:%%~nxa>>"%GBC%\fsShader.ini"
if not exist "%GBE%\%EMUZ%\%NEORAINE%\shaders" goto :FSAA
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%NEORAINE%\shaders\*.shader"') do echo.:N:%%~nxa>>"%GBC%\fsShader.ini"

:FSAA
"%GBC%\wbox.exe" "RJ_GUI" "Set the FullScreen Anti-Aliasing value" "Off;2x;4x;8x" /DB=1
if %ERRORLEVEL%==1 goto :NOAA
if %ERRORLEVEL%==2 goto :2AA
if %ERRORLEVEL%==3 goto :4AA
if %ERRORLEVEL%==4 goto :8AA
goto :QUITOUT
:NOAA
"%GBC%\fart.exe" "Config.fs-uae" [FSAA] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:2AA
"%GBC%\fart.exe" "Config.fs-uae" [FSAA] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:4AA
"%GBC%\fart.exe" "Config.fs-uae" [FSAA] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:8AA
"%GBC%\fart.exe" "Config.fs-uae" [FSAA] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enale VSYNC?" "Auto;Vblank;OFF" /DB=1
if %ERRORLEVEL%==1 goto :AUTOV
if %ERRORLEVEL%==2 goto :VBLANK
if %ERRORLEVEL%==3 goto :NOVSYNC
goto :QUITOUT

:AUTOV
"%GBC%\fart.exe" "Config.fs-uae" [VSYNC] auto
echo."auto">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :LOWL
:VBLANK
"%GBC%\fart.exe" "Config.fs-uae" [VSYNC] vblank
echo."vblank">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :LOWL
:NOVSYNC
"%GBC%\fart.exe" "Config.fs-uae" [VSYNC] off
"%GBC%\fart.exe" "Config.fs-uae" [VSYNCL] 0
echo."off">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :LOWL
:LOWL
"%GBC%\wbox.exe" "RJ_GUI" "Enable Low-Latency V-SYNC?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :LOWLAT
if %ERRORLEVEL%==2 goto :NOLL
goto :QUITOUT

:LOWLAT
"%GBC%\fart.exe" "Config.fs-uae" [VSYNCL] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER
:NOLL
"%GBC%\fart.exe" "Config.fs-uae" [VSYNCL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER
:NBASE
for %%a in ("%GBE%\%EMUZ%\%NEORAINE%\shaders") do set BASE=%%~a
exit /b
:SHADER
"%GBC%\wselect.exe" "%GBC%\fsShader.ini" "Select a Shader" "set FSHADR=$item" > "%GBC%\fsshad.cmd"
if %errorlevel% == 0 goto :SCANL
call "%GBC%\fsshad.cmd"
for %%a in ("%GBE%\%EMUZ%\%FSUAE%\share\fs-uae\shaders") do set BASE=%%~a
for %%a in ("%FSHADR:~0,3%") do if "%%~a"==":N:" call :NBASE
for %%a in ("%FSHADR:~3,99%") do set SHADERNAME=%%~a
for %%a in ("%BASE%\%SHADERNAME%") do set FSSHADER=%%~a
if "%FSSHADER%"=="NONE" "%GBC%\fart.exe" "Config.fs-uae" [SHADER] --remove
if "%FSSHADER%"=="NONE" echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%FSSHADER%"=="NONE" goto :SCANL
"%GBC%\fart.exe" "Config.fs-uae" [SHADER] "%FSSHADER%"
echo."%FSSHADER%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
:SCANL
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "Default;Off;Dark;Light;Offset" /DB=2
if %ERRORLEVEL%==1 goto :GOODSCAN
if %ERRORLEVEL%==2 goto :NOSCAN
if %ERRORLEVEL%==3 goto :DSCAN
if %ERRORLEVEL%==4 goto :LSCAN
if %ERRORLEVEL%==5 goto :NSCAN
goto :QUITOUT
:GOODSCAN
"%GBC%\fart.exe" "Config.fs-uae" [SCANI] 5
"%GBC%\fart.exe" "Config.fs-uae" [SCANV] 10
"%GBC%\fart.exe" "Config.fs-uae" [SCANR] 1
"%GBC%\fart.exe" "Config.fs-uae" [SCANL] 1
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTERTYPE
:NOSCAN
"%GBC%\fart.exe" "Config.fs-uae" [SCANI] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANV] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANR] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTERTYPE
:DSCAN
"%GBC%\fart.exe" "Config.fs-uae" [SCANI] 0
"%GBC%\fart.exe" "Config.fs-uae" [SCANV] 50
"%GBC%\fart.exe" "Config.fs-uae" [SCANR] 1
"%GBC%\fart.exe" "Config.fs-uae" [SCANL] 1
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTERTYPE
:LSCAN
"%GBC%\fart.exe" "Config.fs-uae" [SCANI] 50
"%GBC%\fart.exe" "Config.fs-uae" [SCANV] 30
"%GBC%\fart.exe" "Config.fs-uae" [SCANR] 1
"%GBC%\fart.exe" "Config.fs-uae" [SCANL] 1
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."30">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTERTYPE
:NSCAN
"%GBC%\fart.exe" "Config.fs-uae" [SCANI] 60
"%GBC%\fart.exe" "Config.fs-uae" [SCANV] 80
"%GBC%\fart.exe" "Config.fs-uae" [SCANR] 1
"%GBC%\fart.exe" "Config.fs-uae" [SCANL] 1
echo."60">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."80">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FILTERTYPE

:FILTERTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a filter type" "Nearest;Linear" /DB=2
if %ERRORLEVEL%==1 goto :NEAR
if %ERRORLEVEL%==2 goto :LIN
goto :QUITOUT

:NEAR
"%GBC%\fart.exe" "Config.fs-uae" [FILTERTYPE] nearest
echo."neareset">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSUAECOMPL
:LIN
"%GBC%\fart.exe" "Config.fs-uae" [FILTERTYPE] linear
echo."linear">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FSUAECOMPL

:FSUAECOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1