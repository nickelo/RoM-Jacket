if "%HMIRZ%"=="" goto :NOMIRZ
if "%PRECONF%"=="1" goto :OVRWY
SET OVRW=
set REPART=
SET ALLOFTHEM=
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to create themes for^MULTIPLE games^or^a SINGLE game^" "Multiple;Single;Menu" /DB=1
if %ERRORLEVEL%==1 goto :CONSOLES
if %ERRORLEVEL%==2 goto :GAMES
if %ERRORLEVEL%==3 goto :HSCREATEEND
goto :HSCREATEEND

:NOMIRZ
"%GBC%\wbox.exe" "RJ_GUI" "HyperMirrors have not been defined" "OKAY" /DB=1
if %errorlevel%==1 goto :HSCREATEEND
goto :HSCREATEEND


:CONSOLES
del /q "%GBC%\list.ini"
for /f "delims=" %%a in ('dir /b /ad "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
set ALLOFTHEM=1
if "%PRECONF%"=="1" goto :OVRTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Update: Files will be created but existing files will not be overwritten^Overwrite: All files will be copied and existing files will be overwritten." "Update;Overwrite" /DB=1
if %ERRORLEVEL%==1 goto :CPYTYPE
if %ERRORLEVEL%==2 goto :OVRTYPE
goto :HSCREATEEND

:CPYTYPE
for /f "delims=" %%a in ("echo n|copy /-y") do set CPTYP=%%~a
SET OVRW=
set OVRBCK=
goto :LINKTYPE

:OVRTYPE
set CPTYP=copy /y
SET OVRW=1
set OVRBCK=-overwrite
goto :LINKTYPE

:LINKTYPE
if "%PRECONF%"=="1" goto :SETLINK
"%GBC%\wbox.exe" "RJ_GUI" "################Backdrops################^Blank backdrops can be created for each game to create a cohesive atmosphere for Hyperspin in one of two ways^^[LINKS]^Links use a negligable amount of diskspace but are not portable across computers.^^[COPY]^Games without a RoM-Jacket backdrop or pre-existing Hyperspin background image will have a copy of RoM-Jacket's deafalt image.^This renders Hyperspin games portable across computers." "Link;Copy" /DB=1
if %errorlevel%==1 goto :SETLINK
if %errorlevel%==2 goto :SETCOPY
goto :HSCREATEEND

:SETLINK
set REPART=1
goto :TRANSTYPE
:SETCOPY
set REPART=
goto TRANSTYPE

:TRANSTYPE
del /q "%GBC%\curlist.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Select media to transfer." "OKAY"
echo.Boxart>"%GBC%\artype.ini"
echo.Backdrops>>"%GBC%\artype.ini"
echo.Logos>>"%GBC%\artype.ini"
echo.Videos>>"%GBC%\artype.ini"
"%GBC%\multisel.exe" "%GBC%\artype.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
set CURNUM=
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do set /a CURNUM+=1
if "%CURNUM%" GEQ "2" goto :ALLMETA

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do SET CURTYPE=%%~a
if "%CURTYPE%"=="Boxart" goto :BOXMETA
if "%CURTYPE%"=="Backdrops" goto :BCKMETA
if "%CURTYPE%"=="Logos" goto :BANMETA
if "%CURTYPE%"=="Videos" goto :VIDMETA
exit /b

:ALLMETA
set GAMIMG=
set GAMBCK=
set GAMWHL=
set GAMVID=
for /f "delims=" %%a in ('type "%GBC%\artype.ini"') do (
if "%%~a"=="Boxart" set GAMIMG=1
if "%%~a"=="Backdrops" set GAMBCK=1
if "%%~a"=="Logos" set GAMWHL=1
if "%%~a"=="Videos" set GAMVID=1
)
goto :GAMTHEMESTART

:BOXMETA
set GAMIMG=1

goto :GAMTHEMESTART
:BCKMETA
set GAMBCK=1

goto :GAMTHEMESTART
:WHLMETA
set GAMWHL=1

goto :GAMTHEMESTART
:VIDMETA
set GAMVID=1

goto :GAMTHEMESTART

:GAMTHEMESTART
if "%PRECONF%"=="1" SET ARTNUM=Artwork3
if "%PRECONF%"=="1" goto :ALLCONSOLESALLGAMES
"%GBC%\Wselect.exe" "%GBC%\art.set" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=Artwork3
CALL "%GBC%\artSel.cmd"
if "%ALLOFTHEM%"=="1" goto :ALLCONSOLESALLGAMES

:CONSOLEPROCESS
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "Building %%~a Game Themes"  /marquee
pushd "%GBG%\%GAM%\%CONS%\%HYPCON%\%%~a"
CALL :GETGAM
popd
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :ZIPUP

:ALLCONSOLESALLGAMES
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HMIRZ%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
if "%PRECONF%"=="1" copy /y "%GBC%\list.ini" "%GBC%\curlist.ini"
if "%PRECONF%"=="1" goto :GETLST
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :HSCREATEEND
:GETLST
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
SET HYPCON=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
%BSTRT% "%WBUSY%" "RJ_GUI" "Building %%~a Game Themes"  /marquee
CALL :ALLCONV
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
)
goto :ZIPUP

:ALLCONV
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~nxa
pushd "%GBG%\%GAM%\%CONS%\%HYPCON%\%%~nxa"
CALL :GETGAM
type "%GBC%\net\%HYPS%\HSGamThemeEnd.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml
popd
)
exit /b

:GETGAM
SET THMXT=
set VIDOK=
set BOXOK=
set BANOK=
set BCKOK=
set CRTOK=
mkdir "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%"

type "%GBC%\net\%HYPS%\HSGamThemeBeg.prc">"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%OVRW%"=="1" CALL :OVERWRITE
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.mp4"') do SET EVID=%%~a
if "%EVID%" NEQ "" set VIDOK=1
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.flv"') do SET EVID=%%~a
if "%EVID%" NEQ "" set VIDOK=1

if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET BOXOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET CRTOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Backdrops\%GAMDIR%.png" SET BCKOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Backdrops\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET BANOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET THMXT=1

for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.mp4"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)

if "%GVID%" NEQ "" CALL :VIDC
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.flv"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)

if "%GVID%" NEQ "" CALL :VIDC
if exist "Folder.jpg" CALL :FLDRC
if exist "Folder.jpg" SET THMXT=1
REM if exist "Cart.jpg" CALL :CARTC
if exist "Backdrop.jpg" CALL :BCKDC
if exist "Backdrop.jpg" SET THMXT=1
if exist "Banner.png" CALL :BANRC
if exist "Banner.png" SET THMXT=1
if "%GVID%" NEQ "" SET THMXT=1
if "%GXID%" NEQ "" SET THMXT=1
type "%GBC%\net\%HYPS%\HSGamThemeEnd.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%THMXT%"=="1" "%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%.zip" "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
exit /b

:VIDC
type "%GBC%\net\%HYPS%\HSGamThemeVid.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%VIDOK%"=="1" %CPTYP% "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%GVID%" "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.%GXID%"
exit /b
:FLDRC
type "%GBC%\net\%HYPS%\HSGamThemeArt3.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%BOXOK%"=="1" "%GBC%\nconvert.exe" %OVRBCK% -resize 275 400 -out png -o "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" "%FLDR%.jpg"
exit /b
:CARTC
type "%GBC%\net\%HYPS%\HSGamThemeArt2.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%CRTOK%"=="1" "%GBC%\nconvert.exe" %OVRBCK% -resize 250 320 -out png -o "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" "Cart.jpg"
exit /b
:WINV
if "%NEWLINK%"=="" exit /b
mklink "%GBC%\net\%BCKD%\%HYPS%.png" "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png"
exit /b
:WINLEG
if "%NEWLINK%"=="" exit /b
"%GBC%\linkd.exe" "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png" "%GBC%\net\%BCKD%\%HYPS%.png"
exit /b

:BCKDC
if exist "%BCKD%.jpg" goto :BCKDNCONV
if "%REPART%"=="1" call :%LINKR%
if "%REPART%"=="1" exit /b
if "%OVRWR%"=="1" %CPTYP% "%GBC%\net\%BCKD%\%HYPS%.png" "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png"
if "%OVRWR%"=="1" exit /b 
%CPTYP% "%GBC%\net\%BCKD%\%HYPS%.png" "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png"
exit /b
:BCKDNCONV
if "%BCKOK%" NEQ "1" "%GBC%\nconvert.exe" -resize %REZX% %REZY% %OVRBCK% -out png -o "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png" "%BCKD%.jpg"
exit /b
:BANRC
if "%BANOK%"=="1" "%GBC%\nconvert.exe" %OVRBCK% -out png -o "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" "%BANN%.png"
exit /b

:GAMES
for /f "delims=" %%a in ('Wfolder.exe "SET HYPROM=" "%GBG%\%GAM%\%CONS%" "Where is the rom's folder?" /noquote') do %%a
for %%a in ("%HYPROM%") do SET GAMDIR=%%~nxa
pushd "%HYPROM%\..\"
for %%A in ("%CD%") do set HYPROMD=%%~A
for %%a in ("%HYPROMD%") do set HYPCON=%%~nxa
popd
if "%PRECONF%"=="1" goto :OVRWY2
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to overwrite existing files?" "Yes;No"
if %ERRORLEVEL%==1 goto :OVRWY2
if %ERRORLEVEL%==2 goto :OVRWN2
goto :HSCREATEEND

:OVRWY2
set CPTYP=copy /y
SET OVRW=1
goto :GAMETYPE
:OVRWN2
for /f "delims=" %%a in ("echo n|copy /-y") do set CPTYP=%%~a
SET OVRW=
goto :GAMETYPE

:GAMETYPE
"%GBC%\wbox.exe" "RJ_GUI" "What kind of artwork would you like to transfer?^Boxart|Backgrounds|Wheels|Videos|ALL^" "Boxart;Backgrounds;Wheels;ALL;Menu"
if %ERRORLEVEL%==1 goto :BOXMET
if %ERRORLEVEL%==2 goto :BCKMET
if %ERRORLEVEL%==3 goto :BANMET
if %ERRORLEVEL%==4 goto :VIDMET
if %ERRORLEVEL%==5 goto :ALLMET
if %ERRORLEVEL%==6 goto :HSCREATEEND
goto :HSCREATEEND

:ALLMET
set GAMIMG=1
set GAMBCK=1
set GAMWHL=1
set GAMVID=1
goto :GAMSTART

:BOXMET
set GAMIMG=1

goto :GAMSTART
:BCKMET
set GAMBCK=1

goto :GAMSTART
:WHLMET
set GAMWHL=1

goto :GAMSTART
:VIDMET
set GAMVID=1

goto :GAMSTART
:GAMSTART
del /q "%GBC%\artset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=Artwork2
CALL "%GBC%\artSel.cmd"
pushd "%HYPROMD%\%GAMDIR%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Building %GAMDIR% Theme"  /marquee
CALL :ONEGAM
%BSTRT% "%WFINS%" "RJ_GUI" "Game Complete." /Stop /timeout:1
popd
goto :HSCREATEEND

:OVERWRITE
set VIDOK=1
set BOXOK=1
set BANOK=1
set BCKOK=1
set CRTOK=1
exit /b


:ONEGAM
SET THMXT=
set VIDOK=
set BOXOK=
set BANOK=
set BCKOK=
set CRTOK=
mkdir "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%"
type "%GBC%\net\%HYPS%\HSGamThemeBeg.prc">"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.mp4"') do (
if "%%~a" NEQ "" SET EVID=%%~na
if "%%~a" NEQ "" SET EXID=%%~xa
)
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.flv"') do (
if "%%~a" NEQ "" SET EVID=%%~na
if "%%~a" NEQ "" SET EXID=%%~xa
)
if "%EVID%" NEQ "" set VIDOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET BOXOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET CRTOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png" SET BCKOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET BANOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET THMXT=1
if "%OVRW%"=="1" CALL :OVERWRITE
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.mp4"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.flv"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)
if "%GVID%" NEQ "" CALL :VIDC
if exist "Folder.jpg" CALL :FLDRC
if exist "Folder.jpg" SET THMXT=1
REM if exist "Cart.jpg" CALL :CARTC
if exist "Backdrop.jpg" CALL :BCKDC
if exist "Backdrop.jpg" SET THMXT=1
if exist "Banner.png" CALL :BANRC
if exist "Banner.png" SET THMXT=1
if "%GVID%" NEQ "" SET THMXT=1
if "%GXID%" NEQ "" SET THMXT=1
type "%GBC%\net\%HYPS%\HSGamThemeEnd.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%THMXT%"=="1" "%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%.zip" "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
:ZIPUP
:HSCREATEEND
exit /b
