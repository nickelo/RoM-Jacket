%GBD%
cd "%GBC%\net\%XBMC%\%RCBRWS%"
del /s /q "config.xml"
del /s /q "*.prt"
copy /Y config.xml.set config.xml.prt
type "%GBC%\net\%XBMC%\%RCBRWS%\config.xml.Begin.set" >"%GBC%\net\%XBMC%\%RCBRWS%\config.xml"
:SANITIZE
pushd "%GBG%\%GAM%\%CONS%"
%BSTRT% "%WBUSY%" "RJ_GUI" Sanitizing Database" /marquee
for /f "delims=" %%a in ('dir /b/ad') do (
pushd "%%~a"
set NDO=%%~a
call :INDIR
rd /q "%%~a"
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Sanitized" /stop /timeout:1
popd
goto :ADDSYS
:INDIR
for /f "delims=" %%a in ('dir /b/ad') do rd /q "%%~a"
popd
exit /b
:ADDSYS
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuring Rom-Collection-Browser"  /marquee
if not exist "%GBC%\curlist.ini" goto :finishrcbbuild
set /A EMUCNT=0
:MENU
for /f "delims=" %%a in ('type "%GBC%\curList.ini"') do (
set CONSRCB=%%a
CALL "%GBC%\rcbAdd.bat">>"%GBC%\logs\rcbadd.log"
)

type "%GBC%\net\%XBMC%\%RCBRWS%\config.xml.End.set">>"%GBC%\net\%XBMC%\%RCBRWS%\config.xml"
if "%RCB%"=="0" goto :builtrcbxml
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\MyGames.db.orig" del /q "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\MyGames.db"
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\MyGames.db" move /Y "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\MyGames.db" "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\MyGames.db.orig"
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\config.xml.orig" goto :creatercbxml
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\config.xml" copy /Y "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\config.xml" "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\config.xml.orig"
if exist "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\settings.xml" copy /Y "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml.orig"

:creatercbxml
mkdir "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser"
copy /Y "%GBC%\net\%XBMC%\%RCBRWS%\config.xml" "%XBAPDTA%\userdata\addon_data\script.games.rom.collection.browser\config.xml"
copy /Y "%GBC%\net\%XBMC%\%RCBRWS%\settings.xml" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml"
goto :builtrcbxml

:builtrcbxml
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable RCB to scrape game data on startup?^#     This may cause slow startup times   #^" "Yes;No" /DB=1 /TM=25
if %ERRORLEVEL%==1 goto :SOSON
if %ERRORLEVEL%==2 goto :SOSOFF

:SOSON
"%GBC%\fart.exe" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml" [SOS] true
goto :SCRAPEMETHOD
:SOSOFF
"%GBC%\fart.exe" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml" [SOS] false
goto :finishrcbbuild

:SCRAPEMETHOD
"%GBC%\wbox.exe" "RJ_GUI" "Select a scraping method^### Accurate matching will not scrape any media that does not match internet databases _EXACTLY_ ###" "Accurate;Guess;Interactive" /DB=2
if %errorlevel%==1 goto :AUTOM
if %errorlevel%==2 goto :AGUESS
if %errorlevel%==3 goto :INTERA
goto :INTERA


:INTERA
"%GBC%\fart.exe" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml" [SCM] "Interactive: Select Matches"
goto :finishrcbbuild
:AGUESS
"%GBC%\fart.exe" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml" [SCM] "Automatic: Guess Matches"
goto :finishrcbbuild
:AACURATE
"%GBC%\fart.exe" "%XBAPDTA%\addons\script.games.rom.collection.browser\resources\settings.xml" [SCM] "Automatic: Accurate"
goto :finishrcbbuild

:finishrcbbuild
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:1