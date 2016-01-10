:CFGOPTION
if "%CSTCONS%"=="%WIN32%" goto :GGOFF
if "%CSTCONS%"=="%TAITX%" goto :GGOFF
if "%CSTCONS%"=="%FLASH%" goto :GGOFF
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^#### PER-GAME LAUNCHERS ####^Would you like to enable^''per-game''^configurations for this console and emulator?" "Per-Game;Global" /DB=1
if %ERRORLEVEL%==1 goto :GGON
if %ERRORLEVEL%==2 goto :GGOFF
goto :INDVCONT

:GGON
SET GGON=1
goto :MONITORS

:GGOFF
SET GGOFF=1
goto :MONITORS

:MONITORS
set DB=2
if /i "%CSTCONS%"=="%HIKRU%" goto :MMONON
if /i "%CSTCONS%"=="%GALCO%" goto :MMONON
if /i "%CSTCONS%"=="%ATMS%" goto :MMONON
if /i "%CSTCONS%"=="%NAOMI%" goto :MMONON
if /i "%GBM%"=="1" set DB=1
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^Are you using a multi-monitor configuration?" "Multi;Single" /DB=%DB%
if %ERRORLEVEL%==1 goto :MMONON
if %ERRORLEVEL%==2 goto :MMONOFF
goto :INDVCONT

:MMONON
set MMCST=1
SET MMON=1
goto :xpdtst

:MMONOFF
set MMCST=0
SET MMONOFF=1

:xpdtst
set DB=1
if "%DAMVAR%" NEQ "[DMT]" set DB=3
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
set DFLTBTN=3
if "%JOYVAR%"=="" goto :%PREFIX%1OFF
REM if "%JOYVAR%"=="" set DFLTBTN=4
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^###PLAYER 1###^^-KEYBOARD-^   Default %JOYVAR% profiles with ''KEYBOARD'' keys are created^^-BLANK-^   This turns %JOYVAR% on but loads an emtpy profile.^^-JOY-^   Emulator configuration files are set for joystick input and profiles for universal functionality are created.^^-DISABLE-^   No %JOYVAR% profile is created and %JOYVAR% will be turned off in the launcher." "Keyboard;Blank;Joy;Disable" /DB=%DFLTBTN%
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

:AMCOFF
:XPDOFF
set %PREFIX%OFF=1
set P1JOYTYPE=KB
set %PREFIX%1CST=0
SET %PREFIX%1ON=
SET %PREFIX%1OFF=1
set P2JOYTYPE=KB
set %PREFIX%2CST=0
SET %PREFIX%2ON=			
SET %PREFIX%2OFF=1
goto :dtest

:AMC1ON
:XPD1ON
set %PREFIX%1CST=1
set %PREFIX%1EF=1
set P1JOYTYPE=KB
SET %PREFIX%1ON=1
SET %PREFIX%1OFF=
goto :xpdtst2

:AMC1BLNK
:XPD1BLNK
set %PREFIX%1CST=1
set %PREFIX%1BLNK=1
set P1JOYTYPE=KB
SET %PREFIX%1ON=1
SET %PREFIX%1OFF=
goto :xpdtst2

:AMC1EMU
:XPD1EMU
set %PREFIX%1CST=1
set P1JOYTYPE=JOY
set %PREFIX%1EMU=1
SET %PREFIX%1ON=1
SET %PREFIX%1OFF=
goto :xpdtst2

:AMC1OFF
:XPD1OFF
set P1JOYTYPE=KB
set XPD1CST=0
SET XPD1ON=
SET XPD1OFF=1
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
REM if "%XPADDER%"=="DISABLED" goto :%PREFIX%OFF
set DB=1
if "%DAMVAR%" NEQ "[DMT]" set DB=3
set DFLTBTN=3
REM if "%JOYVAR%"=="" set DFLTBTN=4
if "%JOYVAR%"=="" goto :%PREFIX%2OFF
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^###PLAYER 2###^^-KEYBOARD-^   Default profiles with ''KEYBOARD'' keys are created^^-BLANK-^   This turns Xpadder on but loads an emtpy profile.^^-JOY-^   Emulator configuration files use ''JOYSTICK'' input.^Xpadder profiles have ''Universal Functionality'' ONLY^" "Keyboard;Blank;Joy" /DB=%DFLTBTN%
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
SET %PREFIX%2OFF=
goto :dtest

:AMC2BLNK
:XPD2BLNK
set P2JOYTYPE=KB
set %PREFIX%2CST=1
set %PREFIX%2BLNK=1
SET %PREFIX%2ON=1
SET %PREFIX%2OFF=
goto :dtest

:AMC2EMU
:XPD2EMU
set P2JOYTYPE=JOY
set %PREFIX%2CST=1
set %PREFIX%2EMU=1
SET %PREFIX%2ON=1
SET %PREFIX%2OFF=
goto :dtest

:AMC2OFF
:XPD2OFF
set P2JOYTYPE=KB
set %PREFIX%2CST=0
SET %PREFIX%2ON=
SET %PREFIX%2OFF=1
goto :dtest

:dtest
SET DB=1
if "%CSTCONS%"=="ALL CONSOLES (ROMULATE)" goto :dtquery
if "%CSTCONS%"=="Other" goto :dtquery
if /i "%CSTCONS%"=="%FMTOWNS%" goto :dtquery
if /i "%CSTCONS%"=="%SSAT%" goto :dtquery
if /i "%CSTCONS%"=="%PS1%" goto :dtquery
if /i "%CSTCONS%"=="%PS2%" goto :dtquery
goto :DTOFF

:dtquery
set DTBUT=2
if "%CSTCONS%"=="%SSAT%" set DTBUT=1
if "%CSTCONS%"=="%FMTOWNS%" set DTBUT=1
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^Would you like to enable Daemon Tools for this console?" "Yes;No" /DB=%DTBUT%
if %ERRORLEVEL%==1 goto :DTON
if %ERRORLEVEL%==2 goto :DTOFF
goto :INDVOUT

:DTON
set DTCST=1
SET DTON=1
goto :reprocess

:DTOFF
set DTCST=0
SET DTOFF=1

:reprocess
if "%INDVGAME%"=="1" goto :INDVOUT
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^### LAUNCHER CREATION ###^^-INITIALIZE-^   Will delete and recreate all launchers.^^-UPDATE	-^   Will only create launchers for games without one." "Initialize;Update" /DB=2
if %ERRORLEVEL%==1 goto :RECREATE
if %ERRORLEVEL%==2 goto :ONLYNEW
goto :INDVCONT

:RECREATE
SET RECONB=
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.bat"
del /s /q "%CUSTCONSPTH%\*.bat"
goto :CONFIGSET

:ONLYNEW
SET RECONB=1

:CONFIGSET
SET RECONF=
if "%GGOFF%"=="1" goto :NOCONFIG
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^### PER-GAME CONFIGURATIONS###^^-INITIALIZE-^Recreates all configuration files for this console.^^-SKIP-^No confuration files will be created." "Initialize;Skip;Update" /DB=3
if %ERRORLEVEL%==1 goto :RECONFIG
if %ERRORLEVEL%==2 goto :NOCONFIG
if %ERRORLEVEL%==3 goto :UPONLY
goto :INDVCONT
 
:UNHELP
"%GBC%\docs\select.html"
"%GBC%\wbox.exe" "RJ_GUI" "Help is opening" "OK" /TM=3
goto :CONFIGSET


:RECONFIG
for %%a in ("copy /y") do set COPYTYPE=%%~a
SET RECONF=1
goto :emuselect
:NOCONFIG
for %%a in ("copy /y") do set COPYTYPE=%%~a
set RECONF=
goto :emuselect
:UPONLY
set RECONF=1
for %%a in ("echo n|copy /-y") do set COPYTYPE=%%~a
goto :emuselect

:emuselect
REM if "%CCONS%"=="" call "%GBC%\assignEmu.bat">>"%GBC%\logs\assignEmu.log"
call "%GBC%\assignEmu.bat">>"%GBC%\logs\assignEmu.log"
goto :INDVOUT

:INDVCONT
set CANCELLED=1

:INDVOUT