if "%EXECRT%"=="" "%GBC%\fart.exe" "raine32_sdl.cfg" [EMUPTH] "%GBE%\%EMUZ%\%NEORAINE%"
"%GBC%\fart.exe" "raine32_sdl.cfg" [BIOS] "%NCDBIN%"
if "%INDVALL%"=="1" "%GBC%\fart.exe" "raine32_sdl.cfg" "[SHADR]" --remove
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\neoraineJoy1.bat">>"%GBC%\logs\neoraineJoy1.log"
call "%GBC%\neoraineJoy2.bat">>"%GBC%\logs\neoraineJoy2.log"
set CFGFILE=raine32_sdl.cfg
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "raine32_sdl.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "raine32_sdl.cfg" [REZY] %DREZY%
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "raine32_sdl.cfg" [REZX] %REZX%
"%GBC%\fart.exe" "raine32_sdl.cfg" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%INDVALL%"=="" call "%GBC%\raineShader.bat">>"%GBC%\logs\raineShader.log"
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee