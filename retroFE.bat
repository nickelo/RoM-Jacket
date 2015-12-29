:REFE
set UPDTRFE=
SET rfecancel=

:WIDESPCT
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\%BCKD%.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)

for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a
set BACKEXTN=jpg
if /i "%DISPASPCT%"=="WIDESCREEN" goto :SETSIZE

:SETCROP
set BACKDROP=
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\CROPPED\CROPPED.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
set BACKEXTN=png
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a

:SETSIZE
if "%RFE%"=="[RFE]" goto :rtfeinstall
if exist "%RFE%\Core\%RTFE%.exe" goto :rtfeconfig
if exist "%GBE%\%EMUZ%\%RTFE%\Core\%RTFE%.exe" goto :rtfeEmuDir
if exist "%PRGX%\%RTFE%\Core\%RTFE%.exe" goto :rtfeDefDir

:rtfeinstall
"%GBC%\wbox.exe" "RJ_GUI" "^^Would you like to locate/install/configure retroFE?^" "Locate;Install;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :locate_rfe
if %ERRORLEVEL%==2 goto :install_rfe
if %ERRORLEVEL%==3 goto :recancel

:recancel
SET rfecancel=1
goto :rtfeconfig

:inst_rfe
set rfecancel=
if exist "%GBE%\%EMUZ%\%RTFE%\Core\%RTFE%.exe" goto :rtfeEmuDir
if exist "%PRGX%\%RTFE%\Core\%RTFE%.exe" goto :rtfeDefDir
if "%RFE%"=="[RFE]" goto :install_rfe
if "%RFE%"=="" goto :locate_rfe
if not exist "%RFE%\Core\retroFE.exe" goto :locate_rfe
goto :rtfeconfig

:no_retroFE
%BSTRT% "%WFINS%" "RJ_GUI" "STOP" /Stop /timeout:1
SET RFE=[RFE]
for %%a in ("%RFEE%\Core\%RTFE%.exe") do set RFEFP=%%~a
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"

:not_installed
"%GBC%\wbox.exe" "RJ_GUI" "^^retroFE was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getretroFE
if %ERRORLEVEL%==2 goto :setnore
goto :quitout

:setnore
set RFE=[RFE]
goto :QUITOUT

:getretroFE
if "%RFE%"=="[RFE]" goto :locate_rfe
for %%A in ("%RFEFP:~0,21%") do set RFE=%%~A

:rtfeEmuDir
for %%A in ("%GBE%\%EMUZ%\%RTFE%") do set RFE=%%~A
for %%A in ("%GBE%\%EMUZ%\%RTFE%\Core\%RTFE%.exe") do set RFEFP=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :rtfeconfig

:rtfeDefDir
for %%A in ("%PRGX%\%RTFE%") do set RFE=%%~A
for %%A in ("%PRGX%\%RTFE%\Core\%RTFE%.exe") do set RFEFP=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :rtfeconfig

:checkdefaultretroFE
if exist "%PRGX%\retroFE\Core\retrofe.exe" goto :rtfeDefDir
goto :locate_rfe

:REPARSE
del /q "%GBC%\net\%RTFE%\retroFE.7z*"

:install_rfe
set rfecancel=
set CEMU=%RTFE%
SET EMUNUM=53
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu.log"
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%RTFE%\*.7z"') do set RTFECFGXE=%%~a
if "%RTFECFGXE%"=="" goto :no_retroFE
for /f "delims=" %%a in ('dir /b/a-d-h "%RTFECFGXE%"') do set RTFECFGFILE=%%~nxa
%BSTRT% "%WFINS%" "RJ_GUI" "retroFE Downloaded" /Stop /timeout:1

:continue_retroFE
for /f "delims=" %%a in ('Wfolder.exe "SET _rtfetmp=" "%GBE%\%EMUZ%" "Install retroFE to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set rtfedrv-ltr=%_rtfetmp:*:=%
for %%A in ("%_rtfetmp:~0,2%\") do set RTFEDIR=%%~A
for %%A in ("%RTFEDIR%") do set RTFEDIR=%%~A
if "%_rtfetmp%"=="" goto :no_retroFE
goto :rtfedrvltr

:rtfedrvltr
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing retroFE" /marquee
for %%A in ("%_rtfetmp%") do set RFEE=%%~A
if "%rtfedrv-ltr%"=="\" do set RFEE=%_rtfetmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%RTFE%\%RTFECFGFILE%" -o"%RFEE%\%RTFE%"
for %%A in ("%RFEE%\%RTFE%\Core\%RTFE%.exe") do set RFEFP=%%~A
for %%A in ("%RFEE%\%RTFE%") do set RFE=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"

:retroFE_confirm
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
if "%REALWINDOWS%"=="0" for %%a in ("%USERPROFILE%\Desktop") do set DESKTOPDIR=%%~a
del /q "%DESKTOPDIR%\retroFE.lnk"
copy /y "%GBC%\retroFE.ico" "%RFE%\retroFE.ico"
"%GBC%\xxmklink.exe" "%DESKTOPDIR%\retroFE.lnk" "%RFE%\core\retroFE.exe" " " "%RFE%\core" retroFE 1 "%RFE%\retroFE.ico"
%BSTRT% "%WFINS%" "RJ_GUI" "retroFE is now installed" /Stop /timeout:1
goto :rtfeconfig

:locate_rfe
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the retroFE application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectrfe)
goto :selectrfe

:selectrfe
for /f "delims=" %%a in ('Wfile.exe "SET RFE=" "%EMUZ%\%RTFE%\core\retrofe.exe" "Where is the retroFE application?" /noquote') do %%a
if "%RFE%"=="[RFE]" goto :inst_rfe
if "%RFE%"=="" goto :inst_rfe
for %%a in ("%RFE:~0,-17%") do set RFE=%%~a
goto :retroFE_confirm
:rtfeconfig
set BUSYPROT=
set HSLIB=
set ROMLIB=
"%GBC%\wbox.exe" "RJ_GUI" "^[re/install]^Re/download, re/locate and re/install retroFE^^[MIRROR]^Create mirrors for retroFE.^^[Add]^Add mirrors to your retroFE configuration^^[Theme]^Create themes using RoM-Jacket's device-icons, logos and video previews for your retroFE consoles.^Transfer art and video to and from your retroFE libraries to your existing RoM-Jacket/Hyperspin Libraries" "re/install;Mirror;Add;Theme;Quit" /AL /DB=1
if %errorlevel%==1 goto :RESET
if %errorlevel%==2 goto :GENERATE
if %errorlevel%==3 goto :RFEADD
if %errorlevel%==4 goto :THEME
if %errorlevel%==5 goto :QUITOUT
goto :QUITOUT

:THEMEQ
"%GBC%\wbox.exe" "RJ_GUI" "Create system-themes for retroFE console-mirrors?" "THEMES;QUIT" /DB=1
if %errorlevel%==1 goto :THEME
if %errorlevel%==2 goto :rtfeconfig
goto :QUITOUT

:RESET
set RFE=
set RSTMSG=
set RSTVAV=QUITOUT
if exist "%GBE%\%EMUZ%\%RTFE%\Core\retrofe.exe" set BUTLIST=Download;Location;Install;Quit
if not exist "%GBC%\net\%RTFE%\%RTFE%.7z" set BUTLIST=Download;Location;Quit
if exist "%GBC%\net\%RTFE%\%RTFE%.7z" for %%a in ("[INSTALL] Installs retroFE") do set RSTMSG=%%~a
if exist "%GBC%\net\%RTFE%\%RTFE%.7z" set RSTVAV=continue_retroFE
"%GBC%\wbox.exe" "RJ_GUI" "[re/DOWNLOAD] clears the cache & redownloads retroFE^[SETLOC] Sets the location of retroFE executable^%RSTMSG%" "%BUTLIST%" /DB=1
if %errorlevel%==1 goto :REPARSE
if %errorlevel%==2 goto :selectrfe
if %errorlevel%==3 goto :%RSTVAV%
if %errorlevel%==4 goto :rtfeconfig
goto :QUITOUT

:THEME
if "%MIRLOC%"=="" call :DEFINELOC
if "%MIRDN%"=="" call :DEFINELOC
if "%MIRDN%"=="" goto :REFE
if "%MIRLOC%"=="" goto :REFE
del /q "%GBC%\net\%RTFE%\menu.xml"

"%GBC%\wbox.exe" "RJ_GUI" "^[Create]^Create themes for your retroFE systems.^^[Import]^Import artwork from your RoM-Jacket/Hyperspin libraries.^^[Export]^Export artwork from your retroFE installation to your RoM-Jackets/Hyperspin libraries." "Theme;Import;Export" /DB=1
if %errorlevel%==1 goto :SETTHEME
if %errorlevel%==2 goto :MIGRATE
if %errorlevel%==3 goto :EXPORT
goto :QUITOUT

:SETTHEME
"%GBC%\wbox.exe" "RJ_GUI" "[Update] with new themes and settings^[Overwrite] current themes and settings" "Update;Overwrite" /DB=1
if %errorlevel%==1 goto :UPDTHEME
if %errorlevel%==2 goto :OVRTHEME
goto :QUITOUT

:UPDTHEME
for %%a in ("echo n|copy /-y") do set CPTYP=%%~a
set UPDTRFE=1
GOTO :MACHINELIB
:OVRTHEME
set CPTYP=copy /y
:MACHINELIB
del /q "%GBC%\net\%RTFE%\home.xml"
del /q "%GBC%\net\%RTFE%\comp.xml"
del /q "%GBC%\net\%RTFE%\hand.xml"
del /q "%GBC%\net\%RTFE%\arcd.xml"
set ALIASTYPE=

GOTO :RJL

"%GBC%\wbox.exe" "RJ_GUI" "Layout type?" "Default;Machine" /DB=1
if %errorlevel%==1 goto :RJL
if %errorlevel%==2 goto :MACHINELAYOUT
goto :QUITOUT

:MACHINELAYOUT
set ALIASTYPE=1

:RJL
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
"%SEVENZIP%" x -y "%BACKDROP%" -o"%BACKDEST%"
set RFEM=1
call :THEMECR
set RFEM=
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CSTCONS=%%~a
call :COPYCVN
)

if "%ALIASTYPE%"=="" goto :MENU
if exist "%GBC%\net\%RTFE%\arcd.xml" echo.^<item collection="Arcade"/^>>>"%GBC%\net\%RTFE%\menu.xml"
if exist "%GBC%\net\%RTFE%\home.xml" echo.^<item collection="Home"/^>>>"%GBC%\net\%RTFE%\menu.xml"
if exist "%GBC%\net\%RTFE%\comp.xml" echo.^<item collection="Computer"/^>>>"%GBC%\net\%RTFE%\menu.xml"
if exist "%GBC%\net\%RTFE%\hand.xml" echo.^<item collection="Handheld"/^>>>"%GBC%\net\%RTFE%\menu.xml"
if exist "%GBC%\net\%RTFE%\other.xml" echo.^<item collection="Other"/^>>>"%GBC%\net\%RTFE%\menu.xml"
if exist "%GBC%\net\%RTFE%\other.xml" echo.^</menu^>>>"%GBC%\net\%RTFE%\other.xml"
if exist "%GBC%\net\%RTFE%\home.xml" echo.^</menu^>>>"%GBC%\net\%RTFE%\home.xml"
if exist "%GBC%\net\%RTFE%\arcd.xml" echo.^</menu^>>>"%GBC%\net\%RTFE%\arcd.xml"
if exist "%GBC%\net\%RTFE%\hand.xml" echo.^</menu^>>>"%GBC%\net\%RTFE%\hand.xml"
if exist "%GBC%\net\%RTFE%\comp.xml" echo.^</menu^>>>"%GBC%\net\%RTFE%\comp.xml"

:MENU
if exist "%GBC%\net\%RTFE%\menu.xml" echo.^</menu^>>>"%GBC%\net\%RTFE%\menu.xml"
mkdir "%RFE%\layouts\RJ"
if "%UPDTRFE%"=="1" goto :IFTHEM
if not exist "%RFE%\settings.orig" rename "%RFE%\settings.conf" "settings.orig"
if exist "%RFE%\settings.bak" del /q "%RFE%\settings.bak"
rename "%RFE%\settings.conf" "settings.bak"
copy /y "%GBC%\net\%RTFE%\settings.conf" "%RFE%"
copy /y "%GBC%\net\%RTFE%\controls.conf" "%RFE%"

:CPYMENU
if "%ALIASTYPE%"=="" goto :CPYNR
copy /y "%GBC%\net\%RTFE%\arcd.xml" "%RFE%\collections\Arcade\menu.xml"
copy /y "%GBC%\net\%RTFE%\hand.xml" "%RFE%\collections\Handheld\menu.xml"
copy /y "%GBC%\net\%RTFE%\comp.xml" "%RFE%\collections\Computer\menu.xml"
copy /y "%GBC%\net\%RTFE%\home.xml" "%RFE%\collections\Home\menu.xml"
copy /y "%GBC%\net\%RTFE%\other.xml" "%RFE%\collections\Other\menu.xml"

:CPYNR
copy /y "%GBC%\net\%RTFE%\bsl.conf" "%RFE%\launchers\batchScriptLauncher.conf"
copy /y "%BACKDEST%\Favorites.%BACKEXTN%" "%RFE%\collections\Main\bg.%BACKEXTN%"
copy /y "%GBC%\net\%RTFE%\RJ\*.*" "%RFE%\layouts\RJ"
if "%DISPASPCT%"=="4x3" copy /y "%GBC%\net\%RTFE%\4x3\*.*" "%RFE%\layouts\RJ"
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuration Generated" /stop /timeout:1
goto :THMQU

:IFTHEM
if not exist "%RFE%\settings.orig" rename "%RFE%\settings.conf" "settings.orig"
if exist "%RFE%\settings.bak" del /q "%RFE%\settings.bak"
rename "%RFE%\settings.conf" "settings.bak"
%CPTYP% "%GBC%\net\%RTFE%\settings.conf" "%RFE%"
%CPTYP% "%GBC%\net\%RTFE%\controls.conf" "%RFE%" 
%CPTYP% "%GBC%\net\%RTFE%\menu.xml" "%RFE%\collections\Main"
%CPTYP% "%GBC%\net\%RTFE%\bsl.conf" "%RFE%\launchers\batchScriptLauncher.conf"
%CPTYP% "%BACKDEST%\Favorites.%BACKEXTN%" "%RFE%\collections\Main\bg.%BACKEXTN%"
"%ROBOCPY%" "%GBC%\net\%RTFE%\RJ\*.*" "%RFE%\layouts\RJ" /COPY:DAT /NP /IS /R:2 /W:2
if "%DISPASPCT%"=="4x3" "%ROBOCPY%" "%GBC%\net\%RTFE%\4x3\*.*" "%RFE%\layouts\RJ" /COPY:DAT /NP /IS /R:2 /W:2
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuration Generated" /stop /timeout:1

:CPYXML
:THMQU
copy /y "%GBC%\net\%RTFE%\settings.conf" "%RFE%"
copy /y "%GBC%\net\%RTFE%\controls.conf" "%RFE%" 

:MKSC
pushd "%RFE%"
"%GBC%\wbox.exe" "RJ_GUI" "Show Nice-Names?" "Nice;(Parenth);[Bracket];[(Both)]" /DB=1
if %errorlevel%==1 goto :NICE
if %errorlevel%==2 goto :PARENTH
if %errorlevel%==3 goto :BRACK
if %errorlevel%==4 goto :BOTH
goto :QUITOUT

:NICE
"%GBC%\fart.exe" "settings.conf" [DELIM1] "no"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "no"
goto :RFECONFIGD

:PARENTH
"%GBC%\fart.exe" "settings.conf" [DELIM1] "yes"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "no"
goto :RFECONFIGD


:BRACK
"%GBC%\fart.exe" "settings.conf" [DELIM1] "no"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "yes"
goto :RFECONFIGD

:BOTH
"%GBC%\fart.exe" "settings.conf" [DELIM1] "yes"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "yes"
goto :RFECONFIGD


:RFECONFIGD
"%GBC%\fart.exe" "launchers\batchScriptLauncher.conf" [BSLPTH] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
popd
%BSTRT% "%WFINS%" "RJ_GUI" "FINISHED" /Stop /timeout:1
goto :rtfeconfig


:COPYMAC
set MACTYPE=
if "%CSTCONS%"==":::::::" exit /b
if "%CSTCONS%"=="ALL SYSTEMS" exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating %CSTCONS% Theme" /marquee
"%RFE%\core\%RTFE%.exe" -createcollection "%CSTCONS%"
for /f "delims=" %%a in ('type "%GBC%\arcd.set"') do if /i "%%~a"=="%CSTCONS%" set MACTYPE=Arcade
for /f "delims=" %%a in ('type "%GBC%\home.set"') do if /i "%%~a"=="%CSTCONS%" set MACTYPE=Home
for /f "delims=" %%a in ('type "%GBC%\comp.set"') do if /i "%%~a"=="%CSTCONS%" set MACTYPE=Computer
for /f "delims=" %%a in ('type "%GBC%\hand.set"') do if /i "%%~a"=="%CSTCONS%" set MACTYPE=Handheld
if "%MACTYPE%"=="" set MACTYPE=Other
if "%MACTYPE%"=="Other" set MACXML=other
if "%MACTYPE%"=="Other" "%RFE%\core\%RTFE%.exe" -createcollection "Other"
if "%MACTYPE%"=="Arcade" set MACXML=arcd
if "%MACTYPE%"=="Arcade" "%RFE%\core\%RTFE%.exe" -createcollection "Arcade"
if "%MACTYPE%"=="Home" set MACXML=home
if "%MACTYPE%"=="Home" "%RFE%\core\%RTFE%.exe" -createcollection "Home"
if "%MACTYPE%"=="Computer" set MACXML=comp
if "%MACTYPE%"=="Computer" "%RFE%\core\%RTFE%.exe" -createcollection "Computer"
if "%MACTYPE%"=="Handheld" set MACXML=hand
if "%MACTYPE%"=="Handheld" "%RFE%\core\%RTFE%.exe" -createcollection "Handheld"
if not exist "%GBC%\net\%RTFE%\%MACXML%.xml" echo.^<menu^>>"%GBC%\net\%RTFE%\%MACXML%.xml"
echo.^<item collection="%CSTCONS%"/^>>>"%GBC%\net\%RTFE%\%MACXML%.xml"
if "%UPDTRFE%"=="1" goto :IFEX
del /q "%RFE%\collections\%CSTCONS%\*clude.txt"
copy /y "%GBC%\net\%RTFE%\rfecon.conf" "%RFE%\collections\%CSTCONS%\settings.conf"
copy /y "%GBC%\net\videos\%CSTCONS%.mp4" "%RFE%\collections\%CSTCONS%\system_artwork\video.mp4"
copy /y "%BACKDEST%\%CSTCONS%.%BACKEXTN%" "%RFE%\collections\%CSTCONS%\system_artwork\bg.%BACKEXTN%"
copy /y "%BACKDEST%\%CSTCONS%1.%BACKEXTN%" "%RFE%\collections\%CSTCONS%\system_artwork\bg2.%BACKEXTN%"
copy /y "%GBC%\net\%FLDR%\%CSTCONS%.png" "%RFE%\collections\%CSTCONS%\system_artwork\device.png"
copy /y "%GBC%\net\%BANN%\%CSTCONS%.png" "%RFE%\collections\%CSTCONS%\system_artwork\logo.png"
exit /b



:COPYCVN
if "%ALIASTYPE%"=="1" goto :COPYMAC
if "%CSTCONS%"==":::::::" exit /b
if "%CSTCONS%"=="ALL SYSTEMS" exit /b
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating %CSTCONS% Theme" /marquee
"%RFE%\core\%RTFE%.exe" -createcollection "%CSTCONS%"
if "%UPDTRFE%"=="1" goto :IFEX
del /q "%RFE%\collections\%CSTCONS%\*clude.txt"
copy /y "%GBC%\net\%RTFE%\rfecon.conf" "%RFE%\collections\%CSTCONS%\settings.conf"
copy /y "%GBC%\net\videos\%CSTCONS%.mp4" "%RFE%\collections\%CSTCONS%\system_artwork\video.mp4"
copy /y "%BACKDEST%\%CSTCONS%.%BACKEXTN%" "%RFE%\collections\%CSTCONS%\system_artwork\bg.%BACKEXTN%"
copy /y "%BACKDEST%\%CSTCONS%1.%BACKEXTN%" "%RFE%\collections\%CSTCONS%\system_artwork\bg2.%BACKEXTN%"
copy /y "%GBC%\net\%FLDR%\%CSTCONS%.png" "%RFE%\collections\%CSTCONS%\system_artwork\device.png"
copy /y "%GBC%\net\%BANN%\%CSTCONS%.png" "%RFE%\collections\%CSTCONS%\system_artwork\logo.png"
exit /b	


:IFEX
%CPTYP% "%GBC%\net\%RTFE%\rfecon.conf" "%RFE%\collections\%CSTCONS%\settings.conf"
%CPTYP% "%GBC%\net\videos\%CSTCONS%.mp4" "%RFE%\collections\%CSTCONS%\system_artwork\video.mp4"
%CPTYP% "%BACKDEST%\%CSTCONS%.%BACKEXTN%" "%RFE%\collections\%CSTCONS%\system_artwork\bg.%BACKEXTN%"
%CPTYP% "%BACKDEST%\%CSTCONS%1.%BACKEXTN%" "%RFE%\collections\%CSTCONS%\system_artwork\bg2.%BACKEXTN%"
%CPTYP% "%GBC%\net\%FLDR%\%CSTCONS%.png" "%RFE%\collections\%CSTCONS%\system_artwork\device.png"
%CPTYP% "%GBC%\net\%BANN%\%CSTCONS%.png" "%RFE%\collections\%CSTCONS%\system_artwork\logo.png"
exit /b

:THEMEF
"%GBC%\wbox.exe" "RJ_GUI" "Geneate Console Themes?" "Theme;Skip" /DB=1
if %errorlevel%==1 goto :THEME
if %errorlevel%==2 goto :MKSC
goto :QUITOUT

:EXPORT
set /a ARCP=1
set BUSYPROT=Exporting
goto :TRANS
:MIGRATE
set /a ARCP=0
set BUSYPROT=Importing
goto :TRANS

:TRANS
:LIBRARYSEL
"%GBC%\wbox.exe" "RJ_GUI" "Select a library to transfer %DIREC%" "RoMJacket;Hyperspin;Both" /DB=1
if %errorlevel%==1 goto :ROMLIB
if %errorlevel%==2 goto :HSLIB
if %errorlevel%==3 goto :BOTH
goto :QUITOUT

:GETSYS
%BSTRT% "%WBUSY%" "RJ_GUI" "%BUSYPROT% your libraries." /marquee
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CONSESPTH=%GBG%\%GAM%\%CONS%\%%~a
set CSTCONS=%%~a
set CONSES=%%~a
CALL :ESCA
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b

:ESCA
for %%a in ("%CSTCONS:~0,1%") do set RFECATMP=%%~a
if "%RFECATMP%"==":" exit /b
if "%RFECATMP%"=="-" exit /b

if "%HSLIB%"=="1" call :HSLIB1
if "%HSLIB%"=="2" call :HSLIB2
if "%ROMLIB%"=="1" call :ROMLIB1
if "%ROMLIB%"=="2" call :ROMLIB2
exit /b

:HSLIB1
for /f "delims=" %%a in  ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
if "%NOBCK%"=="" copy /y "%HYP%\media\%CSTCONS%\images\%ARTBCKD%\%%~a.png" "%RFE%\collections\%CSTCONS%\medium_artwork\screenshot\%%~a.png"
if "%NOMED%"=="" copy /y "%HYP%\media\%CSTCONS%\images\%ARTMED%\%%~a.png" "%RFE%\collections\%CSTCONS%\medium_artwork\media_front\%%~a.png"
if "%BOBOXB%"=="" copy /y "%HYP%\media\%CSTCONS%\images\%ARTFLDB%\%%~a.png" "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_back\%%~a.png"
if "%NOFLDR%"=="1" copy /y "%HYP%\media\%CSTCONS%\images\%ARTFLDR%\%%~a.png" "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_front\%%~a.png"
copy /y "%HYP%\media\%CSTCONS%\images\wheel\%%~a.png" "%RFE%\collections\%CSTCONS%\medium_artwork\logo\%%~a.png"
copy /y "%HYP%\media\%CSTCONS%\video\*.png" "%RFE%\collections\%CSTCONS%\medium_artwork\video\"
)
exit /b

:HSLIB2
for /f "delims=" %%a in  ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
if "%NOBOXB%"=="" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_back\%%~a.png" "%HYP%\media\%CSTCONS%\images\%ARTFLDB%\%%~a.png"
if "%NOFLDR%"=="" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_front\%%~a.png" "%HYP%\media\%CSTCONS%\images\%ARTFLDR%\%%~a.png"
if "%NOMED%"=="" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\medium_front\%%~a.png" "%HYP%\media\%CSTCONS%\images\%ARTMED%\%%~a.png"
if "%NOBCK%"=="" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\screenshot\%%~a.png" "%HYP%\media\%CSTCONS%\images\%ARTBCKD%\%%~a.png"
copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\logo\%%~a.png" "%HYP%\media\%CSTCONS%\images\wheel\%%~a.png"
)
exit /b

:ROMLIB1
for /f "delims=" %%a in  ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\backdrops\*.mp4" "%RFE%\collections\medium_artwork\%CSTCONS%\video\"
copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\banner.png" "%RFE%\collections\%CSTCONS%\medium_artwork\logo\%%~a.jpg"
if "%NOFLDR%"=="" copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\Folder.jpg" "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_front\%%~a.jpg"
if "%NOMED%"=="" copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\Cart.jpg" "%RFE%\collections\%CSTCONS%\medium_artwork\medium_front\%%~a.jpg"
if "%NOBCK%"=="" copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\.snaps\*.*" "%RFE%\collections\%CSTCONS%\medium_artwork\screenshot\"
if "%NOBOXB%"=="" copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\back.jpg" "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_back\%%~a.jpg"
)
exit /b
:ROMLIB2
for /f "delims=" %%a in  ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\video\*.mp4" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\backdrops\"
copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\logo\%%~a.png" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\banner.png"
if "%ROMLIB%"=="2" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\artwork_front\%%~a.png" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\Folder.png"
if "%ROMLIB%"=="2" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\screenshot\%%~a.png" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\.snaps\%%~a.png"
if "%ROMLIB%"=="2" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\screentitle\%%~a.png" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\title.png"
if "%ROMLIB%"=="2" copy /y "%RFE%\collections\%CSTCONS%\medium_artwork\medium_front\%%~a.png" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\Cart.png"
)
exit /b


:ART1D
set ARTFLDB=Artwork1
goto :%ARBRET%
exit /b
:ART2D
set ARTFLDB=Artwork2
goto :%ARBRET%
exit /b
:ART3D
set ARTFLDB=Artwork3
goto :%ARBRET%
exit /b
:ART4D
set ARTFLDB=Artwork4
goto :%ARBRET%
exit /b


:ART1C
set ARTBCKD=Artwork1
goto :ARTBRD
exit /b
:ART2C
set ARTBCKD=Artwork2
goto :ARTBRD
exit /b
:ART3C
set ARTBCKD=Artwork3
goto :ARTBRD
exit /b
:ART4C
set ARTBCKD=Artwork4
goto :ARTBRD
exit /b

:ART1B
set ARTMED=Artwork1
goto :ARTBCD
exit /b
:ART2B
set ARTMED=Artwork2
goto :ARTBCD
exit /b
:ART3B
set ARTMED=Artwork3
goto :ARTBCD
exit /b
:ART4B
set ARTMED=Artwork4
goto :ARTBCD
exit /b

:ART1
set ARTFLDR=Artwork1
goto :ARTBDD
exit /b
:ART2
set ARTFLDR=Artwork2
goto :ARTBDD
exit /b
:ART3
set ARTFLDR=Artwork3
goto :ARTBDD
exit /b
:ART4
set ARTFLDR=Artwork4
goto :ARTBDD
exit /b

:BOTH
call :SANITIZE
set /a HSLIB=1+%ARCP%
set /a ROMLIB=1+%ARCP%
set ARBRET=BOTH
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
call :ARTADD
call :GETSYS
goto :rtfeconfig

:ROMLIB
call :SANITIZE
set /a ROMLIB=1+%ARCP%
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
call :GETSYS
goto :rtfeconfig

:THEMECR
call :SANITIZE
set RFETHEME=1
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
set RFETHEME=
if not exist "%GBC%\curlist.ini" goto :QUITOUT
exit /b


:HSLIB
call :SANITIZE
if "%HPN%"=="[HPN]" goto :NOHS
if "%HPN%"=="" goto :NOHS
set ARBRET=RTFERESUME
set /a HSLIB=1+%ARCP%
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT

:ARTADD
set NOFLDB=
set NOMED=
set NOBOXB=
set NOBCK=
"%GBC%\wbox.exe" "RJ_GUI" "Select an art-folder containing boxart" "Artwork1;Artwork2;Artwork3;Artwork4;None" /DB=3
if %errorlevel%==1 goto :ART1
if %errorlevel%==2 goto :ART2
if %errorlevel%==3 goto :ART3
if %errorlevel%==4 goto :ART4
if %errorlevel%==5 goto :ARTBDDR
goto :QUITOUT

:ARTBDDR
set NOFLDB=1
:ARTBDD
"%GBC%\wbox.exe" "RJ_GUI" "Select an art-folder containing media-covers" "Artwork1;Artwork2;Artwork3;Artwork4;None" /DB=3
if %errorlevel%==1 goto :ART1B
if %errorlevel%==2 goto :ART2B
if %errorlevel%==3 goto :ART3B
if %errorlevel%==4 goto :ART4B
if %errorlevel%==5 goto :ARTBCDR
goto :QUITOUT

:ARTBCDR
set NOMED=1
:ARTBCD
"%GBC%\wbox.exe" "RJ_GUI" "Select an art-folder containing backdrops" "Artwork1;Artwork2;Artwork3;Artwork4;None" /DB=3
if %errorlevel%==1 goto :ART1C
if %errorlevel%==2 goto :ART2C
if %errorlevel%==3 goto :ART3C
if %errorlevel%==4 goto :ART4C
if %errorlevel%==5 goto :ARTBRDR
goto :QUITOUT

:ARTBRDR
set NOBCK=1
:ARTBRD
"%GBC%\wbox.exe" "RJ_GUI" "Select an art-folder containing box-back art" "Artwork1;Artwork2;Artwork3;Artwork4;None" /DB=3
if %errorlevel%==1 goto :ART1D
if %errorlevel%==2 goto :ART2D
if %errorlevel%==3 goto :ART3D
if %errorlevel%==4 goto :ART4D
if %errorlevel%==5 goto :ARTBB
goto :QUITOUT

:ARTBB
set NOBOXB=1
goto :%ARBRET%

:RTFERESUME
call :GETSYS
goto :rtfeconfig

:SANITIZE
if "%RFEM%"=="" pushd "%GBG%\%GAM%\%CONS%"
if "%RFEM%"=="1" pushd "%MIRLOC%\%MIRDN%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Sanitizing Database" /marquee
for /f "delims=" %%a in ('dir /b/ad') do (
pushd "%%~a"
set NDO=%%~a
call :INDIR
rd /q "%%~a"
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Sanitized" /stop /timeout:1
popd
exit /b

:INDIR
for /f "delims=" %%a in ('dir /b/ad') do rd /q "%%~a"
popd	
exit /b

:ADDSYS
:GENERATE
call "%GBC%\rfemirrors.bat">>"%GBC%\logs\rfemirrors.log"
goto :THEMEQ

:USEDEF2
set MIRDN=retroMirrors
exit /b
:USEDEF
for %%a in ("%MIRLOC:~0,-13%") do set MIRLOC=%%~a
set MIRDN=retroMirrors
exit /b

:USEMIR2
set LOC1=1
:USEMIR
set REDFL=USEDEF
if "%LOC1%"=="1" set REDFL=USEDEF2
"%GBC%\wbox.exe" "RJ_GUI" "Use the detected retroMirrors location?" "Yes;New" /DB=1
if %errorlevel%==1 goto :%REDFL%
if %errorlevel%==2 goto :REDEF
goto :QUITOUT

:DEFINELOC
set LOC1=
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET MIRLOC=" "%GBG%\%GAM%" "RetroFE Mirror Location" /noquote') do %%a
if "%MIRLOC%"=="" goto :QUITOUT
for /f "delims=" %%a in ("%MIRLOC%") do if "%%~nxa"=="retroMirrors" goto :USEMIR
if exist "%MIRLOC%\retroMirrors\" goto :USEMIR2
popd
:REDEF
"%GBC%\Winput.exe" "set MIRDN=$input" "Enter the name of your retroFE mirrors." "retroMirrors">"%GBC%\input.cmd"
if %ERRORLEVEL%==1 goto :QUITOUT
CALL "%GBC%\input.cmd"
if "%MIRDN%"=="" goto :QUITOUT
exit /b

:RFEADD
if "%MIRDN%"=="" call :DEFINELOC
if "%MIRLOC%"=="" call :DEFINELOC
if "%MIRLOC%"=="" goto :ADDSYS
if "%MIRDN%"=="" goto :ADDSYS
set RFEM=1
CALL "%GBC%\reAdd.bat">>"%GBC%\logs\readd.log"
set RFEM=
copy /y "%GBC%\net\%RTFE%\menu.xml" "%RFE%\collections\Main"
goto :THEMEQ

:exitretroFE
:QUITOUT
set rfecancel=1
:BGCONV