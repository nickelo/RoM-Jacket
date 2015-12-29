%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
if "%P1JOYTYPE%"=="KB" call "%GBC%\sprm3KB1.bat">>"%GBC%\logs\sprm3Kb1.log"
if "%P1JOYTYPE%"=="JOY" call "%GBC%\sprm3Joy1.bat">>"%GBC%\logs\sprm3Joy1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\sprm3KB2.bat">>"%GBC%\logs\sprm3Kb2.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\sprm3Joy2.bat">>"%GBC%\logs\sprm3Joy2.log"
set CFGFILE=%SPRM3%.ini
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
set REZX=
set REZY=
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
set REZX=%DREZX%
set REZY=%DREZY%
"%GBC%\fart.exe" "%SPRM3%.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "%SPRM3%.ini" [REZY] "%REZY%"
if "%ARPOP%"=="64" "%GBC%\fart.exe" "%SPRM3%.ini" [ARPOP] 1
if "%ARPOP%"=="32" "%GBC%\fart.exe" "%SPRM3%.ini" [ARPOP] 0
set INPUTTYPE=dinput
"%GBC%\fart.exe" "%SPRM3%.ini" [SPEED] 25
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "%SPRM3%.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "%SPRM3%.ini" [REZY] "%REZY%"
if "%ARPOP%"=="64" "%GBC%\fart.exe" "%SPRM3%.ini" [ARPOP] 1
if "%ARPOP%"=="32" "%GBC%\fart.exe" "%SPRM3%.ini" [ARPOP] 0
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%ARPOP%"=="64" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%ARPOP%"=="32" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:SPEED
"%GBC%\wbox.exe" "RJ_GUI" "Set the Processor speed" "Slow;Default;Fast;Crazy;Insane;Ludicrous" /DB=2
if %ERRORLEVEL%==1 goto :SLOW
if %ERRORLEVEL%==2 goto :DEFSPEED
if %ERRORLEVEL%==3 goto :FAST
if %ERRORLEVEL%==4 goto :INSANE
if %ERRORLEVEL%==5 goto :LUDICROUS
goto :QUITOUT
:SLOW
set PPCSPD=5
"%GBC%\fart.exe" "%SPRM3%.ini" [SPEED] "%PPCSPD%"
echo."%PPCSPD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTTYPE
:DEFSPEED
set PPCSPD=25
"%GBC%\fart.exe" "%SPRM3%.ini" [SPEED] "%PPCSPD%"
echo."%PPCSPD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTTYPE
:FAST
set PPCSPD=100
"%GBC%\fart.exe" "%SPRM3%.ini" [SPEED] "%PPCSPD%"
echo."%PPCSPD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTTYPE
:INSANE
set PPCSPD=500
"%GBC%\fart.exe" "%SPRM3%.ini" [SPEED] "%PPCSPD%"
echo."%PPCSPD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTTYPE
:LUDICROUS
set PPCSPD=1000
"%GBC%\fart.exe" "%SPRM3%.ini" [SPEED] "%PPCSPD%"
echo."%PPCSPD%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INPUTTYPE
:INPUTTYPE
set INPTT=3
if "%P1JOYTYPE%"=="JOY" set INPTT=1
if "%P2JOYTYPE%"=="JOY" set INPTT=1
"%GBC%\wbox.exe" "RJ_GUI" "Select the input type" "Xinput;Directinput;Rawinput;SDL" /DB=%INPTT%
if %ERRORLEVEL%==1 goto :XINPUT
if %ERRORLEVEL%==2 goto :DINPUT
if %ERRORLEVEL%==3 goto :RINPUT
if %ERRORLEVEL%==4 goto :SDL
goto :QUITOUT
:XINPUT
set INPUTTYPE=xinput
echo."%INPUTTYPE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPRM3COMPL
:DINPUT
set INPUTTYPE=dinput
echo."%INPUTTYPE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPRM3COMPL
:RINPUT
set INPUTTYPE=rawinput
echo."%INPUTTYPE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPRM3COMPL
:SDL
set INPUTTYPE=sdl
echo."%INPUTTYPE%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SPRM3COMPL

:SPRM3COMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1