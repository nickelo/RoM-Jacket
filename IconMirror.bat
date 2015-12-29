set MIRICN=
set CANCELLED=
:OB
set CONBLD=
goto :MIRCONSOLE

:MIRCONSOLE
if "%CONBLD%"=="1" goto :GETLIST
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET MIRLOC=" "%GBG%\%GAM%" "MIRROR DESTINATION" /noquote') do %%a
if "%MIRLOC%"=="" goto :QUITOUT
"%GBC%\Winput.exe" "set MIRDN=$input" "Enter the Name of your Mirror-Jacket" "Mirrors">"%GBC%\input.cmd"
if %ERRORLEVEL%==1 goto :QUITOUT
call "%GBC%\input.cmd"
if "%MIRDN%"=="" goto :QUITOUT
popd
set CONBLD=1
for %%a in ("%MIRLOC%\%MIRDN%") do set MIRNZ=%%~a
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to create icons for your mirrors?" "Yes;No" /DB=1
if %errorlevel%==1 goto :MIRICN
if %errorlevel%==2 goto :GETLIST
goto :QUITOUT

:MIRICN
set LIBLOC=RJ
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
set MIRICN=1
if "%HPN%"=="[HPN]" goto :GETLIST
if "%HPN%"=="" goto :GETLIST

"%GBC%\wbox.exe" "RJ_GUI" "[STRETCH] the image to the maximum size^[CENTER] the image to the icon^[CROP] the image to the size of the icon" "STRETCH;CENTER;CROP" /DB=2 /BW=100
if %errorlevel%==1 goto :STRETCH
if %errorlevel%==2 goto :CROP
if %errorlevel%==3 goto :CENTER
goto :QUITOUT

:CROP
set ICNFMT=-crop
goto :SELMED
:STRETCH
set ICNFMT=-stretch
goto :SELMED
:CENTER
set ICNFMT=
goto :SELMED

:SELMED
"%GBC%\wbox.exe" "RJ_GUI" "##############^ICON LOCATION^###############^[RJ-Library]: Use Boxart From your RoM-Jackets.^[Hyperspin]: Use Boxart from your Hyperspin Library^[Other]: Select an alternate location for Boxart" "RJ-Library;Hyperspin;Other" /DB=1 /BW=100
if %errorlevel%==1 goto :GETLIST
if %errorlevel%==2 goto :HSLIB
if %errorlevel%==3 goto :OTHART
goto :QUITOUT

:OTHART
set OTHRART=
set LIBLOC=OTH
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET OTHRART=" "" "Select a boxart location" /noquote') do %%a
popd
if "%OTHRART%"=="" set CANCELLED=1
goto :GETLIST

:HSLIB
set LIBLOC=HS
goto :GETLIST

:GETLIST
SET MIRCONNORM=1
SET MIRCONCUST=
SET CSTMIRICN=1
if "%LIBLOC%"=="HS" call :GETHSLIB
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Console-Mirror Directories"  /marquee
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set MIRDIR=%%~a
set HSCONDIR=%%~a
call :CREATING
)
goto :CLEANHOUSE


:GETHSLIB
"%GBC%\wbox.exe" "RJ_GUI" "Select the BoxArt Directory for %MIRDIR%" "OK" /TM=3
if %ERRORLEVEL%==1 goto :SELECTART
goto :QUITOUT

:SELECTART
del /q "%GBC%\artset.ini"
if "%MIRDIR%"=="ALL CONSOLES" for /f "delims=" %%a in ('type "%GBC%\art.set"') do echo.%%~a>>"%GBC%\artset.ini"
if "%MIRDIR%"=="ALL CONSOLES" goto :ARTCHOICE
echo.-------->"%GBC%\artset.ini"
echo.-LOCATE->>"%GBC%\artset.ini"
echo.-------->>"%GBC%\artset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%MIRDIR%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
if not exist "%GBC%\artset.ini" do set ARTNUM=Artwork2
:ARTCHOICE
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET HYPOVR=1
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="--------" goto :SELECTART
if "%ARTNUM%"=="-LOCATE-" goto :LOCATEART
if "%ARTNUM%"=="" set LIBLOC=RJ
exit /b

:LOCATEART
set OTHRART=
set LIBLOC=OTH
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET OTHRART=" "" "Select a boxart location" /noquote') do %%a
popd
if "%OTHRART%"=="" set CANCELLED=1
exit /b

:CLEANHOUSE
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :CLEAR
popd
)
pushd "%GBG%\%GAM%\%CONS%"
call :CLEAR
popd
goto :ALLCONSOLE

:CLEAR
for /f "delims=" %%d in ('dir /b /ad-h') do rd /q "%%~d"
exit /b

:CREATEICON
pushd "%MIRLOC%\%MIRDN%"
for /f "delims=" %%a in ('dir /b/ad-h') do (
set CURCONSLOC=%%~a
ATTRIB +s %%~a
pushd "%%~a"
if exist "%GBC%\net\%FLDR%\%%~a.png" "%GBC%\any2ico.exe" -img="%GBC%\net\%FLDR%\%%~a.png" -icon="%GBC%\net\%FLDR%\%%~a.ico" -formats=32,48,96,128,256 -pngc %ICNFMT%
if exist "%GBC%\net\%FLDR%\%%~a.png" call :RENDER
popd
attrib +R "%MIRLOC%\%MIRDN%\%%~a"
)
exit /b

:RENDER
COPY /Y "%GBC%\net\%FLDR%\%CURCONSLOC%.ico" "./image.ico"
copy /y "%GBC%\dtico.set "./dtico.set"
attrib -H desktop.ini
del /q desktop.ini
"%GBC%\fart.exe" "dtico.set" "[LOC]" "%MIRLOC%\%MIRDN%\%CURCONSLOC%"
rename "dtico.set" "desktop.ini" 
ATTRIB +S +H image.ico
attrib -A +S +H desktop.ini
)
exit /b

:ALLCONSOLE
SET CSTMIRICN=0
mkdir "%MIRLOC%\%MIRDN%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Console-Mirror Directories"  /marquee
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set MIRDIRNAME=%%~na
set MIRDIR=%%~a
set HSCONDIR=%%~a
mkdir "%MIRLOC%\%MIRDN%\%%~a"
CALL "%GBC%\mirlink.bat">>"%GBC%\logs\mirlink.log"
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :COMPLETE
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Console-Mirror icons"  /marquee
:COMPLETE
call :CREATEICON
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
:QUITOUT