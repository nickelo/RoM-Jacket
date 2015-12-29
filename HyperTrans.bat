SET HSALT=1
:HYPERSPINGLOBAL
set HPSDETECT=
SET PRECONF=
set HYPCHOICE=1
set HYPINS=reinstall
if "%HPN%"=="" goto :DETECT
if "%HPN%"=="[HPN]" goto :DETECT
goto :SETHSCHOICE

:DETECT
set HPSDETECT=
if exist "%GBE%\%EMUZ%\%HYPS%\%HYPS%.exe" SET HPSDETECT=1
if "%HPSDETECT%"=="1" for /f "delims=" %%a in ("%GBE%\%EMUZ%\%HYPS%") do set HPN=%%~a
if "%HPSDETECT%"=="1" goto :DETECOMP
if exist "%PRGX%\%HYPS%\%HYPS%.exe" SET HPSDETECT=1
if "%HPSDETECT%"=="1" for /f "delims=" %%a in ("%PRGX%\%HYPS%") do set HPN=%%~a
if "%HPSDETECT%"=="1" goto :DETECOMP
if exist "C:\%HYPS%\%HYPS%.exe" SET HPSDETECT=1
if "%HPSDETECT%"=="1" for /f "delims=" %%a in ("C:\%HYPS%") do set HPN=%%~a
:DETECOMP
if exist "%GBC%\net\%HYPS%\%HYPS%.7z" SET HPSARC=1
if "%HPSDETECT%"=="" SET HYPINS=install
if "%HYPINS%"=="reinstall" SET HYPCHOICE=4

:SETHSCHOICE
if exist "%HPN%\Settings\Settings.ini" call :GETREZ
if "%HCROP%"=="" set HYPMODE=is in widescreen
if "%HYPINS%"=="install" set HYPMODE=is not detected
set CREATEDONLY=
if "%HCROP%"=="1" set HYPMODE=is in standard 4x3
"%GBC%\wbox.exe" "RJ_GUI" "^Hyperspin %HYPMODE%^%HYPINS% Hyperspin^--------------^%HYPINS% and setup Rom-Jacket's Custom Hyperspin.^^[Mirrors]^--------------^Create mirrors for RoM-Jacket libraries to use in Hyperspin-XMLs^^Transfer^--------------^Convert media to and from Hyperspin.^^Config^--------------^Configure Hyperspin using RoM-Jacket.^Create settings themes and XML databases.^############################################^############################################^##############             OneClick             ##############^###########         ####--------------####         ###########^##Indexes library and generates themes for all consoles and games. ##^#This is an exhuaustive process and may take some time to complete.#^############################################^" "%HYPINS%;Mirrors;Transfer;Config;OneClick;MainMenu" /DB=%HYPCHOICE% /BW=80
if %ERRORLEVEL%==1 goto :initializehs
if %ERRORLEVEL%==2 goto :CREATEDIRS
if %ERRORLEVEL%==3 goto :globaltrans
if %ERRORLEVEL%==4 goto :confighs
if %ERRORLEVEL%==5 goto :PRECONFIG
if %ERRORLEVEL%==6 goto :metaout
goto :metaout

:GETREZ
for /f "tokens=2 delims==" %%a in ('inifile.exe "%HPN%\Settings\Settings.ini" [Resolution] Width') do set REZX=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%HPN%\Settings\Settings.ini" [Resolution] Height') do set REZY=%%~a
SET HCROP=
call "%GBC%\ratio.bat">>"%GBC%\logs\ratio.log"
for /f "tokens=1,2 delims=.," %%a in ('cscript //nologo "%GBC%\ratio.vbs" %REZY% %REZX%') do (
set LONG=%%~a
set CROP=%%~b
call :CROP
)
set HCROP=
if %RATIO% %RATOP% 7 set HCROP=1
exit /b

:CROP
set RATOP=GEQ
if %LONG% GEQ 1 set RATOP=LEQ
for %%a in ("%CROP:~0,2%") do (
if "%%~a"=="" set /a CROP=%CROP%0
if %%~a GEQ 5 set /a CROP+=1
)
for %%a in ("%CROP:~0,1%") do set RATIO=%%~a
IF "%RATIO%"=="" set RATIO=0
exit /b

:INJSET
:initializehs
CALL "%GBC%\installHS.bat">>"%GBC%\logs\installHS.log"
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
goto :DETECT

:no_HS
"%GBC%\wbox.exe" "RJ_GUI" "^^Hyperspin was not found.^^" "Download;Menu" /DB=2
if %ERRORLEVEL%==1 goto :initializehs
if %ERRORLEVEL%==2 goto :SETHSCHOICE
goto :transfercomplete

:CREATEDIRS
set CREATEDONLY=1
:createsc
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
CALL "%GBC%\hyperspindirs.bat">>"%GBC%\logs\hyperspindirs.log"
if "%HSDESCAPE%"=="1" goto :HYPERSPINGLOBAL
if "%CREATEDONLY%"=="1" goto :HYPERSPINGLOBAL
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to create Hyperspin Themes?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :confighs
if %ERRORLEVEL%==2 goto :HYPERSPINGLOBAL
goto :transferComplete

:confighs
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
set XMLNUM=
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Databases"') do set /a XMLNUM+=1
:buildingdb
SET HSXC=
SET HSTC=
SET HSIC=
SET HSGC=
set FAVS=;Favs
set XMLDISP=There are %XMLNUM% systems with XMLs
if "%XMLNUM%" LEQ "1" set XMLDISP=There are no XMLs for Hyperspin
"%GBC%\wbox.exe" "RJ_GUI" "^### HYPERSPIN CONFIGURATION ###^^%XMLDISP%^^#XMLs#:  Creates XML databases for your consoles^^#Console#:  Console Themes^^#InConsole#:  In-Console Themes^^#Games#:  Game Themes^^#All#:^Create XMLs, Themes and Game Themes for all consoles and all Games^^" "XMLs;Console;InConsole;Games;All;Menu%FAV%" /AL
if %ERRORLEVEL%==1 goto :HSXMLCREATE
if %ERRORLEVEL%==2 goto :HSTHEMECREATE
if %ERRORLEVEL%==3 goto :HSINSYSCREATE
if %ERRORLEVEL%==4 goto :HSGAMCREATE
if %ERRORLEVEL%==5 goto :ALLCREATE
if %ERRORLEVEL%==6 goto :HYPERSPINGLOBAL
if %ERRORLEVEL%==7 goto :FAVS
goto :HYPERSPINGLOBAL

:ONECLICK
set REPART=1
"%GBC%\wbox.exe" "RJ_GUI" "^#################^CHOOSE^    Select which components to use and overwrite^#################^OneClick^     Dynamically downloads content and creates all themes for all consoles and games.  ^~~~~Overwrites all Hyperspin settings.~~~~^" "Choose;OneClick" /DB=1
if %ERRORLEVEL%==1 goto :BEGINCREATE
if %ERRORLEVEL%==2 goto :PRECONFIG
goto :HYPERSPINGLOBAL

:FAVS
call "%GBC%\hsfavs.bat">>"%GBC%\logs\hsfavs.log"
goto :HYPERSPINGLOBAL

:PRECONFIG
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
SET PRECONF=1
for /f "delims=" %%a in ("%GBG%\%GAM%\%HYPMIR%") do set HMIRZ=%%~a
call "%GBC%\hyperspindirs.bat">>"%GBC%\logs\hyperspindirs.log"
goto :ALLCREATE

:ALLCREATE
SET HSXC=1
SET HSTC=1
SET HSIC=1
SET HSGC=1
SET HSXC=1
if "%PRECONF%"=="1" goto :BEGINCREATE
goto :ONECLICK
:HSXMLCREATE
SET HSXC=1
goto :BEGINCREATE
:HSTHEMECREATE
SET HSTC=1
goto :BEGINCREATE
:HSINSYSCREATE
SET HSIC=1
goto :BEGINCREATE
:HSGAMCREATE
set HSGC=1
goto :BEGINCREATE

:BEGINCREATE
if "%HSXC%" NEQ "1" goto :HSCREATETHEME
%BSTRT% "%WBUSY%" "RJ_GUI" "Building Databases"  /marquee
CALL "%GBC%\HLAdd.bat">>"%GBC%\logs\HLAdd.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
CALL "%GBC%\HLInj.bat">>"%GBC%\logs\HLInj.log"
:HSCREATETHEME
if "%HSTC%" NEQ "1" goto :HSCREATEINSYS
CALL "%GBC%\HSCreateTheme.bat">>"%GBC%\logs\HSCreateTheme.log"
REM call "%GBC%\HSCreateMMFE.bat"
:HSCREATEINSYS
if "%HSIC%" NEQ "1" goto :HSCREATEGAM
CALL "%GBC%\HSCreateInSystemTheme.bat">>"%GBC%\logs\HSCreateInSystemTheme.log"
:HSCREATEGAM
if "%HSGC%" NEQ "1" goto :HYPERSPINGLOBAL
CALL "%GBC%\HSCreateGamTheme.bat">>"%GBC%\logs\HSCreateGamTheme.log"
goto :HYPERSPINGLOBAL

:globalTrans
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
if "%HSMETA%"=="" set HSMETA=%HPN%\Media
"%GBC%\wbox.exe" "RJ_GUI" "^---TO--^Transfer media in your Rom-Jacket Library folders to Hyperspin.^^---FROM---^Transfer media from a Hyperspin installation to your Rom-Jacket Library.^^   ''%HSMETA%''   " "TO;FROM;Menu" /DB=3
if %ERRORLEVEL%==1 goto :HSCONV
if %ERRORLEVEL%==2 goto :HSTRANS
if %ERRORLEVEL%==3 exit /b
goto :transferComplete

:LIBSET
if "%HSMETA%"=="" set HSMETA=%HPN%\Media
"%GBC%\wbox.exe" "RJ_GUI" "^---SELECT---^Select a library from your Hyperspin setup^^---REDEFINE---^Define an alternate location for Hyperspin Media^   ''%HSMETA%''   " "Select;Redefine" /DB=1
if %ERRORLEVEL%==1 goto :HSTRANS
if %ERRORLEVEL%==2 goto :RESET_HS
goto :transferComplete

:RESET_HS
SET HSALT=1
for %%a in ("%HPN%\Media") do set HSMETA=%%~a
:FINDMEDIA
"%GBC%\Wfolder.exe" "SET HSMETA=" "C:" "Where is your Hyperspin Media Folder" /noquote > "%GBC%\HyperBA.cmd"
call "%GBC%\HyperBA.cmd"
if "%HSMETA%"=="" SET HSALT=
if "%HSMETA%"=="" (goto :globalTrans)
for %%A in ("%HSMETA:~0,2%") do set HSDR=%%~A
for %%a in ("%HSMETA%") do set HSMN=%%~na
if /I "%HSMN%" NEQ "Media" goto :mnotfound
goto :LIBSET

:mnotfound
"%GBC%\wbox.exe" "RJ_GUI" "The Media Folder you selected is not a typical Media Folder HS folder.^Continue?" "Continue;Reselect;MainMenu"
if %ERRORLEVEL%==1 goto :globalTrans
if %ERRORLEVEL%==2 goto :FINDMEDIA
if %ERRORLEVEL%==3 goto :transferComplete
goto :transferComplete
:HSCONV

:HYPC
CALL "%GBC%\HSConvertArt.bat">>"%GBC%\logs\HSConvertArt.log"
goto :HYPERSPINGLOBAL

:HSTRANS
set SELHS=
"%GBC%\wbox.exe" "RJ_GUI" "^Select the media to transfer FROM Hyperspin to your RoM-Jacket library." "OKAY" /DB=1
if %ERRORLEVEL%==1 goto :SELTYPE
goto :metaout

:SELTYPE
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
echo.Boxart>"%GBC%\list.ini"
echo.Wheels>>"%GBC%\list.ini"
echo.Videos>>"%GBC%\list.ini"
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
set CURNUM=
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do set /a CURNUM+=1
if "%CURNUM%" GEQ "2" goto :allTrans
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do SET CURTYPE=%%~a
if "%CURTYPE%"=="Boxart" goto :baTrans
if "%CURTYPE%"=="Wheels" goto :bnTrans
if "%CURTYPE%"=="Videos" goto :vdTrans

:baTrans
SET SELHS=boxart
CALL "%GBC%\HSBA.bat">>"%GBC%\logs\HSBA.log"
goto :HYPERSPINGLOBAL

:vdTrans
SET SELHS=video
CALL "%GBC%\HSVD.bat">>"%GBC%\logs\HSVD.log"
goto :HYPERSPINGLOBAL

:bnTrans
SET SELHS=boxart
CALL "%GBC%\HSBN.bat">>"%GBC%\logs\HSBN.log"
goto :HYPERSPINGLOBAL

:allTrans
SET SELHS=All
CALL "%GBC%\HSAL.bat">>"%GBC%\logs\HSAL.log"
goto :HYPERSPINGLOBAL

:transferComplete
exit /b
:metaout