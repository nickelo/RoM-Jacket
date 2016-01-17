:UNRAVEL
CHCP 1252
setlocal disableDelayedExpansion
MODE CON: COLS=15 LINES=1
SET VERSION=v.99i Unpushed

SET REALWINDOWS=1
for /f "tokens=2 delims=," %%a in ('wmic os get caption /format:csv') do SET WINGET=%%~a
for /f "tokens=3 delims= " %%a in ("%WINGET%") do set WINVER=%%~a
if exist "Z:\bin\sh" set REALWINDOWS=0
set WSRT=
if "%REALWINDOWS%"=="0" set WINVER=XP
set LINKR=WINV
set KILLTSK=taskkill
set KILLOPT=/f /im
set KILLPID=/F /PID
if "%WINVER%"=="XP" call :XPVARS
goto :KILL

:XPVARS
set LINKR=WINLEG
if "%REALWINDOWS%"=="1" set KILLTSK=tskill
set KILLOPT=
set KILLPID=

:KILL
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO %KILLTSK% %KILLPID% %%A&set WINTIT=%%A

TITLE ROM-JACKET
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "INIT"') DO %KILLTSK% %KILLPID% %%A

%KILLTSK% %KILLOPT% BEGIN.exe
%KILLTSK% %KILLOPT% Wbox.exe
%KILLTSK% %KILLOPT% Wbusy.exe
%KILLTSK% %KILLOPT% Wselect.exe
%KILLTSK% %KILLOPT% Wfile.exe
%KILLTSK% %KILLOPT% Wfolder.exe
%KILLTSK% %KILLOPT% winput.exe
%KILLTSK% %KILLOPT% wget.exe	
%KILLTSK% %KILLOPT% aria.exe

:STARTALL
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do SET GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
move /y copy.ini "%GBC%"
del /q "%GBC%\logs\*.log"
if exist "%GBC%\copy.ini" goto :configRJ
if not exist "%CD%\firstrun.ini" SET FIRSTRUN=1
if not exist "%CD%\firstrun.ini" goto :minimized

:minimized
if "%REALWINDOWS%"=="0" goto :WINE

:VARCHK
set WSTRT=start /min /w ""
set BSTRT=start ""
for %%a in ("start /w """) do set LAUNCH=%%~a
for %%a in ("%GBC%\aria2c.exe") do set ARIA2C=%%~a
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
for %%a in ("findstr") do set FNDSTR=%%~a
if "%WINVER%"=="XP" goto :XP
set ROBOCPY=robocopy
for %%a in ("%USERPROFILE%\AppData\Roaming\XBMC") do set XBAPDTA=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
goto :ARCHITECTURE

:XP
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%APPDATA%\XBMC") do set XBAPDTA=%%~a
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
goto :ARCHITECTURE

:WINE
set WSTRT=start /w
set BSTRT=start
for %%a in ("start /w") do set LAUNCH=%%~a
for %%a in ("%GBC%\findstr.exe") do set FNDSTR=%%a
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
for %%a in ("start /w "%GBC%\aria2c.exe"") do set ARIA2C=%%~a
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
goto :ARCHITECTURE

:configRJ
pushd "%GBC%"
"%GBC%\fart.exe" "copy.ini" "\"" --remove
"%GBC%\fart.exe" "copy.ini" "%GBC%\%ROMJ%\" --remove
REM if "%GOTMIN%"=="" CALL :GETADMIN
for /f "tokens=2 delims=," %%a in ('wmic os get caption /format:csv') do SET WINGET=%%~a
for /f "tokens=3 delims= " %%a in ("%WINGET%") do set WINVER=%%~a

set LINKR=WINV
set KILLTSK=taskkill
set KILLOPT=/f /im

if "%WINVER%"=="XP" set LINKR=WINLEG
if "%WINVER%"=="XP" set KILLTSK=tskill
if "%WINVER%"=="XP" set KILLOPT=
if "%REALWINDOWS%"=="0" set KILLTSK=taskkill
popd
call "%GBC%\Romulate.bat">>"%GBC%\logs\Romulate.log"
exit /b

:CMDOW
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO set WINTIT=%%A
"%GBC%\HDWIN.exe" %WINTIT%
exit /b	

:ARCHITECTURE
echo %CD% >"%CD%\firstrun.ini"
mkdir "%CD%\logs"

set urlNthL=1
set NEWVAL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\ARCH.ini" /L:%urlNthL%') do set ARPOP=%%~a
popd
if "%ARPOP%"=="[BIT]" call :ARCHtst

:beginarch
if exist "%CD%\ARCH.ini" goto :apro

:ARCHtst
del /s /q ARCH.ini
echo [BIT]>ARCH.ini
SET HOMHDSK=%windir%
for %%A in ("%HOMHDSK:~0,2%") do set HOMDIR=%%~A
if not exist "%HOMDIR%\Program Files (x86)" (goto :xinject)
if "%ARPOP%"=="32" set INDX=index32.set
if "%ARPOP%"=="64" set INDX=index64.set
if "%WINVER%" NEQ "XP" cmd /c start "" "BEGIN.exe"
wbox "RJ_GUI" "^^You are using a 64-bit Windows OS^however^You may opt for the 32-bit mode of RoM-Jacket^^" "32bit;64bit" /DB=2 /BW=130 
if %ERRORLEVEL%==1 goto :xCinject
if %ERRORLEVEL%==2 goto :backup
goto :QUITOUT

:apro
if "%ARPOP%"=="32" (goto :no64) ELSE (goto :backup)

:backup
fart ARCH.ini [BIT] 64
for %%A in ("%HOMDIR%\Program Files") do set PRGF=%%~A
for %%A in ("%PROGRAMFILES(X86)%") do set PRGX=%%~A
if "%REALWINDOWS%"=="0" for %%A in ("%HOMDIR%\Program Files (X86)") do set PRGX=%%~A
SET INDX=index64.set
call :ROM-JACKET 

:no64
:x86

:x64check
if exist "%ProgramFiles(x86)%" (goto :x64bit) ELSE (goto :xinject)

:xinject
set ARPOP=32
fart ARCH.ini [BIT] 32
for %%A in ("%ProgramFiles%") do set PRGF=%%~A
for %%A in ("%ProgramFiles%") do set PRGX=%%~A
SET INDX=index32.set
call :ROM-JACKET 
exit /b

:xCinject
set ARPOP=32
fart ARCH.ini [BIT] 32
echo 64>>ARCH.ini
for %%A in ("%ProgramFiles(x86)%") do set PRGF=%%~A
for %%A in ("%ProgramFiles(x86)%") do set PRGX=%%~A
if "%REALWINDOWS%"=="0" for %%A in ("%HOMDIR%\Program Files (X86)") do set PRGF=%%~A
if "%REALWINDOWS%"=="0" for %%A in ("%HOMDIR%\Program Files (X86)") do set PRGX=%%~A
SET RARCH=64
SET INDX=index32.set
call :ROM-JACKET
exit /b

:x64bit
for %%A in ("%HOMDIR%\Program Files") do set PRGF=%%~A
for %%A in ("%PROGRAMFILES(X86)%") do set PRGX=%%~A
if "%REALWINDOWS%"=="0" for %%A in ("%HOMDIR%\Program Files (X86)") do set PRGX=%%~A
SET INDX=index64.set
call :ROM-JACKET

:ROM-JACKET
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
CALL "%GBC%\defineVar.bat">>"%GBC%\logs\defineVar.log"
CALL "%GBC%\MIRSET.bat">>"%GBC%\logs\mirset.log"
%GBD%
cd "%GBC%"

:INTRODUCTION
if exist "locset.ini" goto :autoVset
if exist "%GBC%\locset.ini" goto :autoVset
goto :newUsers

:newUsers
SET INTLSET=
SET FIRSTRUN=1
set UPDAR=
set UPDAV=
set UPDCHK=INICHK
SET UPDTBUTTON=;Check
copy "%GBC%\locations.set" "locset.ini"
CALL "%GBC%\Archivers.bat">>"%GBC%\logs\Archivers.log"
CALL "%GBC%\newSet.bat">>"%GBC%\logs\newSet.log"
goto :INITGUI


:INICHK
del /q "%GBC%\updatelist.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Checking for updates" /marquee
%WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "https://raw.githubusercontent.com/romjacket/RoM-Jacket/master/updatelist.ini" -P "%GBC%"
pushd "%GBC%"
for /f "tokens=1 delims=/ " %%a in ('fciv.exe -sha1 "%GBC%\updatelist.ini"') do if "%%~a" NEQ "File" set UPDATESTAMP=%%~a
for /f "tokens=1 delims=/ " %%a in ('fciv.exe -sha1 "%GBC%\currentversion.set"') do if "%%~a" NEQ "File" set CURRENTSTAMP=%%~a
popd
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDCHK=UPD
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDAR=####Update Available####
del /q "%GBC%\updaterepo.ini"
pushd "%GBC%"
%WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "https://raw.githubusercontent.com/romjacket/RoM-Jacket/master/updaterepo.ini" -P "%GBC%"
for /f "tokens=1 delims=/" %%a in ('fciv.exe -sha1 "%GBC%\updaterepo.ini"') do if "%%~a" NEQ "File" set UPDATESTAMP=%%~a
for /f "tokens=1 delims=/" %%a in ('fciv.exe -sha1 "%GBC%\currentArchive.set"') do if "%%~a" NEQ "File" set CURRENTSTAMP=%%~a 	
popd
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDAV=####Archive Available####
%BSTRT% "%WFINS%" "RJ_GUI" "Check Complete" /stop /timeout:1
if "%WINVER%"=="XP" goto :WIZARDMENU

:INITGUI
call :GUICTRL

:WIZARDMENU
call :CMDOW
if "%UPDCHK%"=="UPDATE" set UPDCHK=UPD
if not exist "%GBC%\updatelist.ini" copy /y "%GBC%\currentversion.set" "%GBC%\updatelist.ini"
"%GBC%\wbox.exe" "RJ_GUI" "^#########################^[VERSION]^#########################^%UPDAV%^%UPDAR%^Welcome to RoM-Jacket^The wizard will guide you through the required configuraions to use the program." "Wizard;Reset%UPDTBUTTON%" /DB=1 /BW=150
if %ERRORLEVEL%==1 goto :TUTORIAL
if %ERRORLEVEL%==2 goto :RESET
if %ERRORLEVEL%==3 goto :%UPDCHK%
goto :QUITOUT

:GUICTRL
FOR /F "tokens=1 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "RoM-Jacket"') do if "%%~a" NEQ "" cmd /c start "" "%GBC%\BEGIN.exe"
exit /b

:OPENHLP
"%GBC%\docs\Setup.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :newUsers
goto :newUsers

:autoVset
CALL "%GBC%\varloc.bat"
if "%GBM%"=="[GBM]" goto :TUTORIAL
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :newUsers
REM if "%DAMVAR%"=="[DAM]" goto :newUsers
if "%GBG%\Games\Console"=="[GBG]\Games\Console" goto :newUsers
REM if "%XPADDER%"=="[XPD]" goto :newUsers
REM if "%ANTMIC%"=="[AMC]" goto :newUsers
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat">>"%GBC%\logs\assignConsIcon.log"
if "%DAMVAR%"=="DISABLED" CALL :MARKDMT0
if "%XPADDER%"=="DISABLED" CALL :MARKXPD0
if "%ANTMIC%"=="DISABLED" CALL :MARKAMC0
if "%XPADDER%"=="[XPT]" CALL :MARKXPD0
if "%ANTMIC%"=="[AMC]" CALL :MARKAMC0

:existingUsers
SET FIRSTRUN=0
set INITAL=
set UPDAV=
set UPDTBUTTON=;Check
set UPDCHK=CHK
goto :INITIALMENU

:CHK
if exist "%GBC%\updatelist.ini" del /q "%GBC%\updatelist.ini"
%WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "https://raw.githubusercontent.com/romjacket/RoM-Jacket/master/updatelist.ini" -P "%GBC%"
if not exist "%GBC%\updatelist.ini" goto :INITIALMENU
pushd "%GBC%"
for /f "tokens=1 delims=/ " %%a in ('fciv.exe -sha1 "%GBC%\updatelist.ini"') do if "%%~a" NEQ "File" set UPDATESTAMP=%%~a
for /f "tokens=1 delims=/ " %%a in ('fciv.exe -sha1 "%GBC%\currentversion.set"') do if "%%~a" NEQ "File" set CURRENTSTAMP=%%~a
popd
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDCHK=UPDATE
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDAV=####Update Available####
set UPDTBUTTON=
if "%UPDAV%" NEQ "" SET UPDTBUTTON=;Update
if "%WINVER%"=="XP" goto :INITIALMENU
call :GUICTRL


:INITIALMENU
call :CMDOW
if not exist "%GBC%\updatelist.ini" copy /y "%GBC%\currentversion.set" "%GBC%\updatelist.ini"
"%GBC%\wbox.exe" "RJ_GUI" "^######################^ROM-JACKET^[VERSION]^%UPDAV%^######################^" "Reset;Install/Configure%UPDTBUTTON%" /DB=2 /BW=120 
if %ERRORLEVEL%==1 goto :RESET
if %ERRORLEVEL%==2 goto :creation
if %ERRORLEVEL%==3 goto :%UPDCHK%
goto :QUITOUT

:CVRT
call "%GBC%\parsexpd.bat">>"%GBC%\logs\parsexpd.log"
goto :LIBRARYSELECTION


:HELPING
"%GBC%\docs\Setup.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :existingUsers
goto :existingUsers

:UPD
SET INTLSET=1
for %%a in ("%~dp0") do set GBCT=%%~a
for %%a in ("%GBCT:~0,-1%") do set GBC=%%~a
call "%GBC%\defineVar.bat">>"%GBC%\logs\defineVar.log"

:UPDATE
call "%GBC%\update.bat"
if "%INTLSET%"=="1" goto :newUsers
goto :existingUsers

:HELP
"%GBC%\wbox.exe" "RJ_GUI" "^^###########BIOS INSTALL###########^^Many emulators require bios files to function properly.^If you have bios files for your emulators^you may install them automatically.^^" "Install;MainMenu" /DB=2 /BW=400 
if %ERRORLEVEL%==1 goto :BIOS
if %ERRORLEVEL%==2 goto :existingUsers
goto :QUITOUT

:WIZARD
"%GBC%\wbox.exe" "RJ_GUI" "^#########################^        WIZARD^#########################^^RoM-Jacket can configure 3rd party front-ends and utilities.^You may choose to bypass the autoconfiguration and installation of these programs now.^If this is your first time using RoM-Jacket it is NOT reccommended to bypass.^^" "Bypass;Continue" /DB=2 /BW=180 /TM=10
if %ERRORLEVEL%==1 goto :UNCONFIGURE
if %ERRORLEVEL%==2 goto :TUTORIAL
goto :QUITOUT

:MARKHPD
SET HPN=%LTMP%\%HYPS%
exit /b

:MARKHPE
SET HPN=%LTMP%\%EMUZ%\%HYPS%
exit /b

:MARKHPG
SET HPN=%PRGX%\%HYPS%
exit /b

:MARKXPDJ
for %%a in ("%PRGX%\Xpadder\Xpadder.exe") do SET XPADDER=%%~a
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
exit /b

:MARKXPDT
for %%a in ("%LTMP%\%EMUZ%\Xpadder\Xpadder.exe") do SET XPADDER=%%~a
for /f "delims=" %%A in ('echo "%XPADDER%"') do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
exit /b

:MARKAMCJ
for %%a in ("%PRGX%\antimicro\antimicro.exe") do SET ANTMIC=%%~a
for /f "delims=" %%A in ('echo "%ANTMIC%"') do set APATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
"%SEVENZIP%" x -y "%GBC%\net\%ACONF%\%ACONF%.7z" -o"%APATH%"
exit /b

:MARKAMCT
for %%a in ("%LTMP%\%EMUZ%\antiMicro\antimicro.exe") do SET ANTMIC=%%~a
for /f "delims=" %%A in ('echo "%ANTMIC%"') do set APATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
"%SEVENZIP%" x -y "%GBC%\net\%ACONF%\%ACONF%.7z" -o"%APATH%"
exit /b

:MARKDMT0
for %%A in ("Daemon Tools is Disabled^") do set MARKDMT=%%~A
exit /b
:MARKDMT1
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
exit /b
:MARKXPD0
set JOYVAL=
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
set XPADDER=DISABLED
exit /b
:MARKXPD1
set JOYVAL=XPADDER
for %%A in ("Xpadder is Enabled^") do set MARKXPD=%%~A
for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
set ANTIMIC=DISABLED
SET XPDEF=1
exit /b
:MARKAMC0
for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
set ANTIMIC=DISABLED
exit /b
:MARKAMC1
set JOYVAL=ANTIMIC
for %%A in ("antiMicro is Enabled^") do set MARKAMC=%%~A
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
set XPADDER=DISABLED
SET XPDEF=0
exit /b

:UNCONFIGURE
CALL :MARKDMT0
CALL :MARKXPD0
SET DAMVAR=DISABLED
SET XPADDER=DISABLED
SET ANTMIC=DISABLED
CALL :MARKAMC0
SET MBR=0
SET GBR=0
SET XBM=
SET ADV=
SET RCB=

for %%A in ("%~d0") do set LTMP=%%~A
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" CALL :MARKDMT1
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" CALL :MARKDMT1
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" SET DAMVAR=%PRGX%\DAEMON Tools Pro\DPro.exe
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" SET DAMVAR=%PRGX%\DAEMON Tools Lite\DTLite.exe
if exist "%PRGX%\Xpadder\Xpadder.exe" CALL :MARKXPD1
if exist "%PRGX%\Xpadder\Xpadder.exe" CALL :MARKXPDJ 
if exist "%LTMP%\%EMUZ%\%HYPS%\%HYPS%.exe" CALL :MARKHPE 
if exist "%LTMP%\%HYPS%\%HYPS%.exe" CALL :MARKHPD
if exist "%PRGX%\%HYPS%\%HYPS%.exe" CALL :MARKHPG
if exist "%LTMP%\%EMUZ%\Xpadder\Xpadder.exe" CALL :MARKXPD1
if exist "%LTMP%\%EMUZ%\Xpadder\Xpadder.exe" CALL :MARKXPDT
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1
if exist "%PROGRAMDATA%\%MBRWS%\%PLGN%\%GBRWS%.dll" SET GBR=1
for %%a in ("%USERPROFILE%\AppData\Roaming\XBMC") do set XBAPDTA=%%~a
if "%WINVER%"=="XP" for %%a in ("%APPDATA%\XBMC") do set XBAPDTA=%%~a
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser" SET RCB=1
if exist "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher" SET ADV=1
SET AUTOCONFIG=1

:TUTORIAL
set INITAL=1

:delgbt
SET GBM=0
"%GBC%\fart.exe" "locset.ini" "[GBM]" "%GBM%"
goto :WIZARDauto	

:WIZARDauto
call :CMDOW
"%GBC%\wbox.exe" "RJ_GUI" "^############################################################^                  Would you like to install to the default locations?^############################################################^^##### ROM-JACKET INSTALLATION#####^   %GBD%\RJ\RomJacket^############################^^##### GAMES #####^   %GBD%\%GAM%\%CONS%^###############^#####SORTING FOLDER#####^######## '' ''\RoM-Jacket^####################^^##### EMULATORS #####^   %GBD%\%EMUZ%^##################^^" "Continue;Change" /AL /BW=250  
if %ERRORLEVEL%==1 goto :defaultSettings
if %ERRORLEVEL%==2 goto :WIZARD2
goto :QUITOUT

:WIZARD2
call :CMDOW
"%GBC%\wbox.exe" "RJ_GUI" "^^Select the desired location of your Emulators.^^note:^All emulators will be placed in an ''Emulators'' folder.^^" "Okay" /AL /BW=400  /TM=5
if %ERRORLEVEL%==1 goto :setup_emuDir

:setup_emuDir
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET _emuDirect=" "%GBD%\" "Emulators folder: (best if root of Disk)" /noquote') do %%a
for %%A in ("%_emuDirect:*:=%") do set emudrv-ltr=%%~A
for %%A in ("%_emuDirect:~0,2%\") do set EMUDIR=%%~A
if "%_emuDirect%"=="" (goto :newEmuLoc)
goto :emudrvltr

:SELECTDEMU
for %%a in ("%_emuDirect:~0,-10%") do set _emuDirect=%%~a
goto :EMUDRIVE

:emudrvltr
for %%a in ("%_emuDirect%") do if /i "%%~na"=="emulators" goto :SELECTDEMU

:EMUDRIVE
for %%A in ("%_emuDirect%") do set GBE=%%~A
if "%emudrv-ltr%" NEQ "\" goto :emusets
for %%A in ("%_emuDirect:~0,2%") do set GBE=%%~A

:emusets
"%GBC%\fart.exe" "%GBC%\locset.ini" "[GBE]" "%GBE%"
mkdir "%GBE%\%EMUZ%"

:TUTORIAL2
"%GBC%\wbox.exe" "RJ_GUI" "^^Select the desired location of your Games.^^Your RJ-Sort-Folder will also be stored here.^^" "Okay" /AL /BW=400  /TM=5
if %ERRORLEVEL%==1 goto :setup_gamDir

:setup_gamDir
for /f "delims=" %%a in ('Wfolder.exe "SET _gamDirect=" "%GBD%\" "Games Folder: (best if root of Disk)" /noquote') do %%a
for %%A in ("%_gamDirect:*:=%") do set gamdrv-ltr=%%~A
if "%gamdrv-ltr%"=="\" (goto :gamslash)
for %%A in ("%_gamDirect:~0,2%") do set GAMDRV=%%~A
if "%_gamDirect%"=="" goto :setup_gamDir
goto :gamnoslash

:SELECTDGAM
for %%a in ("%_gamDirect:~0,-6%") do set _gamDirect=%%~a
goto :GAMDRIVE

:gamslash
for %%A in ("%_gamDirect:~0,2%") do set GAMDRV=%%~A

:gamdrvLtr
for %%A in ("%_gamDirect:~0,-1%") do set GBG=%%~A
"%GBC%\fart.exe" "%GBC%\locset.ini" "[GBG]" "%GBG%"
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat"
goto :archivers

:gamnoslash
for %%a in ("%_gamDirect%") do if /i "%%~na"=="Games" goto :SELECTDGAM
:GAMDRIVE
for %%A in ("%_gamDirect%") do set GBG=%%~A
"%GBC%\fart.exe" "%GBC%\locset.ini" "[GBG]" "%GBG%"
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat">>"%GBC%\logs\assignConsIcon.log"

goto :archivers

:defaultSettings
del /q "locset.ini"
for %%A in ("%GBC:~0,2%") do set GAMDRV=%%~A
for %%A in ("%GBC:~0,2%") do set EMUDIR=%%~A
for %%A in ("%EMUDIR:~0,2%") do set GBE=%%~A
for %%A in ("%GAMDRV:~0,2%") do set GBG=%%~A
"%GBC%\fart.exe" "%GBC%\locset.ini" "[GBG]" "%GBG%"
"%GBC%\fart.exe" "%GBC%\locset.ini" "[GBE]" "%GBE%"
mkdir "%GBG%\%ROMJ%
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat">>"%GBC%\logs\assignConsIcon.log"

:archivers

:setup_daemT
set DTLOC=
call "%GBC%\setupDMT.bat">>"%GBC%\logs\setupDMT.log"
goto :JOYQUERY

:JOYQUERY
"%GBC%\wbox.exe" "RJ_GUI" "Select a joystick utility" "Xpadder;antiMicro;None" /DB=2
if %errorlevel%==1 goto :setup_xpadDir
if %errorlevel%==2 goto :setup_amcrDir
if %errorlevel%==3 goto :setnoJOY
goto :QUITOUT


:setup_xpadDir
call "%GBC%\setupXPD.bat">>"%GBC%\logs\setupXPD.log"
if "%INITAL%"=="1" goto :setup_continue
if "%xpdcancelled%"=="1" goto :creation
goto :creation

:setup_amcrDir
call "%GBC%\setupAMC.bat">>"%GBC%\logs\setupAMC.log"
if "%INITAL%"=="1" goto :setup_continue
goto :creation

:setup_continue
if "%amccancelled%"=="1" goto :QUITOUT
if "%xpdcancelled%"=="1" goto :QUITOUT
if "%dmtcancelled%"=="1" goto :QUITOUT
pushd "%GBC%"
REM if "%AMICR%"=="" goto :inst_aMcr
if "%XPADDER%"=="" goto :inst_Xpad
if "%DAMVAR%"=="" goto :inst_DaemonT
for %%A in ("%~d0") do set LTMP=%%~A
if exist "%LTMP%\%EMUZ%\%HYPS%\%HYPS%.exe" CALL :MARKHPE 
if exist "%LTMP%\%HYPS%\%HYPS%.exe" CALL :MARKHPD
if exist "%PRGX%\%HYPS%\%HYPS%.exe" CALL :MARKHPG
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1
if exist "%PROGRAMDATA%\%MBRWS%\%PLGN%\%GBRWS%.dll" SET GBR=1
for %%a in ("%USERPROFILE%\AppData\Roaming\XBMC") do set XBAPDTA=%%~a
if "%WINVER%"=="XP" for %%a in ("%APPDATA%\XBMC") do set XBAPDTA=%%~a
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser" SET RCB=1
if exist "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher" SET ADV=1
goto :check_complete

:check_complete
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :creation

:creation
call :CMDOW

call "%GBC%\varLoc.bat">>"%GBC%\logs\varloc.log"
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"

for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
for %%A in ("Xpadder is Enabled^") do set MARKXPD=%%~A
for %%A in ("antiMicro is Enabled^") do set MARKAMC=%%~A
if "%JOYVAL%"=="" for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
if "%JOYVAL%"=="" for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A

if "%DAMVAR%"=="DISABLED" for %%A in ("Daemon Tools is Disabled^") do set MARKDMT=%%~A
if "%DAMVAR%"=="[DMT]" for %%A in ("Daemon Tools is Disabled^") do set MARKDMT=%%~A
if "%XPADDER%"=="DISABLED" for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
if "%XPADDER%"=="[XPD]" for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
if "%ANTMIC%"=="DISABLED" for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
if "%ANTMIC%"=="[AMC]" for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
for %%a in ("antiMicro is Enabled^") do if "%MARKAMC%"=="%%~a" set JOYVAL=ANTIMIC
for %%a in ("Xpadder is Enabled^") do if "%MARKXPD%"=="%%~a" set JOYVAL=XPADDER
pushd "%GBC%"
set MKEXE=

"%GBC%\wbox.exe" "RJ_GUI" "##################################^Main Menu^##################################^%MARKXPD% %MARKAMC% %MARKDMT%##################################^^######^#Install#^######^^   Download and Install BIOS files, ROMs and software.^^#########^#Configure#^#########^^   Configure your RoM-Jacket library^^########^#HTPC#^########^^   Install and configure Frontends, themes and artwork	.^" "Install;Configure;HTPC" /DB=2 /BW=120
if %ERRORLEVEL%==1 goto :create_Emulators
if %ERRORLEVEL%==2 goto :create_Launchers
if %ERRORLEVEL%==3 goto :MEDCENTERCHK
goto :QUITOUT

:create_Emulators
set X360DISP=
set SCPDISP=
set PS3DISP=
set XBCDISP=
if exist "%PRGF%\Microsoft Xbox 360 Accessories\XBoxStat.exe" set X360EX=1
if exist "%PRGX%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe" set SCPEX=1
if exist "%PRGF%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe" set SCPEX=1
if exist "%PRGF%\MotioninJoy\ds3\DIFxAPI.dll" set PS3EX=1
if exist "%PRGF%\MotioninJoy\Better DS3.exe" set BDS3EX=1
if exist "%GBE%\%EMUZ%\Better DS3\Better DS3.exe" set BDS3EX=1
if "%X360EX%"=="1" for %%a in ("Xbox 360 Joystick Drivers found^") do (SET X360DISP=%%~a)
if "%WINVER%"=="8" for %%a in ("Xbox 360 Joystick Drivers found^") do (SET X360DISP=%%~a)
if "%WINVER%"=="8.1" for %%a in ("Xbox 360 Joystick Drivers found^") do (SET X360DISP=%%~a)
if "%WINVER%"=="10" for %%a in ("Xbox 360 Joystick Drivers found^") do (SET X360DISP=%%~a)
if "%SCPEX%"=="1" for %%a in ("SCP Wrapper Service found^") do SET SCPDISP=%%~a
if "%PS3EX%"=="1" for %%a in ("MotioninJoy Drivers found^") do SET MIJDISP=%%~a
if "%BDS3EX%"=="1" for %%a in ("Better DS3 found^") do SET BDS3DISP=%%~a
del /q "%GBC%\updaterepo.ini"


set UPDMSG=
set UPDAV=
if not exist "%GBC%\updaterepo.ini" goto :INSMENU

:INSOPTIONS
SET UPDAV=####Check for Update####
set UPDMSG=Check for updates to your archives in the repository
for /f "tokens=1 delims=/ " %%a in ('fciv.exe "%GBC%\updaterepo.ini"') do if "%%~a" NEQ "File" set UPDATESTAMP=%%~a
for /f "tokens=1 delims=/ " %%a in ('fciv.exe "%GBC%\currentArchive.set"') do if "%%~a" NEQ "File" set CURRENTSTAMP=%%~a
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDAV=####Update Available####
if "%UPDATESTAMP%" NEQ "%CURRENTSTAMP%" set UPDMSG=Update your emulators to the latest versions in the repository

:INSMENU
call :CMDOW
set UPDTBUTTON=;Check;Menu
set UPDTMODE=GETARC
if "%UPDAV%" NEQ "" SET UPDTBUTTON=;Update;Menu
if "%UPDAV%" NEQ "" set UPDTMODE=GETARC
"%GBC%\wbox.exe" "RJ_GUI" "^^######################################^Download, install and configure emulators, drivers and bios files^######################################^%MARKXPD%%MARKAMC%%MARKDMT%%BDS3DISP%%X360DISP%%SCPDISP%%MIJDISP%^######################################^    ''1:Drivers''^     Install dependencies and libraries needed for emulators and joysticks^^    ''2:Emulators''^      Download and install emulators.^^    ''3:Bios''^     Download and install BIOS files for your emulators.^^    ''XPadder''^     Configure XPadder^^    ''antiMicro''^     Configure antiMicro^^    ''ROMs''^     Download and install ROMs from magnet/url and torrents^^%UPDAV%^%UPDMSG%^^" "Drivers;Emulators;BIOS;XPadder;antiMicro;ROMs%UPDTBUTTON%" /AL /DB=1 /BW=75
if %ERRORLEVEL%==1 goto :depends
if %ERRORLEVEL%==2 goto :manualgetall
if %ERRORLEVEL%==3 goto :BIOS
if %ERRORLEVEL%==4 goto :xpdfront
if %ERRORLEVEL%==5 goto :amcfront
if %ERRORLEVEL%==6 goto :download
if %ERRORLEVEL%==7 goto :%UPDTMODE%
if %ERRORLEVEL%==8 goto :creation
goto :QUITOUT

:amcfront
set AMCLOC=
call "%GBC%\setupAMC.bat">>"%GBC%\logs\setupAMC.log"

goto :INSMENU

:xpdfront
set XPDLOC=
call "%GBC%\setupXPD.bat">>"%GBC%\logs\setupXPD.log"
goto :INSMENU

:GETARC
if "%UPDTBUTTON%"=="Check;Menu" if "%UPDATEREPO%"=="1" %WSTRT% "%WGET%" --no-check-certificate -t 1 -N -w 1 "https://raw.githubusercontent.com/romjacket/RoM-Jacket/master/updaterepo.ini" -P "%GBC%"
call "%GBC%\repoUpdate.bat">>"%GBC%\logs\repoUpdate.log"
goto :INSOPTIONS

:create_Launchers
call :CMDOW
attrib +h "%GBG%\%ROMJ%\SORTED ARCHIVES"
%GBD%
cd "%GBC%"
SET MKEXE=
SET ROMIN=
set SELECT=
for /f "delims=" %%a in ('dir /b/ad-h/s "%GBG%\%ROMJ%"') do rd /q "%%~a"
for /f  "delims=" %%c in ('dir /b /a-h "%GBG%\%ROMJ%"') do (
SET ROMIN=%%c
)
for %%a in ("-   The RJ-Sort folder is empty  -") do set ROMSTATUS=%%~a
if "%ROMIN%" NEQ "" SET SELECT=;SORT
if "%FIRSTRUN%"=="1" SET SELECT=
set NOTEMPTY=
for /f "delims=" %%a in ('dir /b/a-h "%GBG%\%ROMJ%"') do if "%%~a" NEQ "" SET NOTEMPTY=1
if "%NOTEMPTY%"=="1" call :SETSTAT
SET INDVALL=
"%GBC%\wbox.exe" "RJ_GUI" "^^#############^#Library Menu#^#############^^^          ########^          #Import#^          ########^^   Import Libraries of ROMs into your RoM-Jacket library.^^          ######^          #Configure#^          ######^^    Jacketize and configure your library, consoles and games.^^          #######^          #Utilities#^          #######^^Propagate and transfer settings, create executables and mirror saves into a cloud.^^          ######^          #Sort# %ROMSTATUS%^          ######^^   Sorts roms in your RJ-Sort-Folder.^^" "Import;Configure;Utilities;MainMenu%SELECT%" /AL /DB=2
if %ERRORLEVEL%==1 goto :IMPRT
if %ERRORLEVEL%==2 goto :indvcons
if %ERRORLEVEL%==3 goto :LIBRARYSELECTION
if %ERRORLEVEL%==4 goto :creation
if %ERRORLEVEL%==5 goto :SORTOUT
goto :QUITOUT

:SETSTAT
for %%a in ("-   The RJ-Sort folder contains unsorted files or folders  -") do set ROMSTATUS=%%~a
set SELECT=;Sort
exit /b

:download
call "%GBC%\getroms.bat">>"%GBC%\logs\getroms.log"
goto :create_Launchers

:indvcons
CALL "%GBC%\indvCons.bat">>"%GBC%\logs\indvCons.log"
goto :create_Launchers

:UPDATEROMS
SET UPDTROMS=1

:SORTOUT
call "%GBC%\propname.bat">>"%GBC%\logs\propname.log"
del "%GBC%\copy.ini"
SET SORTON=1
CALL "%GBC%\datchk.bat">>"%GBC%\logs\datchk.log"
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete." /Stop /timeout:5
if "%AUTOSRT%"=="1" goto :AUTOSORT
exit /b

:AUTOSORT
set ROMIN=
for /f "delims=" %%a in ('dir /b/ad-h/s "%GBG%\%ROMJ%\SORTED ARCHIVES"') do attrib +h "%%~a"
for /f "delims=" %%a in ('dir /b/ad-h/s "%GBG%\%ROMJ%"') do rd /q "%%~a"
for /f  "delims=" %%c in ('dir /b /a-h "%GBG%\%ROMJ%"') do (
SET ROMIN=%%c
)
if "%ROMIN%"=="" goto :creation

"%GBC%\wbox.exe" "RJ_GUI" "^^####################^          ROM SORTING^####################^^There are unsorted files in your RJ-Sort-Folder:^### ASSIGN ###^Select and assign unsorted ROMs to systems.^### HASH ###^Search databases for unassign ROMs^" "ASSIGN;HASH;MainMenu" /AL /DB=1
if %ERRORLEVEL%==1 goto :STRAGGLERS
if %ERRORLEVEL%==2 goto :SORTOUT
if %ERRORLEVEL%==3 goto :creation
goto :creation

:STRAGGLERS
CALL "%GBC%\romSort.bat"
goto :creation

:LIBRARYSELECTION
"%GBC%\wbox.exe" "RJ_GUI" "^^#####^#Migrate#^#####^   Reconfigure a RoM-Jacket library you have imported from another location.^^#####^#Copy#^#####^   Copies and propagates settings.^^###########^#Executable#^###########^   Creates a portable windows executable^^###########^#Cloud#^###########^   Mirror game-saves into the cloud (Dropbox/GDrive/OneDrive etc...)^" "Migrate;Copy cfg;Executable;Cloud;MainMenu" /AL /DB=2 /BW=90
if %ERRORLEVEL%==1 goto :migrate
if %ERRORLEVEL%==2 goto :emusel
if %ERRORLEVEL%==3 goto :exec
if %ERRORLEVEL%==4 goto :DROPBOX
if %ERRORLEVEL%==5 goto :creation
goto :creation



:migrate
call "%GBC%\libMigrate.bat">>"%GBC%\logs\libMigrate.log"

goto :LIBRARYSELECTION


:DROPBOX
call "%GBC%\dropbox.bat">>"%GBC%\logs\dropbox.log"
goto :LIBRARYSELECTION

:exec
call "%GBC%\joytype.bat"
SET GLBLXE=
"%GBC%\wbox.exe" "RJ_GUI" "^^[Select]^     a game or a group of games for an emulator individually^^[Console]^      Choose a console's entire library to include in your executable^" "Select;Console" /AL /DB=1 /BW=170
if %ERRORLEVEL%==1 goto :MKIND
if %ERRORLEVEL%==2 goto :GETCONSOLE
goto :LIBRARYSELECTION

:GETCONSOLE
del /q "%GBC%\suprtd.ini"
set SUPRTD=
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set CHKNAME=%%~a
call :TESTN
)
"%GBC%\Wselect.exe" "%GBC%\suprtd.ini" "Select A Library" "set LIBIT=$item" > "%GBC%\libit.cmd"
if %errorlevel%==0 exit /b
CALL "%GBC%\libit.cmd"
if "%LIBIT%"=="" exit /b
SET GLBLXE=1
call "%GBC%\mklib.bat">>"%GBC%\logs\mklib.log"
exit /b

:TESTN
for /f "delims=" %%a in ('type "%GBC%\conselect.set"') do (
if /i "%%~a"=="%CHKNAME%" (
echo.%%~a>>suprtd.ini
)
if /i "%%~a"=="%CHKNAME%" set SUPRTD=1
)
exit /b

:MKIND
call "%GBC%\mkexe.bat">>"%GBC%\logs\mkexe.log"
goto :creation	

:emusel
call "%GBC%\propagation.bat">>"%GBC%\logs\propagation.log"
goto :LIBRARYSELECTION

:IMPRT
call :CMDOW
"%GBC%\wbox.exe" "RJ_GUI" "^^###########^#Archive#^###########^   Explodes an archive into the RJ-Sort-Folder.^^#######^#Folder#^########^   Copies/Moves the identified contents of a folder into the appropriate folder and remaining files to the RJ-Sort-Folder.^^###########^#Multi-Sys#^###########^   Import an existing multi-system library into your library" "Archive;Folder;Multi-Sys;MainMenu" /DB=1
if %errorlevel%==1 goto ::ARCEX
if %errorlevel%==2 goto :libfoldersel
if %errorlevel%==3 goto :librarysel
if %errorlevel%==4 goto :create_Launchers
goto :QUITOUT

:ARCEX
set ARCHV=
for /f "delims=" %%a in ('Wfile.exe "SET ARCHV=" "%UserProfile%\Downloads\*.*" "Select an archive" /noquote') do %%a
IF "%ARCHV%"=="" goto :LIBRARYSELECTION
goto :archvn

:archvn
set ARCHVJ=
for %%a in ("%ARCHV%") do if "%%~dpa"=="%GBG%\%ROMJ%\" set ARCHVJ=1
mkdir "SORTED ARCHIVES"
ATTRIB +H "SORTED ARCHIVES"
for /f "delims=" %%i in ('dir /b/a-d "%ARCHV%"') do (
if "%%~xi"==".zip" goto :uzpa
if "%%~xi"==".rar" goto :urar
if "%%~xi"==".7z" goto :u7z
)

"%GBC%\Wbox.exe" "RoM-Jacket" "Not a valid archive" "OK"  /TM=1
if %ERRORLEVEL%==1 goto :LIBRARYSELECTION

:uzpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting"  /marquee
call "%GBC%\uzip.bat"
if "%ARCHVJ%"=="1" move /y "%ARCHV%" "%GBG%\%ROMJ%\SORTED ARCHIVES"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /Stop /timeout:1
goto :create_Launchers

:urar
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting"  /marquee
call "%GBC%\urar.bat"
if "%ARCHVJ%"=="1" move /y "%ARCHV%" "%GBG%\%ROMJ%\SORTED ARCHIVES"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /Stop /timeout:1
goto :create_Launchers

:u7z
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting"  /marquee
call "%GBC%\uzip.bat"
if "%ARCHVJ%"=="1" move /y "%ARCHV%" "%GBG%\%ROMJ%\SORTED ARCHIVES"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /Stop /timeout:1
goto :create_Launchers

:librarysel
for /f "delims=" %%a in ('Wfolder.exe "SET library=" "C:\" "Select a library to migrate" /noquote') do %%a
if "%library%"=="" (goto :migcancel)
for %%A in ("%library:~0,2%") do set LIBRDIR=%%~A
CALL "%GBC%\librename.bat">>"%GBC%\logs\librename.log"
goto :creation

:libfoldersel
for /f "delims=" %%a in ('Wfolder.exe "SET libsel=" "C:\" "Select an folder of roms to migrate" /noquote') do %%a
if "%libsel%"=="" goto :migcancel
for %%A in ("%libsel:~0,2%") do set ROMTDIR=%%~A
for %%a in ("%libsel%") do set LIBNAME=%%~nxa

if "%libsel%"=="" (goto :migcancel) ELSE (goto :migration)

:migration
call "%GBC%\migrate.bat">>"%GBC%\logs\migrate.log"

:migcancel
goto :creation
 
:BIOS
CALL "%GBC%\BiosSelection.bat">>"%GBC%\logs\biosSelection.log"
goto :creation

:bios_sel
CALL "%GBC%\BiosSelection.bat">>"%GBC%\logs\biosSelection.log"
goto :creation


:MEDCENTERCHK
call :CMDOW
call "%GBC%\metacheck.bat">>"%GBC%\logs\metacheck.log"
SET HLPHNT=

if "%VDWN%" NEQ "0 VIDEOS in cache" SET HLPHNT=The ''MetaData'' menu allows you to download video previews for each console.
if "%BDWN%" NEQ "BACKDROPS DOWNLOADED" SET HLPHNT=Use the ''MetaData'' option to get artwork for your frontends.
if "%WDWN%" NEQ "BANNERS DOWNLOADED" SET HLPHNT=Use the ''MetaData'' option to get artwork for your frontends.
if "%IDWN%" NEQ "ICONS DOWNLOADED" SET HLPHNT=Use the ''MetaData'' option to get artwork for your frontends.

"%GBC%\wbox.exe" "RJ_GUI" "^########################^        HTPC CONFIG^########################^%BDWN%^%VDWN%^%IDWN%^%WDWN%^The current resolution aspect is set to %DISPASPCT%^######################################^%HLPHNT%^####################################^^ [Mediabrowser]^Mediabrowser for Windows MediaCenter^ [XBMC]^Rom Collection Browser and Advanced Launcher^ [Cabrio-FE]^for slower machines and/or with a small number of games (less than 1000)^ [OblyTile]^Configure OblyTile (windows 8 only)^ [Hyperspin]^Configure Hyperspin, Migrate Hyperspin Boxart, Banners and Video^ [Steam]^Add Games to Steam^ [emuStation]^emulationStation for slower computers^ [Mirror+]^Simple shortuts grouped by console are created and each game's box-art is assigned as an icon.^ [retroFE]^An advanced and lightweight frontend similar to Hyperspin.^ [Metadata]^Download and install icons, logos and background art for your frontend/s^" "MediaBrowser;XBMC;Cabrio;OblyTile;Hyperspin;Steam;emuStation;Mirror+;retroFE;MetaData;MainMenu" /AL /DB=10 /BW=82
if %ERRORLEVEL%==1 goto :GAMEBROWSER
if %ERRORLEVEL%==2 goto :XBMC
if %ERRORLEVEL%==3 goto :CABRIO
if %ERRORLEVEL%==4 goto :OBLYTILE
if %ERRORLEVEL%==5 goto :HYPERSPIN
if %ERRORLEVEL%==6 goto :BIGPIC
if %ERRORLEVEL%==7 goto :EMUST
if %ERRORLEVEL%==8 goto :EXPLORER
if %ERRORLEVEL%==9 goto :RETROFE
if %ERRORLEVEL%==10 goto :METADATA
if %ERRORLEVEL%==11 goto :creation
goto :QUITOUT

:EXPLORER
call "%GBC%\iconmirror.bat">>"%GBC%\logs\iconmirror.log"
for /f "delims=" %%a in ('dir /s/b/a-d-h "%MIRLOC%\%MIRDN%\*.ico"') do attrib +H "%%~a"
goto :MEDCENTERCHK

:EMUST
call "%GBC%\emulationStation.bat">>"%GBC%\logs\emulationStation.log"
goto :MEDCENTERCHK

:BIGPIC
call "%GBC%\steam.bat">>"%GBC%\logs\steam.log"
goto :MEDCENTERCHK

:OBLYTILE
if "%REALWINDOWS%"=="0" goto :OBLYINST
if "%WINVER%"=="7" goto :creation
if "%WINVER%"=="10" goto :creation
if "%WINVER%"=="XP" goto :creation
:OBLYINST
call "%GBC%\oblytile.bat">>"%GBC%\logs\oblytile.log"
goto :creation

:HYPERSPIN
CALL "%GBC%\HyperTrans.bat">>"%GBC%\logs\HyperTrans.log"
goto :creation

:RETROFE
CALL "%GBC%\retroFE.bat">>"%GBC%\logs\retroFE.log"
goto :creation

:CABRIO
CALL "%GBC%\cabrio.bat">>"%GBC%\logs\cabrio.log"
goto :creation

:GAMEBROWSER
if "%REALWINDOWS%"=="0" goto :GBINST
if "%WINVER%"=="8" goto :creation
if "%WINVER%"=="8.1" goto :creation
if "%WINVER%"=="XP" goto :creation
:GBINST
CALL "%GBC%\gamebrowser.bat">>"%GBC%\logs\gamebrowser.log"
goto :creation

:METADATA
CALL "%GBC%\meta.bat">>"%GBC%\logs\meta.log"
goto :creation

:XBMC
CALL "%GBC%\xbmc.bat">>"%GBC%\logs\xbmc.log"
goto :creation

:HYPS
call "%GBC%\hyps.bat">>"%GBC%\logs\hyps.log"
goto :creation

:GAMEX
call "%GBC%\gamex.bat">>"%GBC%\logs\gameex.log"
goto :creation

:MAXARC
call "%GBC%\maxarc.bat">>"%GBC%\logs\maxarc.log"
goto :creation

:SIMPLETOUCHFE
call "%GBC%\stfe.bat">>"%GBC%\logs\stfe.log"
goto :creation

:setnoJOY
set XPADDER=DISABLED
CALL :MARKXPD0
set ANTMIC=DISABLED
call :MARKAMC0
if "%INITAL%"=="1" goto :setup_continue
goto :creation


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:DAMTG
call :CMDOW
call "%GBC%\setupDMT.bat">>"%GBC%\logs\setupDMT.log"
if "%INITAL%"=="1" goto :setup_continue
goto :creation

:manualgetall
set HAVEARC=
set DOWNARC=
"%GBC%\wbox.exe" "RJ_GUI" "######################################################################^[Re/Install] emulators you currently have downloaded with RoM-Jacket^^[Download] and install new emulators from internet repositories.^######################################################################" "Re/Install;Download" /DB=2 /BW=140
if %ERRORLEVEL%==1 goto :HAVE
if %ERRORLEVEL%==2 goto :REPOS
goto :QUITOUT

:HAVE
set HAVEARC=1
goto :getMan

:REPOS
set DOWNARC=
goto :getMan

:getMan
CALL "%GBC%\getEmulatorsManual.bat">>"%GBC%\logs\getEmulatorsManual.log"
set HAVEARC=
set DOWNARC=
goto :creation

:depends
CALL "%GBC%\Dependencies.bat">>"%GBC%\logs\Dependencies.log"
goto :creation

:RESET
%GBD%
cd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "^#########################^RESET^#########################^^Games:^   Delete Game Configurations for ALL your games.^ROMJACKET:^   Reset RoM-Jacket.^^" "Games;ROMJACKET;MainMenu" /AL /DB=2 /BW=120 
if %ERRORLEVEL%==1 goto :deleteGamz
if %ERRORLEVEL%==2 goto :deleteSettings
if %ERRORLEVEL%==3 goto :creation
goto :QUITOUT

:deleteSettings
CALL "%GBC%\INTL.bat">>"%GBC%\logs\INTL.log"
goto :UNRAVEL

:deleteGamz
CALL "%GBC%\delRomJCfg.bat">>"%GBC%\logs\delRomJCfg.log"
goto :RESET

:QUITOUT
"%GBC%\wbox.exe" "RJ_GUI" "Exit RoM-Jacket?" "Yes;No" /DB=1 /TM=5	
if %ERRORLEVEL%==1 goto :CLEAROUT
if %ERRORLEVEL%==2 goto :creation

:CLEAROUT
%KILLTSK% %KILLOPT% BEGIN.exe
%KILLTSK% %KILLOPT% Wbox.exe
%KILLTSK% %KILLOPT% Wbusy.exe
%KILLTSK% %KILLOPT% Wselect.exe
%KILLTSK% %KILLOPT% Wfile.exe
%KILLTSK% %KILLOPT% Wfolder.exe
%KILLTSK% %KILLOPT% winput.exe
%KILLTSK% %KILLOPT% wget.exe
%KILLTSK% %KILLOPT% aria.exe
%KILLTSK% %KILLOPT% dxdiag.exe
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO %KILLTSK% %KILLPID% %%A
TITLE ROM-JACKET
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "INIT"') DO %KILLTSK% %KILLPID% %%A
exit /b
