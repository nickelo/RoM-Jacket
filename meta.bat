:metaData
set GTMTA=
call "%GBC%\metacheck.bat"

:MENU
for %%a in ("^^[Alias++]^Machines are grouped by type and linked to the corresponding ''..\Games\Machine'' directories") do set ALIASCOM=%%~a
for %%a in (";Alias") do set ALIASBUT=%%~a
set ALIASBUT=
set ALIASCOM=
"%GBC%\wbox.exe" "RJ_GUI" "^#############################^#Current aspect ratio is set to %DISPASPCT%###^#############################^^[Download]^Download console-artwork for HTPC frontends^Scrape artwork for your ROM titles.^^[Install]^Install downloaded console-artwork to your libraries.^Convert game-artwork^^[Aspect]^Change artwork resolution and aspect ratio.%ALIASCOM%^^##########################^Backdrops: %BDWN%^Videos: %VDWN%^Icons: %IDWN%^Logos: %WDWN%^##########################^" "Download;Install;Aspect;MainMenu%ALIASBUT%" /AL /BW=75
if %ERRORLEVEL%==1 goto :download
if %ERRORLEVEL%==2 goto :install
if %ERRORLEVEL%==3 goto :SWAPASPCT
if %ERRORLEVEL%==4 goto :metaout
if %ERRORLEVEL%==5 goto :GENRE
goto :metaout

:ARTSCRAPE
call "%GBC%\scrape.bat">>"%GBC%\logs\scrape.log"
goto :MENU

:GENRE
call "%GBC%\machineLink.bat">>"%GBC%\logs\machineLink.log"
goto :MENU

:dynamic
call "%GBC%\metaGrab.bat"
goto :metaData

:SWAPASPCT
call "%GBC%\resolutionTest.bat">>"%GBC%\logs\resolutionTest.log"
goto :WIDESPCT

:CONVERTALL
set CONVART=1
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CSTCONS=%%~a
call :CONVART
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :MENU

:convert
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to overwrite existing art?" "Overwrite;Append" /DB=1
if %errorlevel%==1 goto :OVERWRITE
if %errorlevel%==2 goto :RENAME
goto :MENU

:OVERWRITE
set METAOP=copy /y
goto :GETCONS

:RENAME
set METAOP=rename
goto :GETCONS

:GETCONS
set CONVART=
set CSTCONS=
:SELCONVERT
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :MENU
goto :CONVERTALL

:CONVART
%BSTRT% "%WBUSY%" "RJ_GUI" "converting scraped art in %CSTCONS%" /marquee
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/ad-h') do (
set CSTGAM=%%~a
pushd "%%~a"
call :GETART
popd
)
popd
if "%CONVART%"=="1" exit /b
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :SELCONVERT

:GETART
for /f "delims=" %%a in ('dir /b/a-d-h "*_fanart.png"') do rename "%%~a" "backdrop.png" || %METAOP% "%%~a" "backdrop1.jpg"
for /f "delims=" %%a in ('dir /b/a-d-h "*_fanart.jpg"') do rename "%%~a" "backdrop.jpg" || rename "%%~a" "backdrop1.jpg" || %METAOP% "%%~a" "backdrop1.jpg"
for /f "delims=" %%a in ('dir /b/a-d-h "*_thumb.jpg"') do rename "%%~a" "folder.jpg" || %METAOP% "%%~a" "backdrop1.jpg"
for /f "delims=" %%a in ('dir /b/a-d-h "*_thumb.png"') do rename "%%~a" "folder.png" || %METAOP% "%%~a" "backdrop1.jpg"
if "%CONVART%"=="1" exit /b
"%GBC%\fart.exe" "%GBC%\cursel.ini" "%CSTCONS%" --remove
exit /b


:download
call "%GBC%\metacheck.bat"
"%GBC%\wbox.exe" "RJ_GUI" "Download artowrk for your^[HTPC] Frontend^or^[SRAPE] artwork for ROM titles" "HTPC;SCRAPE" /DB=1
if %errorlevel%==1 goto :HTPC
if %errorlevel%==2 goto :ARTSCRAPE
if %errorlevel%==3 goto :dynamic
goto :QUITOUT

:HTPC
"%GBC%\wbox.exe" "RJ_GUI" "### METADATA AQUISITION ###^#Hyperspin is in ''%DISPASPCT%''#^Backdrops: %BDWN%^Videos: %VDWN%^Icons: %IDWN%^Logos: %WDWN%^^What would you like to DOWNLOAD?^" "Icons;Backdrops;Logos;Video;ALL;MainMenu" /AL
if %ERRORLEVEL%==1 goto :getI
if %ERRORLEVEL%==2 goto :getF
if %ERRORLEVEL%==3 goto :getW
if %ERRORLEVEL%==4 goto :getV
if %ERRORLEVEL%==5 goto :getA
if %ERRORLEVEL%==6 goto :metaData
goto :metaout

:install
call "%GBC%\metacheck.bat"
"%GBC%\wbox.exe" "RJ_GUI" "### METADATA INSTALLATION ###^^Backdrops: %BDWN%^Videos: %VDWN%^Icons: %IDWN%^Logos: %WDWN%^^[CONVERT]^  Convert artwork scraped from Advance Launcher plugin for other frontends." "Icons;Backdrops;Logos;Video;ALL;Convert;MainMenu" /AL
if %ERRORLEVEL%==1 goto :instI
if %ERRORLEVEL%==2 goto :instF
if %ERRORLEVEL%==3 goto :instW
if %ERRORLEVEL%==4 goto :instV
if %ERRORLEVEL%==5 goto :instA
if %ERRORLEVEL%==6 goto :convert
if %ERRORLEVEL%==7 goto :metaData
goto :metaout

:instI
if "%IDWN%"=="" goto :install 
call :instIi
goto :install
:instIi
CALL "%GBC%\folderpack.bat"
exit /b

:instW
if "%WDWN%"=="" goto :install 
call :instWi
goto :install
:instWi
CALL "%GBC%\bannerpack.bat"
exit /b


:instV
if "%VDWN%"=="" goto :install
call :instVi
goto :install
:instVi
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "delims=" %%a in ('type "%GBC%\%CURNTA%"') do (
if exist "%GBG%\%GAM%\%CONS%\%%~a" mkdir "%GBG%\%GAM%\%CONS%\%%~a\backdrops" && attrib +H "%GBG%\%GAM%\%CONS%\%%~a\backdrops"
SET NWNAME=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%%~a\backdrops\%%~a.mp4" copy /Y "%GBC%\net\%VIDE%\%%~a.mp4" "%GBG%\%GAM%\%CONS%\%%~a\backdrops\%%~a.mp4"
)
exit /b

:instF
if "%BDWN%"=="" goto :install
call :instFi
goto :install

:instFi
CALL "%GBC%\backdroppack.bat"
exit /b

:instA
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing MetaData" /marquee
if "%VDWN%" NEQ "" call :instVi
if "%IDWN%" NEQ "" call :instIi
if "%BDWN%" NEQ "" call :instFi
if "%WDWN%" NEQ "" call :instWi
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :metaData

:getI
CALL :prepmeta
CALL "%GBC%\getIcons.bat">>"%GBC%\logs\geticons.log"
goto :download

:getW
CALL :prepmeta
CALL "%GBC%\getBanners.bat">>"%GBC%\logs\getBanners.log"
goto :download

:getF
CALL :prepmeta
CALL "%GBC%\getImages.bat">>"%GBC%\logs\getImages.log"
goto :download

:getV
CALL :prepmeta
CALL "%GBC%\getVideo.bat">>"%GBC%\logs\getVideo.log"
goto :download

:getA
SET ALLMETA=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading MetaData" /marquee
CALL :prepmeta
CALL "%GBC%\getBanners.bat">>"%GBC%\logs\getBanners.log"
CALL "%GBC%\getImages.bat">>"%GBC%\logs\getimages.log"
CALL "%GBC%\getIcons.bat">>"%GBC%\logs\getIcons.log"
CALL "%GBC%\getVideo.bat">>"%GBC%\logs\getVideo.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :metaData

:prepmeta
CALL "%GBC%\cleanup.bat">>"%GBC%\logs\cleanup.log"
exit /b

:metaout
