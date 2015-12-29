:SETLOCALE
set XBMCIC=
set VXBM=
if "%WINVER%"=="XP" goto :XPTEST
if not exist "%USERPROFILE%\AppData\Roaming\XBMC" goto :KODIAPPDATA
for %%a in ("%USERPROFILE%\AppData\Roaming\XBMC") do set XBAPDTA=%%~a
set VXBM=%XBMC%
goto :generate_xbmcxml

:KODIAPPDATA
if not exist "%USERPROFILE%\AppData\Roaming\Kodi" goto :generate_xbmcxml
for %%a in ("%USERPROFILE%\AppData\Roaming\Kodi") do set XBAPDTA=%%~a
set VXBM=%KODI%

:XPTEST
if not exist "%APPDATA%\XBMC" goto :XPKODI
for %%a in ("%APPDATA%\XBMC") do set XBAPDTA=%%~a
set VXBM=%XBMC%
goto :generate_xbmcxml

:XPKODI 
if not exist "%APPDATA%\Kodi" goto :generate_xbmcxml
for %%a in ("%APPDATA%\Kodi") do set XBAPDTA=%%~a

:generate_xbmcxml
if "%AUTOCONFIGURE%"=="1" goto :xbmcxml_begin
if exist "%PRGX%\%XBMC%" for %%a in ("%PRGX%\%XBMC%") do SET XBC=%%~a
if "%XBC%"=="" goto :XBCKODI
set VXBM=%XBMC%
goto :XBTEST

:XBCKODI
if exist "%PRGX%\%KODI%" for %%a in ("%PRGX%\%KODI%") do SET XBC=%%~a
if "%XBC%"=="" goto :EMUTST
set VXBM=%KODI%

:XBTEST
for /f "delims=" %%a in ('dir /b/a-d "%PRGX/%\%XBMC%\XBMC.exe"') do (
SET XBTST=%%~a
SET XBM=%%~dpnxa
call :LOCIN
)
if /i "%XBTST%"=="xbmc.exe" goto :EMUTST

for /f "delims=" %%a in ('dir /b/a-d "%PRGX%\%KODI%\Kodi.exe"') do (
SET XBTST=%%~a
SET XBM=%%~dpnxa
call :LOCIN2
)

:EMUTST
if exist "%GBE%\%EMUZ%\%XBMC%" goto :EXETEST
if exist "%GBE%\%EMUZ%\%KODI%" goto :EXETEST2
goto :VARTST

:EXETEST
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%XBMC%\X*.exe"') do (
SET XBTST=%%~a
SET XBM=%%~dpnxa
SET XBC=%GBE%\%EMUZ%\%XBMC%
call :LOCIN
)
if "%XBM%"=="" goto :VARTST
if "%XBM%"=="[XBM]" goto :VARTST
set VXBM=%XBMC%
goto :xbmcxml_begin

:EXETEST2
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%KODI%\K*.exe"') do (
SET XBTST=%%~a
SET XBM=%%~dpnxa
SET XBC=%GBE%\%EMUZ%\%KODI%
call :LOCIN
)

:VARTST
if "%XBM%"=="[XBM]" goto :no_xbmc
if "%XBM%"=="" goto :no_xbmc
set VXBM=%KODI%

:xbmcxml_begin
set XBMDISP=REINSTALL
set XBMINST=Reinstall
if "%XBM%"=="[XBM]" set XBMDISP=INSTALL
if "%XBM%"=="[XBM]" set XBMINST=Install
if "%XBM%"=="" set XBMDISP=INSTALL
if "%XBM%"=="" set XBMINST=Install
"%GBC%\wbox.exe" "RJ_GUI" "^##############################^XBMC^##############################^^[%XBMDISP%]^%XBMINST% XBMC^^[LOCATE]^Select the location of XBMC^^[RCB]^Install and configure Rom Collection Browser plugin.^^[Adv.Launcher]^Install and configure Advanced Launcher plugin^^[IARL]^Install and configure the Internet Archive ROM Launcher^" "%XBMINST%;Locate;RCB;Adv.Launcher;IARL;MainMenu"
if %ERRORLEVEL%==1 goto :get_xbmc
if %ERRORLEVEL%==2 goto :locate_xbmc
if %ERRORLEVEL%==3 goto :generate_rcb
if %ERRORLEVEL%==4 goto :generate_advl
if %ERRORLEVEL%==5 goto :IARL
if %ERRORLEVEL%==6 goto :finxbmc
goto :finxbmc

:LOCIN
if /i "%XBTST%"=="%XBMC%.exe" "%GBC%\fart.exe" "locset.ini" "[XBM]" "%XBM%"
exit /b
:LOCIN2
if /i "%XBTST%"=="%KODI%.exe" "%GBC%\fart.exe" "locset.ini" "[XBM]" "%XBM%"
exit /b

:generate_advl
if "%ADV%"=="0" goto :no_advl
if not exist "%XBAPDTA%\addons\plugin.program.advanced.launcher\addon.xml" goto :no_advl
goto :advl_config

:no_inst
%BSTRT% "%WFINS%" "RJ_GUI" "XBMC could not be installed" /Stop /Timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "XBMC was not found." "Locate;Menu" /DB=1
if %ERRORLEVEL%==1 goto :locate_xbmc
if %ERRORLEVEL%==2 goto :finxbmc
goto :finxbmc


:no_xbmcB
%BSTRT% "%WFINS%" "RJ_GUI" "XBMC not installed" /Stop /Timeout:1
:no_xbmc
"%GBC%\wbox.exe" "RJ_GUI" "XBMC was not found." "Download;Locate;Menu" /DB=2
if %ERRORLEVEL%==1 goto :get_xbmc
if %ERRORLEVEL%==2 goto :locate_xbmc
if %ERRORLEVEL%==3 goto :finxbmc
goto :finxbmc

:locate_xbmc
set XBM=
set XBTST=
set XBKO=
for /f "delims=" %%a in ('Wfolder.exe "SET XBC=" "%GBE%\%EMUZ%" "Select the XBMC/Kodi Folder:'" /noquote') do %%a
if "%XBC%"=="" goto :bypass_xbmc

if not exist "%XBC%\Kodi.exe" goto :no_xbmc

if exist "%XBC%\xbmc.exe" for /f "delims=" %%a in ('dir /b/a-d "%XBC%\%XBMC%.exe"') do (
SET XBM=%%~dpnxa
SET XBTST=xbmc.exe
)
if exist "%XBC%\xbmc.exe" goto :SETXBCCHOICE

if exist "%XBC%\kodi.exe" for /f "delims=" %%a in ('dir /b/a-d "%XBC%\%KODI%.exe"') do (
SET XBM=%%~dpnxa
SET XBTST=kodi.exe
)
if "%XBTST%"=="" goto :no_xbmcB
goto :SETXBCCHOICE

:SETXBCCHOICE
call "%GBC%\setlocset.bat"

if /i "%XBTST%"=="xbmc.exe" "%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\%XBMC%.lnk" /A:C /W:"%XBC%" /T:"%XBC%\%XBMC%.exe"
if /i "%XBTST%"=="Kodi.exe" "%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\%KODI%.lnk" /A:C /W:"%XBC%" /T:"%XBC%\%KODI%.exe"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "XBMC has been installed to %XBC%" "Okay" /DB=1 /TM=1
goto :XBMC_complete

:bypass_xbmc
set XBM=[XBM]
for %%a in ("%temp%") do set XBC=%%~a
goto :xbmcxml_begin

:get_xbmc
set XBMCFILE=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading XBMC" /marquee
call "%GBC%\getXBMC.bat">>"%GBC%\logs\getXBMC.log"
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%XBMC%\*.exe"') do set XBMCFILE=%%~a
if "%XBMCFILE%"=="" goto :no_xbmcB
%BSTRT% "%WFINS%" "RJ_GUI" "XBMC %DWNSTAT%" /Stop /timeout:1
if "%DWNSTAT%" NEQ "downloaded" goto :no_xbmc

for /f "delims=" %%a in ('Wfolder.exe "SET XBC=" "%GBE%\%EMUZ%" "Install XBMC to:?  eg:''%PRGX%''" /noquote') do %%a
if "%XBC%"=="" goto :generate_xbmcxml
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing XBMC" /marquee
set XBLOPT=/S
%LAUNCH% "%GBC%\net\%XBMC%\%XBMCFILE%" %XBLOPT% /D=%XBC%\%XBMC%
if %ERRORLEVEL%==1 goto :no_inst
%BSTRT% "%WFINS%" "RJ_GUI" "XBMC Installed" /Stop /timeout:1
for %%A in ("%XBC%\%XBMC%") do set XBC=%%~A
for %%A in ("%XBC%\%XBMC%.exe") do set XBM=%%~A
"%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\%XBMC%.lnk" /A:C /W:"%XBC%" /T:"%XBC%\%XBMC%.exe"
set XBMCIC=1

:XBMC_complete
for /f "delims=" %%a in ('dir /b/a-d "%XBC%\%XBMC%.exe"') do SET XBM=%%~dpnxa
if /i "%XBTST%"=="Kodi.exe" for /f "delims=" %%a in ('dir /b/a-d "%XBC%\%KODI%.exe"') do SET XBM=%%~dpnxa
"%GBC%\fart.exe" "locset.ini" "[XBM]" "%XBM%"
if "%XBMCIC%"=="" goto :generate_xbmcxml
goto :SETLOCALE

:no_advl
set ADV=0
"%GBC%\wbox.exe" "RJ_GUI" "Advanced Launcher was not found." "Download;Menu"
if %ERRORLEVEL%==1 goto :install_advl
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :finxbmc

:install_advl
call "%GBC%\getADVL.bat">>"%GBC%\logs\getADVL.log"
call :WINC
if "%WINVER%"=="XP" call :SETXPM
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%ADVL%\%ADVLFILE%" -o"%XBAPDTA%\addons"
if not exist "%XBAPDTA%\addons\plugin.program.advanced.launcher\addon.xml" goto : no_advl
set ADV=1
+ Reply to Thread
Results 1 to 5 of 5
Thread: Organizing Mame Roms 2014

"%GBC%\fart.exe" "locset.ini" "[ADV]" "1"
goto :cfg_advl

:advl_config
:cfg_advl
CALL "%GBC%\buildXBMCAL.bat">>"%GBC%\logs\buildXBMCAL.log"
goto :generate_xbmcxml

:IARL
:generate_iarl
if "%IRL%"=="0" goto :no_iarl
if not exist "%XBAPDTA%\addons\plugin.program.iarl-master\addon.xml" goto :no_iarl
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to configure Internet Archive ROM Launcher for XBMC?" "Yes;MainMenu" /DB=1
if %ERRORLEVEL%==1 goto :iarl_config
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :finxbmc

:no_iarl
SET IRL=0
"%GBC%\wbox.exe" "RJ_GUI" "Internet Archive ROM Launcher was not found." "Download;Menu" /DB=1
if %ERRORLEVEL%==1 goto :install_iarl
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :generate_xbmcxml

:REGEN
"%GBC%\wbox.exe" "RJ_GUI" "Inetnet Archive ROM Launcher detected" "Install/Init;Configure" /DB=1
if %errorlevel%==1 goto :REXTRACT
if %errorlevel%==2 goto :CONFIGURE
goto :QUITOUT

:install_iarl
if exist "%XBAPDTA%\addons\plugin.program.iarl-master\addon.xml" goto :REGEN
call "%GBC%\getIARL.bat">>"%GBC%\logs\getIARL.log"

"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\IARL\%IARLFILE%" -o"%XBAPDTA%\addons"
if not exist "%XBAPDTA%\addons\plugin.program.iarl-master\addon.xml" goto :no_iarl
set IRL=1
"%GBC%\fart.exe" "locset.ini" "[IRL]" "1"
goto :cfg_iarl

:iarl_config
:cfg_iarl
CALL "%GBC%\buildXBMCIRL.bat">>"%GBC%\logs\buildXBMCIRL.log"
goto :generate_xbmcxml


:generate_rcb
if "%RCB%"=="0" goto :no_rcb
if not exist "%XBAPDTA%\addons\script.games.rom.collection.browser\addon.xml" goto :no_rcb
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to configure Rom Collection Browser for XBMC?" "Yes;MainMenu" /DB=1
if %ERRORLEVEL%==1 goto :rcb_config
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :finxbmc

:no_rcb
SET RCB=0
"%GBC%\wbox.exe" "RJ_GUI" "Rom Collection Browser was not found." "Download;Menu" /DB=1
if %ERRORLEVEL%==1 goto :install_rcb
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :generate_xbmcxml

:install_rcb
call "%GBC%\getRCBRWS.bat">>"%GBC%\logs\getRCBRWS.log"
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%RCBRWS%\%RCBRWSFILE%" -o"%XBAPDTA%\addons"
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%RCBRWS%\%RCBRWS2FILE%" -o"%XBAPDTA%\addons"
if not exist "%XBAPDTA%\addons\script.games.rom.collection.browser\addon.xml" goto :no_rcb
if not exist "%XBAPDTA%\addons\service.rom.collection.browser\addon.xml" goto :no_rcb
set RCB=1
"%GBC%\fart.exe" "locset.ini" "[RCB]" "1"
goto :cfg_rcb

:rcb_config
:cfg_rcb
CALL "%GBC%\buildXBMCRCB.bat">>"%GBC%\logs\buildXBMCRCB.log"
goto :generate_xbmcxml
:finxbmc