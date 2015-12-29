set GNUM=50,51,48,49,0,2,3,7,1,4,5,9,8,9,10,11
set SNUM=50,51,48,49,0,1,7,0
if "%P1JOYTYPE%"=="JOY" set P1JOY=2
if "%P1JOYTYPE%"=="KB" set P1JOY=0
if "%P2JOYTYPE%"=="JOY" SET P2JOY=2
if "%P2JOYTYPE%"=="JOY" call :P1JOYCHK
if "%P2JOYTYPE%"=="KB" set P2JOY=0
goto :ININJECT

:P1JOYCHK
if "%P1JOYTYPE%"=="JOY" set P2JOY=3
if "%P1JOYTYPE%"=="KB" set GNUM=200,208,203,205,30,31,32,28,44,45,46,47,0,0,0,0
if "%P1JOYTYPE%"=="KB" set SNUM=0,200,0,203,0,28,0,0
exit /b

:ININJECT
if "%P1JOY%"=="0" "%GBC%\fart.exe" "Fusion.ini" [P1JOYTYPE] 0
if "%P1JOY%"=="0" "%GBC%\fart.exe" "Fusion.ini" [P1KEYS] "200,208,203,205,30,31,32,28,44,45,46,47,0,0,0,0"
if "%P1JOY%"=="0" "%GBC%\fart.exe" "Fusion.ini" [P1MSKEYS] "0,200,0,203,0,28,0,0"
if "%P2JOY%"=="0" "%GBC%\fart.exe" "Fusion.ini" [P2JOYTYPE] 0
if "%P2JOY%"=="0" "%GBC%\fart.exe" "Fusion.ini" [P2KEYS] "72,80,75,77,36,37,38,157,49,50,51,52,0,0,0,0"
if "%P2JOY%"=="0" "%GBC%\fart.exe" "Fusion.ini" [P2MSKEYS] "72,80,75,77,36,37,157,0"
if "%P1JOY%"=="2" "%GBC%\fart.exe" "Fusion.ini" [P1JOYTYPE] 2
if "%P1JOY%"=="2" "%GBC%\fart.exe" "Fusion.ini" [P1BUTTONS] "50,51,48,49,0,2,3,7,1,4,5,9,8,9,10,11"
if "%P1JOY%"=="2" "%GBC%\fart.exe" "Fusion.ini" [P1MSBUTTONS] "50,51,48,49,0,1,7,0"
if "%P1JOY%"=="2" "%GBC%\fart.exe" "Fusion.ini" [P1KEYS] "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Fusion.ini" [P2JOYTYPE] %P2JOY%
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Fusion.ini" [P2BUTTONS] "%GNUM%"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Fusion.ini" [P2MSBUTTONS] "%SNUM%"
if "%P2JOYTYPE%"=="JOY""%GBC%\fart.exe" "Fusion.ini" [P2KEYS] "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"