if "%P1JOYTYPE%"=="JOY" set P1JOY=joystick
if "%P1JOYTYPE%"=="KB" set P1JOY=none
if "%P2JOYTYPE%"=="JOY" SET P2JOY=joystick
if "%P2JOYTYPE%"=="KB" set P2JOY=none
:ININJECT
"%GBC%\fart.exe" "%BMSX%.ini" [PAD1] "%P1JOY%
"%GBC%\fart.exe" "%BMSX%.ini" [PAD2] "%P2JOY%