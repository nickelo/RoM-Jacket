:RESETE
set LIBREMU=New emulator library location NOT SET
if "%LIBRGAM%" NEQ "" goto :ROUTE

:RESETG
set LIBRGAM=New ROM library location NOT SET

:ROUTE
set MIGOPT=
set EMUCO=
set GAMCO=
if "%LIBREMU%" NEQ "" set MIGOPT=;Migrate
if "%LIBRGAM%" NEQ "" set MIGOPT=;Migrate
"%GBC%\wbox.exe" "RJ_GUI" "#########################################^%LIBREMU%^%LIBRGAM%^#########################################^^[Setup] Decide new locations for RoM-Jacket's emulator and ROM-system libraries.^[Emulators] Set the location for the emulator library.^[Games] Set the location of the games.^[Migrate] Reconfigure a system to use the new locations" "Setup;Emulators;Games%MIGOPT%" /DB=1
if %errorlevel%==1 goto :SETUP
if %errorlevel%==2 goto :EMUONLY
if %errorlevel%==3 goto :GAMONLY
if %errorlevel%==4 goto :SELECTSYS
goto :QUITOUT


:SETUP
set EMUCO=1
set GAMCO=1

set NEWDRV-ltr=
set _newDirect=
set NEWDRV=
set GBN=
goto :setnew_gamdir

:GAMONLY
set EMUCO=
:setnew_gamDir
set GAMCO=1
set DFLOC=
"%GBC%\wbox.exe" "RJ_GUI" "#######DESTINATION FOR CONFIGURATIONS#########^^Use [Current] locations?^Set [Alternate] location." "Current;Alternate" /DB=1 /BW=120
if %errorlevel%==1 goto :DEFAULTLOC
if %errorlevel%==2 goto :ALTERNATELOC
goto :QUITOUT

:ALTERNATELOC
for /f "delims=" %%a in ('Wfolder.exe "SET _newDirect=" "%GBD%\" "Games Folder: (best if root of Disk)" /noquote') do %%a
if "%_newDirect%"=="" goto :RESETG
for %%A in ("%_newDirect:*:=%") do set NEWDRV-ltr=%%~A
if "%NEWDRV-ltr%"=="\" (goto :newslash)
for %%A in ("%_newDirect:~0,2%") do set NEWDRV=%%~A
if "%_newDirect%"=="" goto :setnew_gamDir
goto :newnoslash

:SELECTDNEW
for %%a in ("%_newDirect:~0,-6%") do set _newDirect=%%~a
goto :GAMDRIVE

:newslash
for %%A in ("%_newDirect:~0,2%") do set NEWDRV=%%~A

:NEWDRVLtr
for %%A in ("%_newDirect:~0,-1%") do set GBN=%%~A
for %%A in ("%_newDirect:~0,-1%\Games\Console") do set GBNL=%%~A
goto :emuquery

:newnoslash
for %%a in ("%_newDirect%") do if /i "%%~na"=="Games" goto :SELECTDNEW
:GAMDRIVE
for %%A in ("%_newDirect%") do set GBN=%%~A
for %%A in ("%_newDirect%\Games\Console") do set GBNL=%%~A
set LIBRGAM=New ROM library location SET
goto :emuquery
:DEFAULTLOC
set DFLOC=1
for %%a in ("%GBG%") do set GBN=%%~a
for %%a in ("%GBG%\%GAM%\%CONS%") do set GBNL=%%~a
for %%a in ("%GBD%") do set NEWDRV=%%~a
set LIBRGAM=New ROM library location SET

:emuquery
if "%DFLOC%"=="1" goto :DEFAULTEMUS
if "%EMUCO%"=="" goto :ROUTE
:new_emuDir
set EMUCO=1
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET _emuNew=" "%GBD%\" "Emulators folder: (best if root of Disk)" /noquote') do %%a
for %%A in ("%_emuNew:*:=%") do set emudrn-ltr=%%~A
for %%A in ("%_emuNew:~0,2%\") do set EMUDIR=%%~A
if "%_emuNew%"=="" (goto :newEmuLoc)
goto :emudrvltr

:SELECTDNMU
for %%a in ("%_emuNew:~0,-10%") do set _emuNew=%%~a
goto :EMUDRIVE

:emudrvltr
for %%a in ("%_emuNew%") do if /i "%%~na"=="emulators" goto :SELECTDNMU
:EMUDRIVE
for %%A in ("%_emuNew%") do set GNE=%%~A
for %%A in ("%_emuNew%\Emulators") do set GNEL=%%~A
if "%emudrn-ltr%" NEQ "\" goto :completed
for %%A in ("%_emuNew:~0,2%\Emulators") do set GNEL=%%~A
goto :completed


:DEFAULTEMUS
for %%a in ("%GBE%\%EMUZ%") do set GNEL=%%~a
for %%a in ("%GBE%") do set GNE=%%~a
for %%a in ("%EMUD%") do set EMUDIR=%%~a

:completed
set LIBREMU=New emulator-library location SET


:SELECTSYS
call "%GBC%\fesysadd.bat">>"%GBC%\logs\fesysadd.log"
if not exist "%GBC%\curlist.ini" goto :ROUTE

:REDQa
set REWEMU=
set REWGAM=
"%GBC%\wbox.exe" "RJ_GUI" "Reconfigure RoM-Jackets using new locations for:^" "Emulators;Games;Both" /DB=1
if %errorlevel%==1 goto :EMURED
if %errorlevel%==2 goto :GAMRED
if %errorlevel%==3 goto :EMUGAMS
goto :QUITOUT

:EMURED
set REWEMU=1
goto :RECONFJ
:GAMRED
set REWGAM=1
goto :RECONFJ
:EMUGAMS
if "%LIBREMU%"=="New emulator library location NOT SET" goto :REDQ
if "%LIBRGAM%"=="New ROM library location NOT SET" goto :REDQ
set REWGAM=1
set REWEMU=1

:RECONFJ
call "%GBC%\reconfJackets.bat">>"%GBC%\logs\reconfJackets.log"
if "%cancelled%"=="1" goto :QUITOUT
goto :ROUTE

:QUITOUT
set cancelled=1