set xpdcancelled=
set XPDINIT=
if "%INITAL%"=="1" goto :PRELOC
set XPLOC=

:setup_xpadDir
if "%XPLOC%"=="1" goto :locate_xpd
if "%XPADDER%"=="DISABLED" goto :extract_xpadder
if "%XPADDER%"=="[XPD]" goto :extract_xpadder
if exist "%XPADDER%" goto :extract_xpadder
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xpadDefDir
if exist "%GBE%\%EMUZ%\Xpadder\Xpadder.exe" goto :xpadEmuDir
goto :extract_xpadder

:xpadEmuDir
for %%A in ("%GBE%\%EMUZ%\Xpadder\Xpadder.exe") do set XPADDER=%%~A
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
set INITAL=
CALL :MARKXPD1
set ANTMIC=DISABLED
call :MARKAMC0
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :setup_continue

:xpadCustDir
for %%A in ("%XPP%\Xpadder.exe") do set XPADDER=%%~A
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
set INITAL=
CALL :MARKXPD1
set ANTMIC=DISABLED
call :MARKAMC0
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :setup_continue

:xpadDefDir
for %%A in ("%PRGX%\Xpadder\Xpadder.exe") do set XPADDER=%%~A
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
set INITAL=
CALL :MARKXPD1
set ANTMIC=DISABLED
call :MARKAMC0
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :setup_continue

:PRELOC
if exist "%GBE%\%EMUZ%\Xpadder\Xpadder.exe" goto :xpadEmuDir
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xpadDefDir

:locate_xpd
set XPLOC=1
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the Xpadder application.^^" "Okay;Download;Skip" /DB=3 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :selectxpd
if %ERRORLEVEL%==2 goto :getxpd
if %ERRORLEVEL%==3 goto :setnoXpd
goto :setnoXpd


:getxpd
call "%GBC%\getXpadapp.bat"
if "%XPADDER%"=="[XPD]" goto :setnoXpd
if "%XPADDER%"=="" goto :setnoXpd
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
set INITAL=
goto :setup_continue

:selectxpd
set INTGET=setnoXpd
set XPADDER=
set XPP=
set XPATH=
set XPD=
for /f "delims=" %%a in ('Wfile.exe "SET XPADDER=" "%GBE%\%EMUZ%\Xpadder\*pad*.exe" "Where is the Xpadder application?" /noquote') do %%a
if "%INITAL%"=="1" set INTGET=:getxpd
if "%XPADDER%"=="[XPD]" goto :inst_Xpad
if "%XPADDER%"=="" goto :setnoXpd
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
for %%a in ("%XPATH%") do set XPP=%%~a
for %%a in ("%XPATH:~0,2%") do set XPD=%%~a
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
set INITAL=
goto :setup_continue

:test_xpadder
if "%XPADDER%"=="" goto :setnoXpd

:inst_Xpad
goto :continue_Xpadder

:no_Xpadder
SET GBX=0
set JOYVAL=
set XPADDER=DISABLED
CALL :MARKXPD0
call "%GBC%\setlocset.bat"

"%GBC%\wbox.exe" "RJ_GUI" "^^Xpadder was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getXapp
if %ERRORLEVEL%==2 goto :setnoXpd
goto :setnoXpd

:getXapp
call "%GBC%\getXpadapp.bat"
goto :extract_xpadder

:DISABLEXPD
:setnoXpd
set JOYVAL=
set XPADDER=DISABLED
CALL :MARKXPD0
if "%INITAL%"=="1" goto :setup_continue
goto :creation

:getXpadder
for %%A in ("%GBC%\net\%XPADR%\%XPADR%.7z") do set XPDCFGXE=%%~A
for /f "delims=" %%a in ('dir /b "%XPDCFGXE%"') do set XPDCFGFILE=%%~nxa
for %%A in ("%XPADDER:~0,-12%") do set XPP=%%~A
"%SEVENZIP%" x -y "%GBC%\net\%XPADR%\%XPDCFGFILE%" -o"%XPP%"
set XPDINIT=1
if "%XPADDER%"=="DISABLED" goto :locate_xpd
goto :extract_xpadder

:initXpadder
set XPDNAM=
set XPD1EF=
set XPD1EMU=
set XPD1BLNK=
set DB=1
if "%DAMVAR%" NEQ "[DMT]" set DB=3
"%GBC%\wbox.exe" "RJ_GUI" "^### PLAYER 1###^^KEYBOARD-^   Default Xpadder profiles include default keyboard mappings.^^BLANK-^   Blank profiles contain no mappings.^^JOY-^   Emulator functionality only is mapped.^" "Keyboard;Blank;Joy;Menu" /DB=%DB%
if %ERRORLEVEL%==1 goto :defXpadder
if %ERRORLEVEL%==2 goto :blnkXpadder
if %ERRORLEVEL%==3 goto :emuXpadder
if %ERRORLEVEL%==4 goto :extract_xpadder	
goto :QUITOUT

:defXpadder
set XPD1BLNK=
set XPD1EMU=
set XPDINIT=1
set XPDNAM=
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPD1EF=1
goto :initXpadder2

:blnkXpadder
SET XPD1EF=
SET XPD1EMU=
set XPDINIT=1
set XPDNAM=Blank
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPD1BLNK=1
goto :initXpadder2

:emuXpadder
SET XPD1EF=
SET XPD1BLNK=
set XPDINIT=1
set XPDNAM=EMU\
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPD1EMU=1
goto :initXpadder2

:initXpadder2
set XPD2EF=
set XPDNAM2=
set XPD2EMU=
set XPD2BLNK=
set DB=1
if "%DAMVAR%" NEQ "[DMT]" set DB=3
"%GBC%\wbox.exe" "RJ_GUI" "^### PLAYER 2###^^KEYBOARD-^   Default Xpadder profiles include default keyboard mappings.^^BLANK-^   Blank profiles contain no mappings.^^JOY-^   Emulator functionality only is mapped.^" "Keyboard;Blank;Joy;Menu" /DB=%DB%
if %ERRORLEVEL%==1 goto :defXpadder2
if %ERRORLEVEL%==2 goto :blnkXpadder2
if %ERRORLEVEL%==3 goto :emuXpadder2
if %ERRORLEVEL%==4 goto :extract_xpadder
goto :QUITOUT

:defXpadder2
set XPD2BLNK=
set XPD2EMU=
set XPDINIT=1
set XPDNAM2=
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPD2EF=1
goto :TEMPL

:blnkXpadder2
SET XPD2EF=
SET XPD2EMU=
set XPDINIT=1
set XPDEMU2=Blank
set XPDNAM2=Blank
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPD2BLNK=1
goto :TEMPL

:emuXpadder2
SET XPD2EF=
SET XPD2BLNK=
set XPDINIT=1
set XPD2EMU=
set XPDNAM2=EMU\
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPD2EMU=1
goto :TEMPL

:checkdefaultXpadder
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xpadDefDir
goto :locate_xpd

:continue_Xpadder
for /f "delims=" %%a in ('Wfolder.exe "SET _xpdtmp=" "%GBE%\%EMUZ%" "Install Xpadder Configs to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set xpddrv-ltr=%_xpdtmp:*:=%
for %%A in ("%_xpdtmp:~0,2%\") do set XPDDIR=%%~A
if "%_xpdtmp%"=="" goto :no_Xpadder
goto :xpddrvltr

:xpddrvltr
for %%A in ("%_xpdtmp%") do set XBE=%%~A
if "%xpddrv-ltr%"=="\" do set XBE=%_xpdtmp:~0,2%
for %%a in ("%XBE%\%XPADR%") do set XPP=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPP%"
CALL :MARKXPD1
set ANTMIC=DISABLED
call :MARKAMC0
call "%GBC%\setlocset.bat"
goto :xpadder_confirm

:xpadder_confirm
for %%A in ("Xpadder is Enabled^") do set MARKXPD=%%~A
"%GBC%\wbox.exe" "RJ_GUI" "^Xpadder configurations have been installed" "Thanks!"  /TM=5
if %ERRORLEVEL%==1 goto :initXpadder2

:extract_xpadder
if "%XPDNAM%"=="" for %%a in ("Player 1 is a Keyboard^") do set XPMEN1=%%~a
if "%XPDNAM%"=="EMU\Other" for %%a in ("Player 1 is a Joystick^") do set XPMEN1=%%~a
if "%XPDNAM%"=="EMU\" for %%a in ("Player 1 is a Joystick^") do set XPMEN1=%%~a
if "%XPDNAM%"=="Blank" for %%a in ("Player 1 is Blank^") do set XPMEN1=%%~a
if "%XPDNAM2%"=="" for %%a in ("Player 2 is a Keyboard^") do set XPMEN2=%%~a
if "%XPDNAM2%"=="EMU\Other" for %%a in ("Player 2 is a Joystick^") do set XPMEN2=%%~a
if "%XPDNAM2%"=="EMU\" for %%a in ("Player 2 is a Joystick^") do set XPMEN2=%%~a
if "%XPDNAM2%"=="Blank" for %%a in ("Player 2 is Blank^") do set XPMEN2=%%~a
for /f "tokens=3 delims= " %%a in ('REG QUERY "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v ConsentPromptBehaviorAdmin') do set OVVLUE=%%~a
SET XPUPDT=;Overwrite
set OVERVERT=OVERRIDE
if "%OVVLUE%"=="0x0" set OVERVERT=REVERT
if "%XPADDER%"=="DISABLED" (set XPDT=Enable) ELSE (set XPDT=Disable)
if "%XPADDER%"=="DISABLED" SET XPUPDT=
"%GBC%\wbox.exe" "RJ_GUI" "^^##########^Xpadder Menu^%MARKXPD%%XPMEN1%%XPMEN2%##########^^  Configure^    Download, Install or locate and enable Xpadder.^^  Initialize^     Create Xpadder profiles for your front-ends.^^  Re/Generate^     Create and update profiles for a Console.^^  %OVERVERT%^     Override/Reinstate the annoying dialoge box Windows UAC generates when using xpadder.^^Disable^     Disable Xpadder^^" "Configure;Initialize;Re/Generate;%OVERVERT%;Disable;MainMenu"
if %ERRORLEVEL%==1 goto :instXpadder
if %ERRORLEVEL%==2 goto :initialization
if %ERRORLEVEL%==3 goto :extracting_profiles
if %ERRORLEVEL%==4 goto :%OVERVERT%
if %ERRORLEVEL%==5 goto :DISABLEXPD
if %ERRORLEVEL%==6 goto :creation
goto :creation

:instXpadder
call "%GBC%\getXpadapp.bat"
if "%XPADDER%"=="[XPD]" goto :setnoXpd
if "%XPADDER%"=="" goto :setnoXpd


:initialization
if "%XPADDER%"=="DISABLED" goto :extract_xapdder
if "%XPADDER%"=="[XPD]" goto :extract_xapdder
if "%XPADDER%"=="" goto :extract_xapdder
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
set ANTMIC=DISABLED
call :MARKAMC0
call "%GBC%\setlocset.bat"
goto :extract_xpadder

:extracting_profiles
SET INDVPROP=
if "%XPADDER%"=="DISABLED" goto :locate_xpd
if "%XPADDER%"=="[XPD]" (goto :checkdefaultXpadder)
"%SEVENZIP%" e -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBC%\net\%XPROF%"
del /q "%GBC%\conex.ini"
echo.^>"%GBC%\conex.ini"
echo.-------->>"%GBC%\conex.ini"
echo.Other>>"%GBC%\conex.ini"
echo.-------->>"%GBC%\conex.ini"
echo.ALL CONSOLES>>"%GBC%\conex.ini"
echo.-------->>"%GBC%\conex.ini"
copy /y "%GBC%\conSelect.set" "%GBC%\conSelect.tmp"
copy /b "%GBC%\conex.ini"+"%GBC%\conSelect.tmp" "%GBC%\conSelect.ini"
del /q "%GBC%\conex.ini"
del /q "%GBC%\conSelect.tmp"

goto :initXpadder

:XPDBOTH
"%GBC%\wbox.exe" "RJ_GUI" "Select a Profile Type" "Blank;Joystick;Keyboard" /DB=2
if %ERRORLEVEL%==1 goto :BPROP
if %ERRORLEVEL%==2 goto :JPROP
if %ERRORLEVEL%==3 goto :KPROP
goto :extract_xpadder

:BROP
set XPDNAM=Blank
set XPDNAM2=Blank
goto :DESTINATION

:JPROP
set XPDNAM=EMU\
set XPDNAM2=EMU\
goto :TEMPL

:KPROP
set XPDNAM=
set XPDNAM2=
goto :TEMPL

:XPDSEL
:READD
set /a PLAYERN=1
SET Player1=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player1=" "%GBC%\net\%XPROF%\*.xpadderprofile" "Select Player 1" /noquote') do %%a
if "%Player1%"=="" goto :OPEN
SET Player2=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player2=" "%GBC%\net\%XPROF%\*.xpadderprofile" "Select Player 2" /noquote') do %%a
if "%Player2%"=="" goto :CONFIRMPROP
SET Player3=
set /a PLAYERN+=1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player3=" "%GBC%\net\%XPROF%\*.xpadderprofile" "Select Player 3" /noquote') do %%a
if "%Player3%"=="" goto :CONFIRMPROP
SET Player4=
set /a PLAYERN+=1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player4=" "%GBC%\net\%XPROF%\*.xpadderprofile" "Select Player 4" /noquote') do %%a
if "%Player4%"=="" goto :CONFIRMPROP
set /a PLAYERN+=1

:CONFIRMPROP
"%GBC%\wbox.exe" "RJ_GUI" "You have selected %PLAYERN% profiles" "Reset;Confirm" /db=2
if %ERRORLEVEL%==1 goto :READD
if %ERRORLEVEL%==2 goto :CONFIRMED
goto :extract_xpadder

:CONFIRMED
SET INDVPROP=1
goto :DESTINATION

:TEMPL
"%GBC%\Wselect.exe" "%GBC%\conSelect.ini" "Select Template" "set XPDSEL=$item" > "%GBC%\conex.cmd"
if %errorlevel%==0 goto :extract_xpadder
CALL "%GBC%\conex.cmd"
if "%XPDSEL%"=="--------" goto :extracting_profiles
if "%XPDSEL%"=="ALL CONSOLES" goto :EXTRACTALL
for %%a in ("%XPDNAM%%XPDSEL%") do set XPDNAM=%%~a
for %%a in ("%XPDNAM2%%XPDSEL%") do set XPDNAM2=%%~a
if "%XPDSEL%"=="Other" call :XPDSEL
SET XPDXST=

:DESTINATION
echo.-------->"%GBC%\conex.ini"
for /f "delims="  %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\conex.ini"
"%GBC%\Wselect.exe" "%GBC%\conex.ini" "Select Destination" "set XPDDES=$item" > "%GBC%\conex.cmd"
CALL "%GBC%\conex.cmd"
if "%XPDDES%"=="" goto :extract_xpadder
if "%XPDDES%"=="--------" goto :DESTINATION
SET XPDXST=1
goto :EXTRACTIT

:OVERRIDE
set OVVLUE=0x0
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f /v ConsentPromptBehaviorAdmin" /t REG_DWORD /d %OVVLUE%
"%GBC%\wbox.exe" "RJ_GUI" "Value Changed" "OK" /TM=2
goto :extract_xpadder

:REVERT
set OVVLUE=0x2
REG ADD "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f /v ConsentPromptBehaviorAdmin" /t REG_DWORD /d %OVVLUE%
"%GBC%\wbox.exe" "RJ_GUI" "Value Changed" "OK" /TM=2
goto :extract_xpadder

:EXTRACTIT
if "%INDVPROP%"=="1" goto :MOTIG
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing %XPDNAM% %JDRVT% Profiles"  /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDDES%"') do copy /y "%GBC%\net\%XPROF%\%XPDNAM%\Player1.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDDES%\%%~a"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDDES%"') do copy /y "%GBC%\net\%XPROF%\%XPDNAM2%\Player2.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDDES%\%%~a"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
if %ERRORLEVEL%==1 goto :extract_xpadder
goto :extract_xpadder

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:MOTIG
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating profiles" /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDDES%"') do (
set GAMFLDR=%%~a
call :P1
if "%Player2%" NEQ "" call :P2
if "%Player3%" NEQ "" call :P3
if "%Player4%" NEQ "" call :P4
)
goto :COMPLETE

:P1
copy /y "%Player1%" "%GBG%\%GAM%\%CONS%\%XPDDES%\%GAMFLDR%\Player1.xpadderprofile"
exit /b
:P2
copy /y "%Player2%" "%GBG%\%GAM%\%CONS%\%XPDDES%\%GAMFLDR%\Player2.xpadderprofile"
exit /b
:P3
copy /y "%Player3%" "%GBG%\%GAM%\%CONS%\%XPDDES%\%GAMFLDR%\Player3.xpadderprofile"
exit /b
:P4
copy /y "%Player4%" "%GBG%\%GAM%\%CONS%\%XPDDES%\%GAMFLDR%\Player4.xpadderprofile"
exit /b
:COMPLETE
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:2
goto :extract_xpadder


:EXTRACTALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing ALL Xpadder Profiles"  /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
SET XPDONE=
SET XPDSEL=%%~a
call :GETNAME
)
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do del /q "%GBG%\%GAM%\%CONS%\%%~a\Player*.xpadderprofile"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :extract_xpadder

:GETNAME
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET XPDNAMD=%%~a
if "%XPDSEL%"=="%%~a" CALL :EXTRACTXPD
)
if "%XPDONE%" NEQ "1" CALL :EXTRACTOXPD
exit /b

:EXTRACTXPD
for %%a in ("%XPDNAMD%%XPDNAM%") do SET XPDNAM=%%~a
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDNAM%"') do copy /y "%GBC%\net\%XPROF%\%XPDNAM%\Player1.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDSEL%\%%~a"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDNAM2%"') do copy /y "%GBC%\net\%XPROF%\%XPDNAM2%\Player2.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDSEL%\%%~a"
SET XPDONE=1
exit /b

:EXTRACTOXPD
if "%XPDNAM%"=="" set PLTYP1=Other
if "%XPDNAM%"=="EMU\" set PLTYP1=EMU\Other
if "%XPDNAM%"=="Blank" set PLTYP1=Blank
if "%XPDNAM2%"=="" set PLTYP2=Other
if "%XPDNAM2%"=="EMU\" set PLTYP2=EMU\Other
if "%XPDNAM2%"=="Blank" set PLTYP2=Blank
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDSEL%"') do (
copy /y "%GBC%\net\%XPROF%\%PLTYP1%\Player1.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDSEL%\%%~a"
copy /y "%GBC%\net\%XPROF%\%PLTYP2%\Player2.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDSEL%\%%~a"
)
exit /b


:overwritexpd
if "%XPADDER%"=="DISABLED" goto :locate_xpd
if "%XPADDER%"=="[XPD]" (goto :checkdefaultXpadder)
del /s /q "%GBG%\%GAM%\%CONS%\*.xpadderprofile"
goto :xpad_injection

:DisableXpadder
set JOYVAL=
set XPADDER=DISABLED
CALL :MARKXPD0
call "%GBC%\setlocset.bat"
"%GBC%\wbox.exe" "RJ_GUI" "Xpadder will not be configured" "Okay"  /BW=150 /TM=2
if %ERRORLEVEL%==1 goto :creation	
goto :QUITOUT

:xpad_injection
%GBD%
cd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Xpadder Profiles"  /marquee
CALL "%GBC%\deleteEmpty.bat"
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
CALL "%GBC%\generateXpadderProfiles.bat"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Xpadder Profiles"  /marquee
CALL "%GBC%\customGenerateXpadderProfiles.bat"
SET xpdskp=
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
%GBD%
"%GBC%\wbox.exe" "RJ_GUI" "^^Xpadder Profiles have been installed.^^" "Thanks!"  /BW=150 /TM=5
if %ERRORLEVEL%==1 goto :creation

goto :creation

:MARKXPD0
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
set JOYVAL=
set XPADDER=DISABLED
exit /b
:MARKXPD1
set JOYVAL=XPADDER
for %%A in ("Xpadder is Enabled^") do set MARKXPD=%%~A
for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
set ANTMIC=DISABLED
SET XPDEF=1
exit /b
:MARKAMC0
for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
set ANTMIC=DISABLED
exit /b
:MARKAMC1
set JOYVAL=
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
set XPADDER=DISABLED
SET XPDEF=0
exit /b


:QUITOUT
set xpdcancelled=1
:setup_continue

:creation