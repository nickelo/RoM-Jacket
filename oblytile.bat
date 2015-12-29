SET HSLNK=
SET LOCL=
call "%GBC%\varLoc.bat">>"%GBC%\logs\varLoc.log"
if "%OBLY%"=="" goto :GETOBLYT
if "%OBLY%"=="[OBL]" goto :GETOBLYT
for /f "delims=" %%a in ('dir /b/a-d-h "%OBLY%\%OBLYT%*.exe"') do set OBLYXE=%%~nxa
if "%OBLYXE%"=="" goto :GETOBLYT
goto :OBLYSTART

:GETOBLYT
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to download/install OblyTile^or^Locate your installation of Oblytile?" "Install;Locate"
if %ERRORLEVEL%==1 goto :DOWNLOADOBLY
if %ERRORLEVEL%==2 goto :LOCATEOBLY
goto :QUITOBLY

:DOWNLOADOBLY
call "%GBC%\getOblyTile.bat">>"%GBC%\logs\getOblyTile.log"
if "%OBLYINST%"=="1" call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
if "%OBLYINST%"=="1" goto :OBLYSTART
goto :no_Obly

:LOCATEOBLY
"%GBC%\Wfolder.exe" "SET OBLY=" "%PRGF%" "Locate OBLYTILE Directory" /noquote > "%GBC%\oblytile.cmd"
call "%GBC%\oblytile.cmd"
if "%OBLY%"=="" goto :QUITOBLY
for %%a in ("%OBLY%\%OBLYT%") do if exist "%%~a" set OBLY=%%~a
set OBLYXE=
for /f "delims=" %%a in ('dir /b/a-d-h "%OBLY%\%OBLYT%*.exe"') do set OBLYXE=%%~nxa
if /i "%OBLYXE%"=="" goto :no_Obly
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log" 
goto :OBLLYSTART

:no_Obly
"%GBC%\wbox.exe" "RJ_GUI" "OblyTile could not be found." "Locate;Install"
if %ERRORLEVEL%==1 goto :LOCATEOBLY
if %ERRORLEVEL%==2 goto :DOWNLOADOBLY
goto :QUITOBLY

:OBLYSTART
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to use artwork from^Local Folders^or^Hyperspin^" "Local;Hyperspin" /DB=1
if %ERRORLEVEL%==1 goto :LOCAL
if %ERRORLEVEL%==2 goto :HYPER
goto :no_Obly

:HYPER
if "%HPN%"=="" goto :NOHS
if "%HPN%"=="[HPN]" goto :NOHS
set HSLNK=1
for %%a in ("%GBG%\%GAM%\%LOCMIR%") do SET DIRTMP=%%~a
goto :START

:NOHS
"%GBC%\wbox.exe" "RJ_GUI" "Hyperspin was not found.^Would you like to locate it or install it?" "Locate;Menu" /DB=1
if %ERRORLEVEL%==1 goto :GETHYPERSPIN
if %ERRORLEVEL%==2 goto :OBLYSTART
goto :OBLYSTART

:GETHYPERSPIN
call "%GBC%\installHS.bat">>"%GBC%\logs\installHS.log"
if "%HPN%"=="" goto :NOHS
if "%HPN%"=="[HPN]" goto :NOHS
goto :OBLYSTART

:CREATEMIRRORS
call "%GBC%\oblyMirror.bat">>"%GBC%\logs\OblyMirror.log"
goto :START

:LOCAL
set LOCL=1
for %%a in ("%GBG%\%GAM%\%CONS%") do SET DIRTMP=%%~a

:START
for /f "delims=" %%d in ('dir /s /b /ad-h "%GBG%\%GAM%\%LOCMIR%"') do rd "%%d"
echo ---------->"%GBC%\hsmir.ini"
echo ALL CONSOLES>>"%GBC%\hsmir.ini"
echo ---------->>"%GBC%\hsmir.ini"
echo CREATE MIRRORS>>"%GBC%\hsmir.ini"
echo ---------->>"%GBC%\hsmir.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%LOCMIR%"') do echo.%%~a>>"%GBC%\hsmir.ini"

:CHOOSE
"%GBC%\Wselect.exe" "%GBC%\hsmir.ini" "Select Mirror" "set DIRSEL=$item" > "%GBC%\dirsel.cmd"
if %errorlevel%==0 exit /b
CALL "%GBC%\dirsel.cmd"
if "%DIRSEL%"=="CREATE MIRRORS" goto :CREATEMIRRORS
if "%DIRSEL%"=="----------" goto :CHOOSE
if "%DIRSEL%"=="ALL CONSOLES" goto :ALLCONSOLES
if "%HSLNK%"=="1" goto :HSETUP

:BEGIN
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%LOCMIR%\%DIRSEL%\*.lnk"') do (
SET ROMNAME=%%~na
call :COPYIMG
)
exit /b

:COPYIMG
SET ROMNICK=%ROMNAME:~0,20%
SET ROMNICK=%ROMNICK:,=-%
SET ROMNICK=%ROMNICK:'=-%
SET ROMNICK=%ROMNICK:^=-%
SET ROMNICK=%ROMNICK:&=-%
SET ROMNICK=%ROMNICK:$=-%
SET ROMNICK=%ROMNICK:!=-%
SET ROMNICK=%ROMNICK:`=-%
SET ROMNICK=%ROMNICK:#=-%
set EXTIMG=
if "%HSLNK%"=="1" call :IMGSET
if "%LOCL%"=="1" call :IMGSET2
"%OBLY%\%OBLYXE%" "%ROMNICK%" "%GBG%\%GAM%\%LOCMIR%\%DIRSEL%\%ROMNAME%.lnk" "" "%EXTIMG%" "" #2D8AEF #FFFFFF show admin yes no no
exit /b

:DEFIMG
for %%a in ("%GBC%\Metro.png") do set EXTIMG=%%~a
exit /b

:IMGSET
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\Folder.png") do if exist "%%~a" set EXTIMG=%%~a
for %%a in ("%HPN%\Media\%DIRSEL%\Images\%ARTNUM%\%ROMNAME%.png") do if exist "%%~a" set EXTIMG=%%~a
if not exist "%EXTIMG%" call :DEFIMG
exit /b

:IMGSET2
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\Folder.png") do if exist "%%~a" SET EXTIMG=%%~a
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\%ROMNAME%\Folder.jpg") do if exist "%%~a" SET EXTIMG=%%~a
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\%ROMNAME%\Folder.png") do if exist "%%~a" SET EXTIMG=%%~a
if not exist "%EXTIMG%" call :DEFIMG
exit /b

:HSETUP
"%GBC%\wbox.exe" "RJ_GUI" "Select the BoxArt Directory for %DIRSEL%" "OK" /TM=3
if %ERRORLEVEL%==1 goto :SELECT

:SELECT
del /q "%GBC%\artset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%DIRSEL%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 goto :HSETUP
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="" goto :SELECT
goto :BEGIN	

:ALLCONSOLES
if "%LOCL%"=="1" goto :ALLSTART
"%GBC%\Wselect.exe" "%GBC%\art.set" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 exit /b

:ALLSTART
for /f "delims=" %%a in ('dir /b/ad-h "%DIRTMP%"') do (
SET DIRSEL=%%~a
CALL :BEGIN
)
exit /b

:QUITOBLY
