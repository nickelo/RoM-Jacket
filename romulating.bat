:BEGINROMULATE
%GBD%
cd "%GBC%"
SET ROMIN=
SET GGOFF=
SET GGON=
SET DLGM=
set BATWBD=
set CFGWBD=
set JOYWBD=
set JOYON=JOYS
set BATON=BATS
set CFGBON=CFGS
set NDONE=None%NN%
set NN=
set RNS=None
SET BATWBD=[ ] Launchers :
SET JOYWBD=[ ] Joystick Profiles :
SET CFGWBD=[ ] Emulator Configuration Files :
:CFGCHK
set CFGALLG=1
if "%INDVALL%"=="1" goto :ROMRC
if not exist "%GBC%\copy.ini" goto :endromluate
:ROMRC
"%GBC%\wbox.exe" "RJ_GUI" "Do you have a multi-monitor setup?" "Multi;Single" /DB=2
if %ERRORLEVEL%==1 goto :setgbt
if %ERRORLEVEL%==2 goto :delgbt
goto :endromulate

:delgbt
SET GBM=0
"%GBC%\fart.exe" "locset.ini" "[GBM]" "%GBM%"
goto :CONFIGBEGIN
:setgbt
SET GBM=1
"%GBC%\fart.exe" "locset.ini" "[GBM]" "%GBM%"
goto :CONFIGBEGIN

:CONFIGBEGIN
call "%GBC%\joytype.bat">>"%GBC%\logs\joytype.log"
"%GBC%\wbox.exe" "RJ_GUI" "#######################^CONFIGURATION STATUS^#######################^%BATWBD%^%JOYWBD%^%CFGWBD%^^Would you like to overwrite existing RoM-Jacket Library components?^^Launchers^Only Launchers will be overwritten^^Config^Only Emulator-Configuration files will be overwritten.^^Joy^Only Joystick-profiles will be overwritten.^^ALL^Launchers, Joystick-Profiles, Emulator-Configuration files will be overwritten." "Launchers;Config;Joy;ALL;%NDONE%" /AL /DB=5 /BW=75
if %ERRORLEVEL%==1 goto :%BATON%
if %ERRORLEVEL%==2 goto :%CFGBON%
if %ERRORLEVEL%==3 goto :%JOYON%
if %ERRORLEVEL%==4 goto :ALL
if %ERRORLEVEL%==5 goto :%NDONE%
if %ERRORLEVEL%==6 goto :%RNS%
goto :endromulate

:BATS
set BATOV=1
set BATON=BATZ
set BATWBD=[X] Launchers : OVERWRITE
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:BATZ
set BATOV=
set BATON=BATS
set BATWBD=[ ] Launchers :
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:CFGS
set :CFGOV=1
set CFGBON=CFGZ
set CFGWBD=[X] Emulator Configuration files :  OVERWRITE
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:CFGZ
set :CFGOV=
set CFGBON=CFGS
set CFGWBD=[ ] Emulator Configuration files :
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK


:JOYS
set JOYOV=1
set JOYON=JOYZ
set JOYWBD=[X] Joystick Profiles : OVERWRITE
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:JOYZ
set JOYOV=
set JOYON=JOYS
set JOYWBD=[ ] Joystick Profiles :
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:ALL
SET CFGOV=1
set BATOV=1
set JOYOV=1
goto :CONSOLIDATIONS

:RESET
set NDONE=Done
set NN=
SET CFGOV=
set BATOV=
set JOYOV=
goto :BEGINROMULATE

:NONE
SET CFGOV=
set BATOV=
set JOYOV=

:DONE

:CONSOLIDATIONS
"%GBC%\wbox.exe" "RJ_GUI" "################^#ROM-DIRECTORY NAMES#^##################^^#########^#Consolidate#^#########^^Groups roms and Shortens Folder-Name to the base-name.^^#########^#Individuate#^#########^^Each rom gets it's own folder name.^^" "Consolidate;Individuate;Help" /DB=2 /BW=120 /TM=10
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
if %ERRORLEVEL%==3 goto :HLP
goto :endromulate

:HLP
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :CONSOLIDATIONS
goto :CONSOLIDATIONS

:CSD
SET DLGM=1
goto :PERG

:IND
SET DLGM=0
goto :PERG

:PERG
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable^''per-game''^configurations?" "Per-Game;Global;Help" /DB=1
if %ERRORLEVEL%==1 goto :GGON
if %ERRORLEVEL%==2 goto :GGOFF
if %ERRORLEVEL%==3 goto :PGHELP
goto :endromulate

:GGON
SET XFG=1
set PERGM=1
SET GGON=1
goto :XPDCHK

:GGOFF
set XFG=0
set PERGM=0
SET GGOFF=1
goto :XPDCHK

:PGHELP
"%GBC%\docs\select.html"
"%GBC%\wbox.exe" "RJ_GUI" "Help is opening" "OK" /TM=3
goto :PERG

:XPDCHK
if "%XPADDER%"=="DISABLED" goto :CFGALL
if "%XPADDER%"=="[XPD]" goto :CFGALL
"%GBC%\wbox.exe" "RJ_GUI" "Overwrite existing xpadder profiles?" "Yes;No" /DB=1 /TM=20
if %ERRORLEVEL%==1 goto :XPDBEGIN
if %ERRORLEVEL%==2 goto :xpdkep
goto :endromulate

:XPDBEGIN
set XPDG=1
goto :CFGALL

:xpdkep
set XPDG=0
goto :CFGALL

:CFGALL
if "%PERGM%"=="0" goto :NOCONFIG
"%GBC%\wbox.exe" "RJ_GUI" "^Would you like to generate new configuration files for all consoles?^"  "Yes;No;Update" /DB=3
if %ERRORLEVEL%==1 goto :RECONFIG
if %ERRORLEVEL%==2 goto :NOCONFIG
if %ERRORLEVEL%==3 goto :UPDONLY
goto :endromulate

:NOCONFIG
set RECONF=
for %%a in ("copy /y") do set COPYTYPE=%%~a
goto :INTEGRATIONS

:RECONFIG
SET RECONF=1
for %%a in ("copy /y") do set COPYTYPE=%%~a
goto :INTEGRATIONS


:UPDONLY
SET RECONF=1
for %%a in ("echo n|copy /-y") do set COPYTYPE=%%~a
goto :INTEGRATIONS



:INTEGRATIONS
if "%ALLCONSOLES%"=="1" goto :injLaunch
%BSTRT% "%WBUSY%" "RJ_GUI" "Checking your RJ-Sort-Folder^" /marquee
for /f  "delims=" %%c in ('dir /b /a-h /s "%GBG%\%ROMJ%"') do echo.%%~nxc>>"%GBC%\copy.ini"
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /Stop /timeout:1
for %%R in ("%GBC%\copy.ini") do if "%%~zR" equ "" goto :injLaunch
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :injLaunch

CALL "%GBC%\sortingLoose.bat">>"%GBC%\logs\sortingloose.log"
"%GBC%\wbox.exe" "RJ_GUI" "^^#########################^        LIBRARY CONFIGURATION^#########################^^^^^    re/Create:^^      After adding more roms to the RJ-Sort-Folder.^^^    Process:^^      Create Launchers/joystick profiles for all roms^^^" "re/Create;Process;MainMenu" /AL /DB=2 /BW=200
if %ERRORLEVEL%==1 goto :BEGINROMULATE
if %ERRORLEVEL%==2 goto :injectLaunchers
if %ERRORLEVEL%==3 goto :cleanupromulating
goto :endromulate

:injLaunch
:injectLaunchers
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\%LNCH%.zip" -o"%GBC%\net\%LNCH%"
CALL "%GBC%\unsort.bat">>"%GBC%\logs\unsort.log"
%BSTRT% "%WBUSY%" "RJ_GUI" "Preparing Library" /marquee
CALL "%GBC%\hidemeta.bat">>"%GBC%\logs\hideMeta.log"
%BSTRT% "%WFINS%" "RJ_GUI" "...CONFIG..." /Stop /timeout:1 
CALL "%GBC%\GenerateGameLibrary.bat">>"%GBC%\logs\generateGameLibrary.log"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"


:PROCL
%BSTRT% "%WBUSY%" "RJ_GUI" "Preparing Launchers" /marquee
CALL "%GBC%\InjectLaunchers.bat">>"%GBC%\logs\injectLaunchers.log"
if "%CUSTOMEMU%"=="1" CALL "%GBC%\custEmu.bat">>"%GBC%\logs\custEmu.log"
if "%CUSTOMEMU%"=="1" CALL "%GBC%\generateCustomLaunchers.bat">>"%GBC%\logs\generateCustomLaunchers.log"
CALL "%GBC%\moveVideoMeta.bat">>"%GBC%\logs\moveVideoMeta.log"
%BSTRT% "%WBUSY%" "RJ_GUI" "Processing Launchers" /marquee
CALL "%GBC%\GenerateGameLaunchers.bat">>"%GBC%\logs\generateGameLaunchers.log"
CALL "%GBC%\extensionProc.bat">>"%GBC%\logs\extensionProc.log"
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "RJ_GUI" "Processed" /Stop /timeout:1
popd
if "%XPADDER%"=="DISABLED" goto :cleanupromulating
CALL "%GBC%\cleanup.bat">>"%GBC%\logs\cleanup.log"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
:xpdprc
"%SEVENZIP%" x -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBC%\net\%XPROF%"
CALL "%GBC%\generateXpadderProfiles.bat">>"%GBC%\logs\generateXpadderProfiles.log"
if "%xpdskp%"=="0" CALL "%GBC%\customGenerateXpadderProfiles.bat">>"%GBC%\logs\customGenerateXpadderProfiles.log"
pushd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Copying Joystick Profiles" /marquee
if "%MBR%"=="0" goto :cleanupromulating
CALL "%GBC%\copyGameBrowserInjection.bat">>"%GBC%\logs\copyGameBrowserInjection.log"

:cleanupromulating
pushd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Cleaning Up" /marquee
CALL "%GBC%\cleanup.bat">>"%GBC%\logs\cleanup.log"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:3
SET FIRSTRUN=0
CALL "%GBC%\emulatorcheck.bat">>"%GBC%\logs\emulatorcheck.log"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDE
CALL "%GBC%\getEmulatorsDEPEND.bat">>"%GBC%\logs\getEmulatorsDEPEND.log"

:METAUNHIDE
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET GLR=%%~a
CALL :UNHIDE
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
exit /b

:UNHIDE
%GAMDRV%
cd "%GBG%\%GAM%\%CONS%\%GLR%"
for /f "delims=" %%a in ('dir /b /a "*.xml" "*.tbn" "*.nfo" "*.png" "*.jpg"') do ATTRIB -H "%%~a"
:endromulate
del /q "%GBC%\copy.ini"
exit /b
