if "%JOYVAL%"=="XPADDER" for %%a in ("%XPROF%") do (
set NPROF=%%~a
set PRFXT=xpadderprofile
set PREFIX=XPD
set JOYVAR=Xpadder
)
if "%JOYVAL%"=="ANTIMIC" for %%a in ("%APROF%") do (
set NPROF=%%~a
set PRFXT=amgp
set PREFIX=AMC
set JOYVAR=antiMicro
)
if "%PREFIX%"=="" SET PREFIX=XPD
set DFLTBTN=1
if "%JOYVAR%"=="" goto :%PREFIX%1OFF
REM if "%JOYVAR%"=="" set DFLTBTN=4
"%GBC%\wbox.exe" "RJ_GUI" "###PLAYER 1###^^-KEYBOARD-^   Default profiles with ''KEYBOARD'' keys are created^^-BLANK-^   This turns Xpadder on but loads an emtpy profile.^^-JOY-^   Emulator configuration files use ''JOYSTICK'' input.^%JOYVAR% profiles have ''Universal Functionality'' ONLY^^-DISABLE-^   No %JOYVAR% profile is created and %JOYVAR% will be turned off in the launcher." "Keyboard;Blank;Joy;Disable" /DB=%DFLTBTN%
if %ERRORLEVEL%==1 goto :%PREFIX%1ON
if %ERRORLEVEL%==2 goto :%PREFIX%1BLNK
if %ERRORLEVEL%==3 goto :%PREFIX%1EMU
if %ERRORLEVEL%==4 goto :%PREFIX%1OFF
if %ERRORLEVEL%==5 goto :HELP1
goto :INDVCONT

:HELP1
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :xpdtst
goto :xpdtst

:AMC1ON
:XPD1ON
set %PREFIX%1CST=1
set %PREFIX%1EF=1
set P1JOYTYPE=KB
SET %PREFIX%1ON=1
goto :xpdtst2

:AMC1BLNK
:XPD1BLNK
set %PREFIX%1CST=1
set %PREFIX%1BLNK=1
set P1JOYTYPE=KB
SET %PREFIX%1ON=1
goto :xpdtst2

:XPD1EMU
set %PREFIX%1CST=1
set P1JOYTYPE=JOY
set %PREFIX%1EMU=1
SET %PREFIX%1ON=1
goto :xpdtst2

:AMC1OFF
:XPD1OFF
set P1JOYTYPE=KB
set %PREFIX%1CST=0
SET %PREFIX%1OFF=1
goto :xpdtst2

:xpdtst2
if "%CSTCONS%"=="%LYNX%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%SEGG%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NVB%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%BWS%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%BWSC%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NEOPKT%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NEOPKTC%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NGB%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NGBC%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NGBA%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%NDS%" goto :%PREFIX%2BLNK
if "%CSTCONS%"=="%PSP%" goto :%PREFIX%2BLNK
set DB=1
set DFLTBTN=1
if "%JOYVAR%"=="" goto :%PREFIX%1OFF
REM if "%JOYVAR%"=="" set DFLTBTN=4
"%GBC%\wbox.exe" "RJ_GUI" "###PLAYER 2###^^-KEYBOARD-^   Default profiles with ''KEYBOARD'' keys are created^^-JOY-^   Emulator configuration files use ''JOYSTICK'' input.^Xpadder profiles have ''Universal Functionality'' ONLY^" "Keyboard;Blank;Joy" /DB=%DFLTBTN%
if %ERRORLEVEL%==1 goto :%PREFIX%2ON
if %ERRORLEVEL%==2 goto :%PREFIX%2BLNK
if %ERRORLEVEL%==3 goto :%PREFIX%2EMU
REM if %ERRORLEVEL%==4 goto :%PREFIX%2OFF
if %ERRORLEVEL%==4 goto :HELP2
goto :INDVCONT

:HELP2
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :xpdtst
goto :xpdtst

:AMC2ON
:XPD2ON
set P2JOYTYPE=KB
set %PREFIX%2CST=1
set %PREFIX%2EF=1
SET %PREFIX%2ON=1
goto :fin

:AMC2BLNK
:XPD2BLNK
set P2JOYTYPE=KB
set %PREFIX%2CST=1
set %PREFIX%2BLNK=1
SET %PREFIX%2ON=1
goto :fin

:AMC2EMU
:XPD2EMU
set P2JOYTYPE=JOY
set %PREFIX%2CST=1
set %PREFIX%2EMU=1
SET %PREFIX%2ON=1
goto :fin

:AMC2OFF
:XPD2OFF
set P2JOYTYPE=KB
set %PREFIX%2CST=0
SET %PREFIX%2OFF=1
goto :fin
:fin