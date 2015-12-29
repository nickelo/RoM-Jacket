if "%ARPOP%"=="64" SET INSTLOC=HKLM\SOFTWARE\Wow6432Node
if "%ARPOP%"=="32" SET INSTLOC=HKLM\SOFTWARE

:generate_gbxml
for /f "tokens=2 delims=Z" %%a in ('REG QUERY %INSTLOC%\Microsoft\Windows\CurrentVersion\Uninstall\{249A8819-3335-4650-9B59-3724997ECA86} /v InstallLocation') do set MBLOCT=%%~a
if "%MBLOCT%"=="" goto :DATACHK
for %%a in ("%MBLOCT:~4,-1%") do set MBLOC=%%~a
if "%MBLOC%" NEQ "" set MBR=1
:DATACHK
if exist "%PROGRAMDATA%\%MBRWS%" SET MBCFG=1
if exist "%MBLOC%" "%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
if "%MBR%"=="[MBR]" goto :no_mediabrowser
REM if "%GBR%"=="[GBR]" goto :get_GBdll

:mbset
if "%MBR%"=="1" goto :gbconfigbegin
if "%MBR%"=="0" goto :gbconfigbegin
REM if "%GBR%"=="0" goto :gbconfigbegin
REM if "%GBR%"=="1" goto :gbconfigbegin
if not exist "%MBLOC%" goto :no_mediabrowser

:gbconfigbegin
REM if exist "%ProgramData%\%MBRWS%\%PLGN%\Configurations\%GBRWS%Plugin.xml" SET GBBTN=;Update_GB
if exist "%PROGRAMDATA%\%MBRWS%" SET MBBTN=;Update
REM if "%GBR%"=="1" SET GBBTN=;GameBrowser
REM if "%GBR%"=="1" SET GBBAN=GameBrowser IS INSTALLED
REM if "%GBR%" NEQ "1" SET GBBAN=GameBrowser is NOT INSTALLED
if "%MBR%" NEQ "1" SET MBBAN=MediaBrowser is NOT DETECTED
if "%MBR%" NEQ "1" SET MBBTN=;Setup
if "%MBCFG%"=="1" SET MBBAN=MediaBrowser configurations DETECTED
REM if exist "%GBC%\net\%GBRWS%\%GBRWS%.zip" SET GBBTN=;Update
"%GBC%\wbox.exe" "RJ_GUI" "^^########################^Windows MediaCenter Plugin Configuration^########################^%GBBAN%^%MBBAN%^########################^^[Install]^ install or reinstall MediaBrowser.^^[VideoBG]^   install the VideoBackdrops plugin for MediaBrowser.^^[Setup]^   generate, regenerate or update your current MB configuration file^^" "Install;VideoBG%MBBTN%;MainMenu%GBBTN%" /BW=135
if %ERRORLEVEL%==1 goto :setup_mce
if %ERRORLEVEL%==2 goto :inst_vbd
if %ERRORLEVEL%==3 goto :update_MB
if %ERRORLEVEL%==4 goto :fingb
REM if %ERRORLEVEL%==5 goto :update_GB
goto :fingb

:setup_mce
goto :setup_mb
REM "%GBC%\wbox.exe" "RJ_GUI" "Select the frontend to install/reinstall" "MediaBrowser;GameBrowser"
REM if %ERRORLEVEL%==1 goto :setup_mb
REM if %ERRORLEVEL%==2 goto :setup_gb
REM goto :fingb

:inst_vbd
if not exist "%ProgramData%\%MBRWS%\MediaBrowserXml.config" (goto :setup_mediabrowser)
CALL "%GBC%\getVDBD.bat"
"%SEVENZIP%" x -y "%GBC%\net\%MBRWS%\%VDBDFILE%" -o"%ProgramData%\%MBRWS%\%PLGN%"
if not exist "%ProgramData%\%MBRWS%\%PLGN%\VideoBackdrops.dll" goto :no_VDBD
"%GBC%\wbox.exe" "RJ_GUI" "VideoBackdrops plugin installed" "Okay" /DB=1 /TM=1
if %ERRORLEVEL%==1 goto :generate_gbxml
goto :generate_gbxml

:no_VDBD
"%GBC%\wbox.exe" "RJ_GUI" "RoM-Jacket cannot find the VideoBackdrop plugin.^^" "Download;Continue" /DB=2 /TM=8
if %ERRORLEVEL%==1 goto :inst_vbd
if %ERRORLEVEL%==2 goto :generate_GBXML
goto :fingb

:setup_mb
if not exist "%PROGRAMDATA%\%MBRWS%\MediaBrowserXml.config" (goto :setup_mediabrowser)
for /f "tokens=3 delims= " %%a in ('REG QUERY %INSTLOC%\Microsoft\Windows\CurrentVersion\Uninstall\{249A8819-3335-4650-9B59-3724997ECA86} /v InstallLocation') do set MBLOCT=%%~a
if "%MBLOCT%"=="" goto :setup_mediabrowser
for %%a in ("%MBLOCT:~0,-1%") do set MBLOC=%%~a
"%GBC%\wbox.exe" "RJ_GUI" "^^MediaBrowser is installed.  Would you like to configure it?^^"  "Okay;Locate" /TM=1
if %ERRORLEVEL%==1 goto :gbconfigbegin
if %ERRORLEVEL%==1 goto :locatemb
goto :gbconfigbegin

:locatemb
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET MBXMLOC=" "%EMUL%\*.config" "Select MediabrowserXml.config" /noquote') do %%a
if "%MBXMLOC%"=="" goto :setupmb

REM :setup_gb
REM if not exist "%ProgramData%\%MBRWS%" (goto :setup_mediabrowser)
REM if not exist "%ProgramData%\%MBRWS%\%PLGN%\%GBRWS%.dll" goto :gbinstall
REM "%GBC%\wbox.exe" "RJ_GUI" "^^MediaBrowser and Gamebrowser are installed^^"  "Okay" /TM=1
REM if %ERRORLEVEL%==1 goto :gbconfigbegin
REM goto :gbconfigbegin

:setup_mediabrowser
"%GBC%\wbox.exe" "RJ_GUI" "^ MediaBrowser not detected. Would you like to install it?^^"  "Install;Menu" /DB=1
if %ERRORLEVEL%==1 goto :dwn_mb
if %ERRORLEVEL%==2 goto :fingb
if %ERRORLEVEL%==3 goto :createwogb
goto :fingb

:dwn_mb
CALL "%GBC%\getMediaBrowser.bat"
if "%MBRWSFILE%"=="" goto :no_mediabrowser
"%GBC%\wbox.exe" "RJ_GUI" "^Install to the [Default] location^^%PRGX%^^or [Select] a location^" "Default;Select;MainMenu" /DB=1
if %ERRORLEVEL%==1 goto :INSTALLMEDIABROWSER
if %ERRORLEVEL%==2 goto :CUSTOMMEDBR
if %ERRORLEVEL%==3 goto :fingb
goto INSTALLMEDIABROWSER

:CUSTOMMEDBR
msiexec /norestart /i "%GBC%\net\%MBRWS%\%MBRWSFILE%"
set MBR=1
call :MBDEFAULT
"%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
:MBLOC
set MBLOC=
if exist "%PRGX%\Mediabrowser\Mediabrowser\Configurator.exe" call :MBDEFAULT
if "%MBLOC%" NEQ "" goto :gbconfigbegin
for /f "tokens=3 delims= " %%a in ('REG QUERY %INSTLOC%\Microsoft\Windows\CurrentVersion\Uninstall\{249A8819-3335-4650-9B59-3724997ECA86} /v InstallLocation') do set MBLOCT=%%~a
if "%MBLOCT%"=="" goto :MBLOCSET
for %%a in ("%MBLOCT:~0,-1%") do set MBLOC=%%~a
goto :mbset

:MBLOCSET
for /f "delims=" %%a in ('Wfolder.exe "SET MBLOC=" "%PRGX%" "Locate the Mediabrowser folder" /noquote') do %%a
if %errorlevel%==0 goto :mb_unset
if "%MBLOC%"=="" goto :mb_unset
goto :mbset

:MBDEFAULT
for %%a in ("%PRGX%\%MBRWS%\%MBRWS%") do set MBLOC=%%~a
exit /b

:INSTALLMEDIABROWSER
msiexec /qb /norestart /i "%GBC%\net\%MBRWS%\%MBRWSFILE%"
SET MBR=1
"%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
call :MBDEFAULT
goto :mbset

REM :gbinstall
REM call "%GBC%\getGBplugin.bat"
REM "%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWSPLUGINFILE%" -o"%PROGRAMDATA%\%MBRWS%\%PLGN%"
REM if not exist "%ProgramData%\%MBRWS%\%PLGN%\%GBRWS%.dll" goto :noGBdll
REM "%GBC%\wbox.exe" "RJ_GUI" "Would you like to configure GameBrowser?" "Yes;MainMenu"  /BW=250 
REM if %ERRORLEVEL%==1 goto :inject_GBXML
REM if %ERRORLEVEL%==2 goto :fingb
REM goto :fingb

REM :get_GBdll
REM if "%AUTOCONFIG%"=="1" goto :auto_gbdll
REM "%GBC%\wbox.exe" "RJ_GUI" "Would you like to install Gamebrowser for Mediabrowser?^This is not a free plugin and Mediabrowser can utilize Rom-Jacket with out it." "Install;Configure;Skip" /DB=3 /BW=150
REM if %ERRORLEVEL%==1 goto :propergbinstall
REM if %ERRORLEVEL%==2 goto :inject_GBXML
REM if %ERRORLEVEL%==3 goto gbunset
REM goto :fingb

REM :gbunset

REM :propergbinstall
REM if not exist "%ProgramData%\%MBRWS%\%PLGN%\%GBRWS%.dll" goto :auto_gbdll
REM goto :mbset

REM :auto_gbdll
REM CALL "%GBC%\getGBplugin.bat"
REM "%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWSPLUGINFILE%" -o"%PROGRAMDATA%\%MBRWS%\%PLGN%"
REM if not exist "%GBC%\net\%GBRWS%\%GBRWS%.dll" goto :noGBdll
REM if not exist "%GBC%\net\%GBRWS%\%GBRWS%.dll" goto :noGBdll
REM SET GBR=1
REM "%GBC%\fart.exe" "locset.ini" "[GBR]" "1"
REM goto :generate_GBXML

REM :create_GB
REM CALL "%GBC%\getGBCfg.bat"
REM if exist "%GBC%\net\%GBRWS%\%GAMBFILE%" (goto :genGBr) ELSE (goto :noGBr)

REM :genGBr
REM "%GBC%\wbox.exe" "RJ_GUI" "^^Would you like to Update Your Current GameBrowserPlugin.xml?^" "Yes;Menu"
REM if %ERRORLEVEL%==1 goto :inject_GBXML
REM if %ERRORLEVEL%==2 goto :generate_GBXML
REM goto :fingb

REM :noGBdll
REM SET GBR=0
REM "%GBC%\fart.exe" "locset.ini" "[GBR]" "0"
REM "%GBC%\wbox.exe" "RJ_GUI" "RoM-Jacket cannot find the Gamebrowser plugin.^^" "Download;Continue" /DB=2 /TM=8
REM if %ERRORLEVEL%==1 goto :auto_gbdll
REM if %ERRORLEVEL%==2 goto :generate_GBXML
REM goto :fingb

REM :noGBr
REM SET GBR=0
REM "%GBC%\fart.exe" "locset.ini" "[GBR]" "0"
REM "%GBC%\wbox.exe" "RJ_GUI" "RoM-Jacket cannot download components for Gamebrowser.^^" "Download;Continue" /DB=2 /TM=8
REM if %ERRORLEVEL%==1 goto :create_GB
REM if %ERRORLEVEL%==2 goto :generate_GBXML
REM goto :fingb

:update_MB
If not exist "%ProgramData%\MediaBrowser\MediaBrowserXml.config.sbak" (copy "%ProgramData%\MediaBrowser\MediaBrowserXml.config" "%ProgramData%\MediaBrowser\MediaBrowserXml.config.sbak")
If exist "%ProgramData%\%MBRWS%\MediaBrowserXml.config.sbak" (copy "%ProgramData%\%MBRWS%\MediaBrowserXml.config" "%ProgramData%\%MBRWS%\MediaBrowserXml.config.bak")
goto :inject_MBXML

REM :update_GB
REM if "%GBR%"=="0" goto :createwogb
REM "%GBC%\	.exe" "locset.ini" "[GBR]" "1"
REM If not exist "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml.sbak" (copy "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml" "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml.sbak")
REM If exist "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml" (copy "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml" "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml.bak")
REM SET GBR=1
REM goto :inject_GBXML

:inject_MBXML
CALL "%GBC%\buildMBXML.bat"
CALL "%GBC%\copyMediaBrowserInjection.bat"
cmd /c start "" "%MBLOC%\MediaBrowserService.exe" /refresh
goto :success_MB


REM :inject_GBXML
REM call "%GBC%\getGBCfg.bat"
REM "%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWS%.tar" -o"%GBC%\net\%GBRWS%"
REM CALL "%GBC%\buildGBXML.bat"
REM CALL "%GBC%\copyGameBrowserInjection.bat"
REM "%PRGF%\%MBRWS%\%MBRWS%\MediaBrowserService.exe" /refresh
REM goto :success_GB

REM :success_GB
REM SET GBR=1
REM "%GBC%\fart.exe" "locset.ini" "[GBR]" "1"
REM "%GBC%\wbox.exe" "RJ_GUI" "^^GameBrowser has been updated.^^" "Thanks" /TM=3
REM if %ERRORLEVEL%==1 goto :fingb
REM goto :fingb


:success_MB
SET MBR=1
"%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
"%GBC%\wbox.exe" "RJ_GUI" "^^MediaBrowser has been updated.^^" "Thanks" /TM=3
if %ERRORLEVEL%==1 goto :fingb
goto :fingb

REM :createwogb
REM call "%GBC%\getGBCfg.bat"
REM "%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWS%.tar" -o"%GBC%\net\%GBRWS%"
REM CALL "%GBC%\buildGBXML.bat"
REM SET GBBTN=;Update
REM goto :generate_gbxml

:mb_unset
"%GBC%\wbox.exe" "RJ_GUI" "Mediabrowser's location is not set." "Locate;Menu" /DB=1
if %ERRORLEVEL%==1 goto :MBLOC
if %ERRORLEVEL%==2 goto :fingb
goto :EOF
:no_mediabrowser
"%GBC%\wbox.exe" "RJ_GUI" "^^Media Browser was not detected.^^" "Download;Menu" /DB=2 /TM=20
if %ERRORLEVEL%==1 (goto :dwn_mb)
if %ERRORLEVEL%==2 (goto :mb_complete)
goto :fingb

:mb_complete
SET MBR=0
"%GBC%\fart.exe" "locset.ini" "[MBR]" "0"
goto :generate_gbxml

:mb_install
CALL "%GBC%\getMediaBrowser.bat"
msiexec /qb /norestart /i "%GBC%\net\%MBRWS%\%MBRWSFILE%"
call :MBDEFAULT
goto :generate_gbxml
:fingb
