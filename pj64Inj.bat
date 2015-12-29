set PJLIB=GFX\Jabo_Direct3D8.dll
set PJPLUG=Jabo's Direct3D8 1.7.0.57-ver5
set PJJOY=1.6 Plugins\NRage_Input_V2.dll
set PJJVER=N-Rage Input Plugin V2 2.3c
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "Project64.cfg" [PJJOY] "Input\Jabo_DInput.dll"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "Project64.cfg" [PJJVER] "Jabo's DirectInput 1.7.0.12"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "Project64.cfg" [PJJOY] "Input\Jabo_DInput.dll"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "Project64.cfg" [PJJVER] "Jabo's DirectInput 1.7.0.12"
"%GBC%\fart.exe" "Project64.cfg" [PJLIB] "%PJLIB%"
"%GBC%\fart.exe" "Project64.cfg" [PJPLUG] "%PJPLUG%"
"%GBC%\fart.exe" "Project64.cfg" [ANIS] 0
"%GBC%\fart.exe" "Project64.cfg" [SAMP] 0
"%GBC%\fart.exe" "Project64.cfg" [VSYNC] 0
"%GBC%\fart.exe" "Project64.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "Project64.cfg" [REZY] %DREZY%
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "Project64.cfg" [REZX] %REZX%
"%GBC%\fart.exe" "Project64.cfg" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

set DFJB=1
if "%P1JOYTYPE%"=="KB" set DFJB=2
if "%P2JOYTYPE%"=="KB" set DFJB=2
"%GBC%\wbox.exe" "RJ_GUI" "Select a Joystick Plugin" "NRage;Jabo" /DB=%DFJB%
if %ERRORLEVEL%==1 goto :NRAGE
if %ERRORLEVEL%==2 goto :JABO
goto :QUITOUT

:NRAGE
"%GBC%\fart.exe" "NRage.ini" [PJJOY] "1.6 Plugins\NRage_Input_V2.dll"
echo."1.6 Plugins\NRage_Input_V2.dll">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "NRage.ini" [PJJVER] "N-Rage Input Plugin V2 2.3c"
echo."N-Rage Input Plugin V2 2.3c">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "NRage.ini" [PAD1TYPE] 1
if "%P1JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "NRage.ini" [PAD1TYPE] 0
if "%P1JOYTYPE%"=="KB" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "NRage.ini" [PAD2TYPE] 1
if "%P2JOYTYPE%"=="JOY" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "NRage.ini" [PAD2TYPE] 0
if "%P2JOYTYPE%"=="KB" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TYPE

:JABO
"%GBC%\fart.exe [PJJOY] "Input\Jabo_DInput.dll"
"%GBC%\fart.exe [PJJVER] "Jabo's DirectInput 1.7.0.12"
goto :TYPE

:TYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a graphics plugin" "Glide;Direct3D;Rice" /DB=2
if %ERRORLEVEL%==1 goto :GLIDE
if %ERRORLEVEL%==2 goto :SHADER
if %ERRORLEVEL%==2 goto :RICE
goto :QUITOUT

:RICE
SET PJLIB=GFX\RiceVideo.dll
set PJPLUG=RiceVideo 0.3.0 RELEASE
"%GBC%\fart.exe" "Project64.cfg" [PJLIB] "%PJLIB%"
"%GBC%\fart.exe" "Project64.cfg" [PJPLUG] "%PJPLUG%"
echo."%PJLIB%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%PJPLUG%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :GAMMA

"%GBC%\wbox.exe" "RJ_GUI" "Select a preset or switch" "Fast;Intense" /DB=2
if %ERRORLEVEL%==1 goto :LOWRICE
if %ERRORLEVEL%==2 goto :HIGHRICE
goto :QUITOUT

:GLIDE
SET PJLIB=GFX\PJ64Glide64.dll
set PJPLUG=Glide64 For PJ64: 2.0.0.1
"%GBC%\fart.exe" "Project64.cfg" [PJLIB] "%PJLIB%"
"%GBC%\fart.exe" "Project64.cfg" [PJPLUG] "%PJPLUG%"
"%GBC%\wbox.exe" "RJ_GUI" "Select a preset or switch" "Fast;Intense" /DB=2
if %ERRORLEVEL%==1 goto :LOWGL
if %ERRORLEVEL%==2 goto :HIGL
goto :QUITOUT

:LOWGL
"%GBC%\fart.exe" "Project64.cfg" [HIGH1] --remove
"%GBC%\fart.exe" "Project64.cfg" [HIGH2] --remove
"%GBC%\fart.exe" "Project64.cfg" [HIGH3] --remove
"%GBC%\fart.exe" "Project64.cfg" [LOW1] "Glide64-buff_clear=0"
"%GBC%\fart.exe" "Project64.cfg" [LOW2] "Glide64-fb_hires=0"
"%GBC%\fart.exe" "Project64.cfg" [LOW3] "Glide64-fog=0"
"%GBC%\fart.exe" "Project64.cfg" [LOW4] "Glide64-swapmode=0"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."Glide64-bufff_clear">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."Glide64-fb_hires=0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."Glide64-fog=0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."Glide64-swapmode=0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA

:HIGL
"%GBC%\fart.exe" "Project64.cfg" [HIGH1] "Glide64-fb_render=1"
"%GBC%\fart.exe" "Project64.cfg" [HIGH2] "Glide64-fb_smart=1"
"%GBC%\fart.exe" "Project64.cfg" [HIGH3] "Glide64-lodmode=1"
"%GBC%\fart.exe" "Project64.cfg" [LOW1] --remove
"%GBC%\fart.exe" "Project64.cfg" [LOW2] --remove
"%GBC%\fart.exe" "Project64.cfg" [LOW3] --remove
"%GBC%\fart.exe" "Project64.cfg" [LOW4] --remove
echo."Glide64-fb_render=1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."Glide64-fb_smart=1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."Glide64-lodmode=1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA


:SHADER
set PJLIB=GFX\Jabo_Direct3D8.dll
set PJPLUG=Jabo's Direct3D8 1.7.0.57-ver5
"%GBC%\fart.exe" "Project64.cfg" [PJLIB] "%PJLIB%"
"%GBC%\fart.exe" "Project64.cfg" [PJPLUG] "%PJPLUG%"
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to enable buffering?" "Double;Double VSYNC;Triple;Triple VSYNC;OFF"
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR2
if %ERRORLEVEL%==3 goto :SHDR3
if %ERRORLEVEL%==4 goto :SHDR4
if %ERRORLEVEL%==5 goto :SHDR0
goto :QUITOUT

:SHDR1
"%GBC%\fart.exe" "Project64.cfg" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT
:SHDR2
"%GBC%\fart.exe" "Project64.cfg" [VSYNC] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT
:SHDR3
"%GBC%\fart.exe" "Project64.cfg" [VSYNC] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT
:SHDR4
"%GBC%\fart.exe" "Project64.cfg" [VSYNC] 6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT
:SHDR0
"%GBC%\fart.exe" "Project64.cfg" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:BLIT
"%GBC%\wbox.exe" "RJ_GUI" "Select an Anistropy Level." "1x;4x;8x;16x;OFF" /DB=5
if %ERRORLEVEL%==1 goto :BLITLOW
if %ERRORLEVEL%==2 goto :BLITMID
if %ERRORLEVEL%==3 goto :BLITON
if %ERRORLEVEL%==4 goto :BLITDX
if %ERRORLEVEL%==5 goto :BLITOFF
goto :QUITOUT

:BLITDX
"%GBC%\fart.exe" "Project64.cfg" [ANIS] 16
echo."16">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITON
"%GBC%\fart.exe" "Project64.cfg" [ANIS] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITMID
"%GBC%\fart.exe" "Project64.cfg" [ANIS] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITLOW
"%GBC%\fart.exe" "Project64.cfg" [ANIS] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITOFF
"%GBC%\fart.exe" "Project64.cfg" [ANIS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Turn enable multi-sampling?" "Low;Medium;High;OFF" /DB=3
if %ERRORLEVEL%==1 goto :SCANLOW
if %ERRORLEVEL%==2 goto :SCANMID
if %ERRORLEVEL%==3 goto :SCANON
if %ERRORLEVEL%==4 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "Project64.cfg" [SAMP] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA
:SCANMID
"%GBC%\fart.exe" "Project64.cfg" [SAMP] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA
:SCANLOW
"%GBC%\fart.exe" "Project64.cfg" [SAMP] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA
:SCANOFF
"%GBC%\fart.exe" "Project64.cfg" [SAMP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA

:GAMMA
:FBACOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1