:ININJECT
if "%P1JOYTYPE%"=="KB" goto :P1KBP2JOY
if "%P2JOYTYPE%"=="KB" goto :P1JOYP2KB
"%GBC%\fart.exe" "Altirra.ini" [ACTVM] "[0C 00 00 00 18 00 00 00]"
goto :INJECT

:P1JOYP2KB
if "%P2JOYTYPE%"=="JOY" goto :P1KBP2JOY
"%GBC%\fart.exe" "Altirra.ini" [ACTVM] "[0C 00 00 00 0A 00 00 00]"
goto :INJECT

:P1KBP2JOY
if "%P2JOYTYPE%"=="JOY" goto :P1KBP2KB
"%GBC%\fart.exe" "Altirra.ini" [ACTVM] "[0C 00 00 00 11 00 00 00]"
goto :INJECT

:P1KBP2KB
"%GBC%\fart.exe" "Altirra.ini" [ACTVM] "[0C 00 00 00 03 00 00 00]"
:INJECT
