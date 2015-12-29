if "%HMIRZ%"=="" goto :NOMIRZ
if "%PRECONF%"=="1" goto :OVRTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Update: Files will be created but existing files will not be overwritten^Overwrite: All files will be copied and existing files will be overwritten." "Update;Overwrite" /DB=1
if %ERRORLEVEL%==1 goto :CPYTYPE
if %ERRORLEVEL%==2 goto :OVRTYPE
goto :HSCREATEEND

:NOMIRZ
"%GBC%\wbox.exe" "RJ_GUI" "HyperMirrors have not been defined" "OKAY" /DB=1
if %errorlevel%==1 goto :HSCREATEEND
goto :HSCREATEEND


:CPYTYPE
for /f "delims=" %%a in ("echo n|copy /-y") do set CPTYP=%%~a
goto :TYPE

:OVRTYPE
set CPTYP=copy /y
goto :TYPE

:TYPE
set DYNM=
set DYNB=
set DYNL=
set DYNI=
set DYNV=

for /f "delims=" %%a in ("%GBC%\net\%BCKD%\%BCKD%.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a

if "%HCROP%"=="1" call :SETCROP
goto :QUERY

:SETCROP
set BACKDROP=
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\CROPPED\CROPPED.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a
exit /b

:QUERY
set MMD=
SET MMB=
SET MMI=
SET MML=
set BACKEXTN=jpg
if "%HCROP%"=="1" set BACKEXTN=png

for /f "delims=" %%a in ('dir /s/b/ad "%GBC%\net\%HYPS%"') do rd /s /q "%%~a"

if not exist "%BACKDROP%" SET MMD=1
if not exist "%BACKDROP%" SET MMB=1
if not exist "%GBC%\net\%BANN%\%BANN%.zip" SET MMD=1
if not exist "%GBC%\net\%BANN%\%BANN%.zip" SET MML=1
if not exist "%GBC%\net\%FLDR%\%FLDR%.zip" SET MMD=1
if not exist "%GBC%\net\%FLDR%\%FLDR%.zip" SET MMI=1
if "%MMD%"=="" goto :CHECKMEDIA

if "%PRECONF%"=="1" goto :DYNAMICA
"%GBC%\wbox.exe" "RJ_GUI" "Select an image TYPE to dynamically download^^[EVERYTHING]^    This will dynamically download all artwork and videos for your current library^^[IMAGE]^   Icons, Logos and Backdrops will be dynamically downloaded.^^[ARCHIVE]^    This will allow you to download the zipped image-repositories containing all supported console images." "Backdrops;Logos;Icons;Videos;IMAGES;EVERYTHING;ARCHIVE" /DB=5
if %ERRORLEVEL%==1 goto :DYNAMICD
if %ERRORLEVEL%==2 goto :DYNAMICB
if %ERRORLEVEL%==3 goto :DYNAMICI
if %ERRORLEVEL%==4 goto :DYNAMICV
if %ERRORLEVEL%==5 goto :DYNAMICM
if %ERRORLEVEL%==6 goto :DYNAMICA
if %ERRORLEVEL%==7 goto :CHECKMEDIA
goto :EOF

:DYNAMICA
call "%GBC%\metaGrab.bat">>"%GBC%\logs\metaGrab.log"
goto :WHEELCHOICE

:DYNAMICM
set DYNM=1
call :DYNAMICD
call :DYNAMICI
call :DYNAMICB
goto :WHEELCHOICE

:DYNAMICD
set CONSNM=
set METYP=BCK
call "%GBC%\metaGrab.bat">>"%GBC%\logs\metaGrab.log"
set DYNB=1
if "%DYNM%"=="1" exit /b
goto :QUERY

:DYNAMICB
set CONSNM=
set METYP=BAN
call "%GBC%\metaGrab.bat">>"%GBC%\logs\metaGrab.log"
set DYNL=1
if "%DYNM%"=="1" exit /b
goto :QUERY

:DYNAMICI
set CONSNM=
set METYP=ICN
call "%GBC%\metaGrab.bat">>"%GBC%\logs\metaGrab.log"
set DYNI=1
if "%DYNM%"=="1" exit /b
goto :QUERY

:DYNAMICV
set CONSNM=
set METYP=VID
call "%GBC%\metaGrab.bat">>"%GBC%\logs\metaGrab.log"
set DYNV=1
goto :GETVIDEOS

:CHECKMEDIA
if "%DYNB%"=="1" goto :FOLDERCHK
if exist "%BACKDROP%" goto :FOLDERCHK
"%SEVENZIP%" x -y "%BACKDROP%" -o%BACKDEST%
goto :GETBCKD

:FOLDERCHK
REM if "%DYNL%"=="1" goto :FOLDERCHK
if exist "%GBC%\net\%BANN%\%BANN%.zip" goto :FLDRCHK
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
goto :GETFLDR

:FLDRCHK
if "%DYNI%"=="1" goto :FOLDERCHK
if exist "%GBC%\net\%FLDR%\%FLDR%.zip" goto :WHEELCHOICE
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
goto :GETFLDR

:WHEELCHOICE
if "%PRECONF%"=="1" goto :USEBANN
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to to use Photo-icons or Logos for your main menu Wheels?^" "Icons;Logos" /DB=2
if %ERRORLEVEL%==1 goto :USEICON
if %ERRORLEVEL%==2 goto :USEBANN
goto :USEBANN

:USEICON
set ICNZ=1
set BANR=
goto :VIDEOCHK

:USEBANN
set ICNZ=
set BANR=1
goto :VIDEOCHK

:VIDEOCHK
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\Videos"') do SET VIDCHK=%%~a
if "%VIDCHK%"=="" goto :VIDACK
goto :ALLCONSOLE

:GETBCKD
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to download Backgrounds?^## These are neccessary for Themes ##^" "All;Library;Skip" /DB=1
if %ERRORLEVEL%==1 goto :GETIMAGES
if %ERRORLEVEL%==2 goto :FOLDERCHK
goto :HSCREATEEND

:GETIMAGES
call "%GBC%\getImages.bat"
"%SEVENZIP%" x -y "%BACKDROP%.zip" -o%BACKDEST%
goto :FOLDERCHK

:GETFLDR
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to download Wheel Images?^Icons: Photos of the console/computer^Logo: Logo of the console/computer^" "Icon;Logo;None" /DB=1
if %ERRORLEVEL%==1 goto :GETICONS
if %ERRORLEVEL%==2 goto :GETLOGOS
if %ERRORLEVEL%==3 goto :VIDEOCHK
goto :HSCREATEEND
:GETICONS
SET ICNZ=1
SET BANR=
call "%GBC%\getIcons.bat"
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
goto :VIDEOCHK

:GETLOGOS
SET BANR=1
SET ICNZ=
call "%GBC%\getBanners.bat"
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
goto :VIDEOCHK


:VIDACK
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to download Console-Videos?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :GETVIDEOS
if %ERRORLEVEL%==2 goto :ALLCONSOLE
goto :HSCREATEEND

:GETVIDEOS
mkdir "%HPN%\Media\Main Menu\Video"
call "%GBC%\getVideo.bat"
if "%DYNV%"=="1" goto :QUERY
goto :ALLCONSOLE

:CLEANHOUSE
for /f "delims=" %%a in ('dir /b/ad "%HMIRZ%"') do (
pushd "%HMIRZ%\%%~a"
call :CLEAR
popd
)
mkdir "%HMIRZ%\Favorites"
goto :ALLCONSOLE

:CLEAR
for /f "delims=" %%d in ('dir /b /ad') do rd /q "%%~d"
exit /b

:ALLCONSOLE
"%SEVENZIP%" x -y "%BACKDROP%" -o%BACKDEST%
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
if not exist "%HMIRZ%\Favorites" mkdir "%HMIRZ%\Favorites"

del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HMIRZ%"') do echo."%%~a">>"%GBC%\list.ini"
if "%PRECONF%"=="1" copy /y "%GBC%\list.ini" "%GBC%\curlist.ini"
if "%PRECONF%"=="1" goto :GETLST
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Building Themes"  /marquee
if not exist "%GBC%\curlist.ini" goto :COMPLETE
:GETLST
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
SET HYPCON=%%~a
CALL :ALLCONV
)
goto :ZIPUP

:ALLCONV
mkdir "%GBC%\net\%HYPS%\%HYPCON%"
if not exist "%HPN%\Media\Main Menu\%HYPCON%.zip.orig" %CPTYP% "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.orig"
move /Y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.bak"
if "%HCROP%"=="1" %CPTYP% "%BACKDEST%\%HYPCON%.%BACKEXTN%" "%GBC%\net\%HYPS%\%HYPCON%\Background.png"
if not exist "%BACKDEST%\%HYPCON%.%BACKEXTN%" %CPTYP% "%BACKDEST%\Favorites.%BACKEXTN%" "%GBC%\net\%HYPS%\%HYPCON%\Background.png" && "%GBC%\nconvert.exe" -resize 1024 768 -out png -overwrite "%GBC%\net\%HYPS%\%HYPCON%\Background.png"
if "%HCROP%"=="" "%GBC%\nconvert.exe" -resize 1024 768 -out png -o "%GBC%\net\%HYPS%\%HYPCON%\Background.png" "%BACKDEST%\%HYPCON%.%BACKEXTN%"
if "%ICNZ%"=="1" "%GBC%\nconvert.exe" -resize 300 300 -out png -o "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png" "%GBC%\net\Folder\%HYPCON%.png"
if "%BANR%"=="1" %CPTYP% "%GBC%\net\%BANN%\%HYPCON%.png" "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png"
%CPTYP% "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video"
%CPTYP% "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video"

if exist "%HPN%\Media\Main Menu\Video\%HYPCON%.mp4" %CPTYP% "%GBC%\net\%HYPS%\MainTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml" && goto :THEMEZIP
if exist "%HPN%\Media\Main Menu\Video\%HYPCON%.flv" %CPTYP% "%GBC%\net\%HYPS%\MainTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml" && goto :THEMEZIP
%CPTYP% "%GBC%\net\%HYPS%\MainThemeNV.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml"

:THEMEZIP
pushd "%GBC%\net\%HYPS%\%HYPCON%"
for /f "delims=" %%a in ('dir /b/a-d-h "*.png" "*.xml"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\Main Menu\Themes\%HYPCON%.zip" "%GBC%\net\%HYPS%\%HYPCON%\%%~a"
popd
exit /b

:MEDIASUM
pushd "%GBC%\net\%HYPS%\%HYPCON%"
for /f "delims=" %%a in ('dir /b/a-d-h "*.png" "*.xml"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\Main Menu\Themes\%HYPCON%.zip" "%GBC%\net\%HYPS%\%HYPCON%\%%~a"
popd
exit /b
:ZIPUP
%BSTRT% "%WFINS%" "RJ_GUI" "Main Sytems Complete." /Stop /timeout:1
:HSCREATEEND
