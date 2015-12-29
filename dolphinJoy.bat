
set SDLT=
set SDL2T=
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
set EXTN1=nunchuck
set EXTN2=nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION1] nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION2] nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION3] nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION4] nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS1] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS2] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS3] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS4] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT1] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT2] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT3] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT4] "0.000000"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "*New.ini" [INPUT1TYPE] "XInput/0/Gamepad"
if "%P1JOYTYPE%"=="JOY" echo."XInput/0/Gamepad">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "*New.ini" [INPUT1TYPE] "DInput/0/Keyboard Mouse"
if "%P2JOYTYPE%"=="KB" echo."DInput/0/Keyboard Mouse">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P2JOYTYPE%"=="JOY" call :P1TST
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "DInput/0/Keyboard Mouse"
if "%P2JOYTYPE%"=="KB" echo."DInput/0/Keyboard Mouse">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ININJECT

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
goto :ININJECT
exit /b

:P1TST
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "XInput/0/Gamepad"
if "%P1JOYTYPE%"=="KB" echo."XInput/0/Gamepad">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "XInput/1/Gamepad"
if "%P1JOYTYPE%"=="JOY" echo."XInput/1/Gamepad">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "*New.ini" [INPUT1TYPE] "DInput/0/Keyboard Mouse"
if "%P1JOYTYPE%"=="KB" echo."DInput/0/Keyboard Mouse">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="KB" goto :PLAYER1TYPE

:PLAYER1
"%GBC%\wbox.exe" "RJ_GUI" "Select the input type for Player 1" "SDL;XINPUT" /DB=2
if %ERRORLEVEL%==1 goto :SDLIN
if %ERRORLEVEL%==2 goto :XINP
goto :QUITOUT

:XINP
set P1JOY=XInput/0/Gamepad
"%GBC%\fart.exe" "*New.ini" [INPUT1TYPE] "XInput/0/Gamepad"
"%GBC%\fart.exe" echo."XInput/0/Gamepad">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER1TYPE

:SDLIN
set SDLT=%SDL%
set P1JOY=SDL/0/XInput Controller #1
"%GBC%\fart.exe" "*New.ini" [INPUT1TYPE] "SDL/0/XInput Controller #1"
"%GBC%\fart.exe" echo."SDL/0/XInput Controller #1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER1TYPE

:PLAYER1TYPE
if "%CSTCONS%"=="Nintendo GameCube" goto :Classic
"%GBC%\wbox.exe" "RJ_GUI" "Select Joystick Type for Player 1" "Nunchuck;Classic" /DB=1
if %ERRORLEVEL%==1 goto :NUNCHUCK
if %ERRORLEVEL%==2 goto :Classic
goto :QUITOUT

:NUNCHUCK
set EXTNW=nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION1] "Nunchuck"
"%GBC%\fart.exe" echo."nunchuck">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER2
:Classic
set EXTNW=Classic
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION1] "Classic"
"%GBC%\fart.exe" echo."Classic">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER2

:PLAYER2
if "%P2JOYTYPE%"=="KB" goto :P2KB
"%GBC%\wbox.exe" "RJ_GUI" "Select the input type for Player 2" "SDL;XINPUT" /DB=2
if %ERRORLEVEL%==1 goto :SDLIN2
if %ERRORLEVEL%==2 goto :XINP2
goto :QUITOUT

:XINP2
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "XInput/0/Gamepad"
if "%P1JOYTYPE%"=="KB" echo."XInput/0/Gamepad">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "XInput/1/Gamepad"
if "%P1JOYTYPE%"=="JOY" echo."XInput/1/Gamepad">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER2TYPE

:SDLIN2
set SDL2T=SDL
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "SDL/1/XInput Controller #1"
if "%P1JOYTYPE%"=="JOY" echo."SDL/1/XInput Controller #1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "SDL/0/XInput Controller #1"
if "%P1JOYTYPE%"=="KB" echo."SDL/0/XInput Controller #1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOY%"=="SDL/0/XInput Controller #1" "%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "SDL/1/XInput Controller #2"
if "%P1JOY%"=="SDL/0/XInput Controller #1" echo."SDL/1/XInput Controller #2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :QUITOUT

:P2KB
"%GBC%\fart.exe" "*New.ini" [INPUT2TYPE] "DInput/0/Keyboard Mouse"
echo."DInput/0/Keyboard Mouse">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PLAYER2TYPE

:PLAYER2TYPE
if "%CSTCONS%"=="Nintendo GameCube" goto :Classic2
"%GBC%\wbox.exe" "RJ_GUI" "Select Joystick Type for Player 2" "Nunchuck;Classic" /DB=1
if %ERRORLEVEL%==1 goto :NUNCHUCK2
if %ERRORLEVEL%==2 goto :Classic2
goto :QUITOUT

:NUNCHUCK2
set EXTN2W=nunchuck
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION2] "Nunchuck"
echo."nunchuck">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIITEST
:Classic2
set EXTN2W=Classic
"%GBC%\fart.exe" "WiimoteNew.ini" [EXTENSION2] "Classic"
echo."Classic">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIITEST

:WIITEST
if "%ENTNW%"=="nunchuck" goto :NUNTYPE
if "%ENTN2W%"=="nunchuck" goto :NUNTYPE
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS1] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS2] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS3] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS4] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT1] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT2] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT3] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT4] "0.000000"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ININJECT
:NUNTYPE
if "%CSTCONS%" NEQ "%WII%" goto :INIJECT
"%GBC%\wbox.exe" "RJ_GUI" "Sideways Wiimote?" "Sideways;Regular" /DB=1
if %ERRORLEVEL%==1 goto :SIDE
if %ERRORLEVEL%==2 goto :REG
goto :QUITOUT

:SIDE
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS1] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS2] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS3] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS4] "1.000000"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :UPR
:REG
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS1] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS2] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS3] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [SIDEWAYS4] "0.000000"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :UPR

:UPR
"%GBC%\wbox.exe" "RJ_GUI" "Upright Wiimote?" "Upright;Regular" /DB=2
if %ERRORLEVEL%==1 goto :UPRIGHT
if %ERRORLEVEL%==2 goto :NOTUPR
goto :QUITOUT

:UPRIGHT
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT1] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT2] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT3] "1.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT4] "1.000000"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INIJECT
:NOTUPR
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT1] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT2] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT3] "0.000000"
"%GBC%\fart.exe" "WiimoteNew.ini" [UPRIGHT4] "0.000000"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0.000000">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ININJECT

:ININJECT
if "%CSTCONS%"=="%WII%" call :WIIREM
if "%P1JOYTYPE%"=="JOY" call "%GBC%\NGCJoy1.bat">>"%GBC%\logs\NGCJoy1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\NGCKb1.bat">>"%GBC%\logs\NGCKb1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\NGCJoy2.bat">>"%GBC%\logs\NGCJoy2.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\NGCKb2.bat">>"%GBC%\logs\NGCKb2.log"
set CFGFILE=GCPadNew.ini
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
exit /b
:WIIREM
if "%P1JOYTYPE%"=="JOY" call "%GBC%\Wii%EXTNW%1%SDLT%.bat">>"%GBC%\logs\Wii%EXTNW%1%SDLT%.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\WiiKb1.bat">>"%GBC%\logs\WiiKb1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\Wii%EXTN2W%2%SDL2T%.bat">>"%GBC%\logs\Wii%EXTN2W%2%SDL2T%.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\WiiKb2.bat">>"%GBC%\logs\WiiKb2.log"
set CFGFILE=WiimoteNew.ini
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b
:QUITOUT
set CANCELLED=1