if "%INDVALL%"=="1" "%GBC%\fart.exe" "dosbox.conf" "[SHADR]" --remove
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
if "%CEMU%"=="%MSBOX%" call "%GBC%\dosboxJoy1.bat">>"%GBC%\logs\dosboxJoy1.log"
if "%CEMU%"=="%MSBOX%" 	call "%GBC%\dosboxJoy2.bat">>"%GBC%\logs\dosboxJoy2.log"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "dosbox.conf" "[JOYTYPE]" none
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "dosbox.conf" "[JOYTYPE]" auto
set CFGFILE=dosbox.conf
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "dosbox.conf" [V-SYNC] off
"%GBC%\fart.exe" "dosbox.conf" [REZL] original
"%GBC%\fart.exe" "dosbox.conf" [HERTZ] --remove
"%GBC%\fart.exe" "dosbox.conf" "[PIXSHD]" --remove
"%GBC%\fart.exe" "dosbox.conf" [VDRIVER] "surface"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:RESOLUTION
"%GBC%\wbox.exe" "RJ_GUI" "Set the resolution" "%DREZX%x%DREZY%;Set" /DB=1
if %errorlevel%==1 goto :REZOK
if %errorlevel%==2 goto :REZSET
goto :QUITOUT

:REZOK
for /f "tokens=5 delims= " %%a in ('"%GBC%\QRES.exe" /v/s') do (
set HERTZ=%%a
)
"%GBC%\fart.exe" "dosbox.conf" [REZL] original
echo."original">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:REZSET
"%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "dosbox.conf" [REZL] %REZX%x%REZY%
echo."%REZX%x%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :VON
if %errorlevel%==2 goto :VOFF
goto :QUITOUT

:VON
"%GBC%\fart.exe" "dosbox.conf" [V-SYNC] on
"%GBC%\fart.exe" "dosbox.conf" [HERTZ] %HERTZ%
echo."on">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRIVER

:VOFF
"%GBC%\fart.exe" "dosbox.conf" [V-SYNC] off
echo."off">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "dosbox.conf" [HERTZ] --remove
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DRIVER

:DRIVER
"%GBC%\wbox.exe" "RJ_GUI" "Select a Videodriver" "Surface;Select" /DB=1
if %errorlevel%==1 goto :SURFACE
if %errorlevel%==2 goto :SELDRIV
goto :QUITOUT

:SURFACE
"%GBC%\fart.exe" "dosbox.conf" [VDRIVER] "surface"
echo."surface">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:SELDRIV
echo.direct3d>"%GBC%\vdriv.ini"
echo.surface>>"%GBC%\vdriv.ini"
echo.overlay>>"%GBC%\vdriv.ini"
echo.ddraw>>"%GBC%\vdriv.ini"
echo.opengl>>"%GBC%\vdriv.ini"
echo.openglnb>>"%GBC%\vdriv.ini"
del /q "%GBC%\vdriv.cmd"
"%GBC%\Wselect.exe" "%GBC%\vdriv.ini" "Select a driver" "set VDRIV=$item" > "%GBC%\vdriv.cmd"
call "%GBC%\vdriv.cmd"
if "%VDRIV%"=="" exit /b
"%GBC%\fart.exe" "dosbox.conf" [VDRIVER] "%VDRIV%"
echo."%VDRIV%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :SHADER


:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Select a shader" "Select;None" /DB=2
if %errorlevel%==1 goto :SELSHAD
if %errorlevel%==2 goto :NOSHAD
goto :QUITOUT

:NOSHAD
"%GBC%\fart.exe" "dosbox.conf" "[PIXSHD]" --remove
echo." ">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MSBOXCOMPL
:SELSHAD
if "%INDVALL%"=="" call "%GBC%\MSBOXShader.bat">>"%GBC%\logs\MSBOXShader.log"
goto :MSBOXCOMPL

:MSBOXCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a

%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
