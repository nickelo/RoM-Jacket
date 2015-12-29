:HYPRESET
call "%GBC%\varLoc.bat">>"%GBC%\logs\varLoc.log"

:HYPBEGIN
SET TRANSV=
SET TRANSW=
SET TRANSF=
SET TRANSB=
set ARTTYPE=
if "%HPN%"=="[HPN]" goto :NOHSFOUND
"%GBC%\wbox.exe" "RJ_GUI" "Select Media to transfer to Hyperspin" "OKAY" /DB=1
if %errorlevel%==1 goto :SELMED
goto :TRANSEND
:SELMED
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
echo."Boxart">"%GBC%\list.ini"
echo."Backdrops">>"%GBC%\list.ini"
echo."Logos">>"%GBC%\list.ini"
echo."Videos">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :TRANSEND

"%GBC%\wbox.exe" "RJ_GUI" "Update: Files will be created but existing files will not be overwritten^Overwrite: All files will be copied and existing files will be overwritten." "Update;Overwrite" /DB=1
if %ERRORLEVEL%==1 goto :CPYTYPE
if %ERRORLEVEL%==2 goto :OVRTYPE
goto :TRANSEND

:NOHSFOUND
"%GBC%\wbox.exe" "RJ_GUI" "Hyperspin.exe was not found" "Quit" /DB=2
if %ERRORLEVEL%==1 goto :TRANSEND
goto :TRANSEND
	

:CPYTYPE
for /f "delims=" %%a in ("echo n|copy /-y") do set CPTYP=%%~a
goto :TYPE

:OVRTYPE
set CPTYP=copy /y
goto :TYPE

:TYPE

:ALLMEDIA
set TRANSF=
set TRANSB=
set TRANSW=
set TRANSV=
set ARTTYPE=Media

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
if "%%~a"=="Boxart" set TRANSF=1
if "%%~a"=="Backdrops" set TRANSB=1
if "%%~a"=="Logos" set TRANSW=1
if "%%~a"=="Videos" set TRANSV=1
)

:SETCHOICE
:SELCONSOLES
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :TRANSEND
set SELNUM=
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do set /a SELNUM+=1
if "%SELNUM%" GEQ "2" goto :ALLCONSOLES
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do  set RJCP=%%~a
for %%a in ("%RJCP%") do set HYPCON=%%~a
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
if not exist "%HPN%\Media\%RJCP%" call :matchtst
call :copyone
popd
goto :TRANSCOMP

:matchtst
"%GBC%\wbox.exe" "RJ_GUI" "%RJCP%^does not exist in your Hyperspin library^or^may be named differently.^^MATCH:match to a console in your Hyperspin library^SKIP:creates the directory in your Hyperspin Library and copies the art.^" "Match;Skip"
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :skip
goto :TRANSEND

:skip
for %%a in ("%HYPCON%") do set RJCP=%%~a
exit /b

:match
del /q "%GBC%\consoles.ini"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\consoles.ini"
"%GBC%\fart.exe" "%GBC%\consoles.ini" "\"" --remove
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "%RJCP% is actually:" "$item" > "%GBC%\conschoice.cmd"
if %errorlevel%==0 GOTO :TRANSEND
for /f "delims=" %%a in ('type "%GBC%\conschoice.cmd"') do set RJCP=%%~a
	exit /b

:copyone
CALL "%GBC%\HSDirCreate.bat">>"%GBC%\logs\HSDirCreate.log"
if "%TRANSF%" NEQ "1" goto :SETGAMDIR

:RESELECT
set ARTNUM=
del /q "%GBC%\artset.ini"
echo.-------->"%GBC%\artset.ini"
echo.-LOCATE->>"%GBC%\artset.ini"
echo.-------->>"%GBC%\artset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%RJCP%\Images"') do echo."%%~a">>"%GBC%\artset.ini"
echo.Make_Directory>>"%GBC%\artset.ini"
"%GBC%\fart.exe" "%GBC%\artset.ini" "\"" --remove
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=%ARTNUM%
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="--------" goto :RESELECT
if "%ARTNUM%"=="" SET ARTNUM=Wheel
if "%ARTNUM%"=="Make_Directory" "%GBC%\Winput.exe" "$input" "Enter the name of the BoxArt directory."  > "%GBC%\boxart.cmd"
for /f "delims=" %%a in ('type "%GBC%\boxart.cmd"') do set ARTNUM=%%~a
if "%ARTNUM%"=="" SET ARTNUM=Wheel

:SETGAMDIR
%BSTRT% "%WBUSY%" "RJ_GUI" "Converting %HYPCON% media." /marquee
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~a
call :COPYPROC
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b

:COPYPROC
if "%TRANSW%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\logo.png"
if "%TRANSW%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\banner.png"
if "%TRANSW%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\banner.jpg"
if "%TRANSF%"=="1" "%GBC%\nconvert.exe" -resize 275 400 -out png -o "%HPN%\Media\%RJCP%\Images\%ARTNUM%\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Folder.jpg"
if "%TRANSB%"=="1" "%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%HPN%\Media\%RJCP%\Images\Backgrounds\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Backdrop.jpg"
if "%TRANSV%"=="1" %CPTYP% "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video\%RJCP%.flv"
if "%TRANSV%"=="1" %CPTYP% "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video\%RJCP%.mp4"
if "%TRANSV%"=="1" CALL :GVID
exit /b

:GVID
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.mp4"') do %CPTYP% "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%%~a" "%HPN%\Media\%RJCP%\Video\%GAMDIR%.mp4"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.flv"') do %CPTYP% "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%%~a" "%HPN%\Media\%RJCP%\Video\%GAMDIR%.flv"
exit /b

:ALLCONSOLES
if "%TRANSF%"=="" goto :TRBEG
set ARTNUM=
echo.Artwork1>"%GBC%\artset.ini"
echo.Artwork2>>"%GBC%\artset.ini"
echo.Artwork3>>"%GBC%\artset.ini"
echo.Artwork4>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select Boxart Folder" "set ARTNUM=$item" > "%GBC%\artsel.cmd"
call "%GBC%\artsel.cmd"
if "%ARTNUM%"=="" goto :TRANSEND

:TRBEG
%BSTRT% "%WBUSY%" "RJ_GUI" "Transferring Media"  /marquee
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set HYPCON=%%~a
set RJCP=%%~a
)
for /f "delims=" %%a in ('dir /b /ad-h "%HMIRZ%"') do (
set HYPCON=%%~a
SET RJCP=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
if not exist "%HPN%\Media\%RJCP%" call :matchtst
call :DIRPREP
popd
)
goto :TRANSCOMP

:DIRPREP
CALL "%GBC%\HSDirCreate.bat">>"%GBC%\logs\HSDirCreate.log"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~a
CALL :COPYART
)
exit /b

:COPYART
if "%TRANSW%"=="1" %CPTYP% "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Banner.png" "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png"
if "%TRANSF%"=="1" %CPTYP% "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Folder.jpg" "%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.jpg" && "%GBC%\nconvert.exe" -resize 275 400 -out png -o "%HPN%\Media\%RJCP%\Images\%ARTNUM%\%GAMDIR%.png" "%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.jpg"
if "%TRANSB%"=="1" %CPTYP% "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Backdrop.jpg" "%HPN%\Media\%RJCP%\Images\Backgrounds\Backdrop.jpg" && "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Backgrounds\%GAMDIR%.png" "%HPN%\Media\%RJCP%\Images\Backgrounds\Backdrop.jpg"
if "%TRANSV%"=="1" %CPTYP% "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video\%RJCP%.mp4"
if "%TRANSV%"=="1" %CPTYP% "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video\%RJCP%.flv"
exit /b

:TRANSCOMP
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
:TRANSEND