:MIRCHK
set MIRXST=1
for /f "delims=" %%a in ('type "%GBC%\mirtmp.ini"') do if "%%~a"=="%MIRTMPF%" set MIRXST=
if "%MIRTMPF%"=="1" echo.%MIRTMPF%>>"%GBC%\mirlist.ini"
exit /b
:FAVS
del /q "%GBC%\mirlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HMIRZ%"') do echo.%%~a>>"%GBC%\mirtmp.ini"
for /f "delims=" %%a in ('type "%GBC%\extendedSelect.set"') do (
set MIRTMPF=%%~a
call :MIRCHK
)
"%GBC%\wselect.exe" "%GBC%\mirlist.ini" "Select a favorite mirror" "set HYPCON=$item" > "%GBC%\mirlist.cmd"
if %ERRORLEVEL%==0 goto :SETCHOICE
call "%GBC%\mirlist.cmd"
if "%HYPSYS%"=="" goto :SETCHIOCE

for /f "delims=" %%a in ('dir /b/a-d-h "%HMIRZ%\%HYPCON%\*.lnk"') do (
set MIRFILE=%%~a
call :MIRFGET
)
exit /b

:MIRFGET
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
%BSTRT% "%WBUSY%" "RJ_GUI" "Building Theme"  /marquee
mkdir "%HPN%\Media\%HYPCON%"
if not exist "%HPN%\Media\Main Menu\%HYPCON%.zip.orig" copy /y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.orig"
move /Y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.bak"
copy /y "%BACKDEST%\Favorites.%BACKEXTN%" "%GBC%\net\%HYPS%\%HYPCON%\Background.png" && "%GBC%\nconvert.exe" -resize 1024 768 -out png -overwrite "%GBC%\net\%HYPS%\%HYPCON%\Background.png"
if "%ICNZ%"=="1" "%GBC%\nconvert.exe" -resize 300 300 -out png -o "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png" "%GBC%\net\Folder\Favorites.png"
if "%BANR%"=="1" copy /y "%GBC%\net\%BANN%\Favorites.png" "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png"
copy /Y "%GBC%\net\%HYPS%\MainTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml"
pushd "%GBC%\net\%HYPS%\%HYPCON%"
for /f "delims=" %%a in ('dir /b/a-d-h "*.png" "*.xml"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\Main Menu\Themes\%HYPCON%.zip" "%GBC%\net\%HYPS%\%HYPCON%\%%~a"
popd
mkdir "%GBC%\net\%HYPS%\%HYPCON%\Themes"
if not exist "%HPN%\Media\%HYPCON%\Theme\Default.zip.orig" copy /y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.zip.orig"
move /Y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.bak"
copy /y "%BACKDEST%\Favorites.%BACKEXTN%" "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png" && "%GBC%\nconvert.exe" -resize 1024 768 -out png -overwrite "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png"
copy /Y "%GBC%\net\%HYPS%\InTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Themes\Theme.xml"
copy /Y "%HPN%\Media\Favorites\Images\Other\pointer.png" "%HPN%\Media\%HYPCON%\Images\Other\Pointer.png"
pushd "%GBC%\net\%HYPS%\%HYPCON%\Themes"
for /f "delims=" %%a in ('dir /b/a-d-h "*.png" "*.xml"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%GBC%\net\%HYPS%\%HYPCON%\Themes\%%~a"
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1


for %%a in ("%MIRFILE%") do SET GAMDIR=%%~na

for /f "tokens=1,2 delims==" %%a in ("%GBC%\shortcut.exe" /F:"%HMIRZ%\%HYPCON%\%GAMDIR%" /A:Q') do (
set MIRFLOC=%%~b
if /i "%%~a"=="WorkingDirectoryExpanded" call :MKSCD
)
exit /b

:MKSCD
%BSTRT% "%WBUSY%" "RJ_GUI" "Building %GAMDIR% Game Theme"  /marquee
CALL :GETGAM

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :ZIPUP


:GETGAM
set ARTNUM=Artwork3
SET THMXT=
set VIDOK=
set BOXOK=
set BANOK=
set BCKOK=
set CRTOK=
mkdir "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%"
type "%GBC%\net\%HYPS%\HSGamThemeBeg.prc">"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.flv"') do SET EVID=%%~a
if "%EVID%" NEQ "" set VIDOK=1
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.mp4"') do SET EVID=%%~a
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
if "%VIDOK%"=="1" copy /Y "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%GVID%" "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.%GXID%"
exit /b
:FLDRC
type "%GBC%\net\%HYPS%\HSGamThemeArt3.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%BOXOK%"=="1" "%GBC%\nconvert.exe" -resize 275 400 -out png -o "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" "%FLDR%.jpg"
exit /b
:CARTC
type "%GBC%\net\%HYPS%\HSGamThemeArt2.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%CRTOK%"=="1" "%GBC%\nconvert.exe" -resize 250 320 -out png -o "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" "Cart.jpg"
exit /b
:BCKDC
if "%BCKOK%"=="1" "%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png" "%BCKD%.jpg"
exit /b
:BANRC
if "%BANOK%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" "%BANN%.png"
exit /b

:ZIPUP
:HSCREATEEND
exit /b
