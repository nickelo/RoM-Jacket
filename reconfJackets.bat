:LOCPREFIX
"%GBC%\wbox.exe" "RJ_GUI" "^[Enter] Type a the location prefix for RoM-Jacket to change^eg: C:\Games\Console^^[Select] Use the browser to select the old locations^" "Enter;Select" /DB=2
if %errorlevel%==1 goto :INPUTLOC
if %errorlevel%==2 goto :DETECTLOC
goto :QUITOUT

:INPUTLOC
"%GBC%\Winput.exe" "set ROMVARLOC=$input" "Type the old location to replace.  Do not include a slash at the end" "C:\Games\Console">"%GBC%\romvar.cmd"
if %ERRORLEVEL%==1 goto :LOCPREFIX
pushd "%GBC%"
"%GBC%\fart.exe" "romvar.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "romvar.cmd" ">"" "^>"
popd
call "%GBC%\romvar.cmd"
if "%ROMVARLOC%"=="" goto :NOROM
goto :emuquery
:DETECTLOC
for /f "delims=" %%a in ('Wfolder.exe "SET _oldDirect=" "%GBD%\" "Old Location of your Games folder:" /noquote') do %%a
if "%_oldDirect%"=="" goto :LOCPREFIX
for %%A in ("%_oldDirect:*:=%") do set OLDDRV-ltr=%%~A
if "%OLDDRV-ltr%"=="\" (goto :newslash)
for %%A in ("%_oldDirect:~0,2%") do set OLDDRV=%%~A
if "%_oldDirect%"=="" goto :setnew_gamDir
goto :newnoslash

:SELECTDNEW
for %%a in ("%_oldDirect:~0,-6%") do set _oldDirect=%%~a
goto :GAMDRIVE

:newslash
for %%A in ("%_oldDirect:~0,2%") do set OLDDRV=%%~A

:OLDDRVLtr
for %%A in ("%_oldDirect:~0,-1%") do set _oldDirect=%%~A
for %%A in ("%_oldDirect%\%GAM%\%CONS%") do set ROMVARLOC=%%~A
goto :emuquery

:newnoslash
for %%a in ("%_oldDirect%") do if /i "%%~na"=="Games" goto :SELECTDNEW


:GAMDRIVE
for %%A in ("%_oldDirect%") do set GON=%%~A
for %%A in ("%_oldDirect%\%GAM%\%CONS%") do set ROMVARLOC=%%~A

:emuquery
if "%EMUCO%"=="" goto :finalq
"%GBC%\wbox.exe" "RJ_GUI" "^[Enter] Type a the location prefix for RoM-Jacket to change^eg: C:\Emulators^^[Select] Use the browser to select the old emulator location^" "Enter;Select" /DB=2
if %errorlevel%==1 goto :INPUTEMU
if %errorlevel%==2 goto :DETECTEMU
goto :QUITOUT

:INPUTEMU
"%GBC%\Winput.exe" "set _elldDirect=$input" "Type the old location to replace.  Do not include a slash at the end" "C:\Emulators">"%GBC%\emuvar.cmd"
if %ERRORLEVEL%==1 goto :emuquery
pushd "%GBC%"
"%GBC%\fart.exe" "emuvar.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "emuvar.cmd" ">"" "^>"
popd
call "%GBC%\emuvar.cmd"
if "%_elldDirect%"=="" goto :emuquery

for %%A in ("%_elldDirect:*:=%") do if "%%~A"=="\" goto :INPUTEMU
for %%A in ("%_elldDirect:~0,2%") do set ELDDRV=%%~A
for %%a in ("%_elldDirect%") do if /i "%%~na"=="Emulators" for %%a in ("%_elldDirect:~0,-10%") do set _elldDirect=%%~a
for %%A in ("%_elldDirect%") do set GEN=%%~A
for %%A in ("%_elldDirect%\%EMUZ%") do set NEN=%%~A

goto :finalq

:DETECTEMU
for /f "delims=" %%a in ('Wfolder.exe "SET _elldDirect=" "%GBD%\" "Old Location of your Emulators Fellder:" /noquote') do %%a
if "%_elldDirect%"=="" goto :RESETG
for %%A in ("%_elldDirect:*:=%") do set ELDDRV-ltr=%%~A
if "%ELDDRV-ltr%"=="\" (goto :newslash)
for %%A in ("%_elldDirect:~0,2%") do set ELDDRV=%%~A
if "%_elldDirect%"=="" goto :setnew_emuDir
goto :newnoslash

:setnew_emuDir
for %%a in ("%_elldDirect:~0,-6%") do set _elldDirect=%%~a
goto :EMUDRIVE

:SELECTEMUNEW
for %%a in ("%_elldDirect:~0,-10%") do set _elldDirect=%%~a
goto :EMUDRIVE

:newslash
for %%A in ("%_elldDirect:~0,2%") do set ELDDRV=%%~A

:ELDDRVLtr
for %%A in ("%_elldDirect:~0,-1%") do set GEN=%%~A
for %%A in ("%_elldDirect:~0,-1%\Emulators") do set NEN=%%~A
goto :emuquery

:newnoslash
for %%a in ("%_elldDirect%") do if /i "%%~na"=="Emulators" goto :SELECTEMUNEW

:EMUDRIVE
for %%A in ("%_elldDirect%") do set GEN=%%~A
for %%A in ("%_elldDirect%\Emulators") do set NEN=%%~A

:finalq
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CSTCONS=%%~a
call :EMUTST
call :EMUCFG
)

"%GBC%\wbox.exe" "RJ_GUI" "Copy Complete" "Select;Quit" /DB=2
if %errorlevel%==1 goto :SETMORE
if %errorlevel%==2 goto :QUITOUT
goto :QUITOUT

:SETMORE
set SETMORE=1
exit /b


:REFIN
pushd "%PTHINJ%"
if "%BATNJ%"=="1" "%GBC%\fart.exe" "*.bat" "%ROMVARLOC%" "%GBNL%"
if "%BATNJ%"=="1" "%GBC%\fart.exe" "*.bat" "%NEN%" "%GNEL%"
if "%EMUCO%"=="1" "%GBC%\fart.exe" "%CURINJ%" "%GEN%" "%GNEL%"
if "%GAMCO%"=="1" "%GBC%\fart.exe" "%CURINJ%" "%ROMVARLOC%" "%GBNL%"
popd
exit /b

:EMUCFG
if "%INJ1CFG%"=="" exit /b
for %%a in ("%INJ1CFG%") do set CURINJ=%%~a
for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\*%INJ1CFG%"') do (
SET PTHGET=%%~a
SET PTHINJ=%%~dpa
call :REFIN
)
set BATNJ=
if "%INJ2CFG%"=="" exit /b
for %%a in ("%INJ2CFG%") do set CURINJ=%%~a
for /f "delims= " %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\*%INJ2CFG%"') do (
SET PTHGET=%%~a
SET PTHINJ=%%~dpa
call :REFIN
)
if "%INJ3CFG%"=="" exit /b
for %%a in ("%INJ3CFG%") do set CURINJ=%%~a
for /f "delims= " %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\*%INJ3CFG%"') do (
SET PTHGET=%%~a
SET PTHINJ=%%~dpa
call :REFIN
)
if "%INJ4CFG%"=="" exit /b
for %%a in ("%INJ4CFG%") do set CURINJ=%%~a
for /f "delims= " %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\*%INJ4CFG%"') do (
SET PTHGET=%%~a
SET PTHINJ=%%~dpa
call :REFIN
)
if "%INJ5CFG%"=="" exit /b
for %%a in ("%INJ5CFG%") do set CURINJ=%%~a
for /f "delims= " %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\*%INJ5CFG%"') do (
SET PTHGET=%%~a
SET PTHINJ=%%~dpa
call :REFIN
)

:EMUTST
set BATNJ=
set INJ1CFG=
set INJ2CFG=
set INJ3CFG=
set INJ4CFG=
set INJ5CFG=
for /f "tokens=1,2,3* delims= " %%a in ("%CSTCONS%") do set CSTFND=%%~a%%~b%%~c
goto :"%CSTFND%"
exit /b


:"FuntechSuperA'can"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AcornBBC"
set INJ1CFG=Preferences.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AcornArchimedes"
set INJ1CFG=arc.cfg
set INJ2CFG=*.cmd
call:GETEQVAR
set BATNJ=1
exit /b
:"AcornElectron"
set INJ1CFG=electrem.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AdventureVision"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AmstradGX4000"
set INJ1CFG=WinApe.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AmstradCPC"
set INJ1CFG=WinApe.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AmericanLaserGames"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CommodoreAmigaCDTV"
set INJ1CFG=Config.fs-uae
set BATNJ=1
exit /b
:"CommodoreAmigaCD32"
set INJ1CFG=Config.fs-uae
set BATNJ=1
exit /b
:"AppleIIe"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set INJ3CFG=*.cmd
set BATNJ=1
exit /b
:"AppleIIgs"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set INJ2CFG=*.kegs
set BATNJ=1
exit /b
:"Aquarius"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"APFImaginationMachine"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Arcade"
set INJ1CFG=mame.ini
set INJ2CFG=.ini\*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=fba*.ini
set BATNJ=1
exit /b
:"Atari2600"
set INJ1CFG=stella.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=basedir.txt
set BATNJ=1
exit /b
:"Atari5200"
set INJ1CFG=*.atari*.c*
set BATNJ=1
exit /b
:"Atari7800"
set INJ1CFG=Prosystem.ini
set BATNJ=1
exit /b
:"Atari8Bit"
set INJ1CFG=Altirra.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Atari800"
set INJ1CFG=Altirra.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AtariST"
set INJ1CFG=steem.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AtariXE"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Atomiswave"
set INJ1CFG=demul.ini
set INJ2CFG=gdrImage.ini
set BATNJ=1
exit /b
:"BallyAstrocade"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"BandaiWonderSwan"
set INJ1CFG=mednafen*.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"BandaiWonderSwanColor"
set INJ1CFG=mednafen*.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"CommodoreAmiga"
set INJ1CFG=*.fs-uae
set BATNJ=1
exit /b
:"CamputersLynx"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"FairchildChannelF"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Commodore64"
set INJ1CFG=vice.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"CasioLoopy"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CasioPV-1000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CasioPV-2000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ColecoADAM"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ColecoVision"
set INJ1CFG=bluemsx.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CPS"
set INJ1CFG=mame.ini
set INJ2CFG=.ini\*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=fba*.ini
set BATNJ=1
exit /b
:"CPS2"
set INJ1CFG=mame.ini
set INJ2CFG=.ini\*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=fba*.ini
set BATNJ=1
exit /b
:"CPS3"
set INJ1CFG=mame.ini
set INJ2CFG=.ini\*.ini
set INJ3CFG=emulator.ini
set INJ4CFG=fba*.ini
set INJ5CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"Arcadia2001"
set INJ1CFG=WA.cfg
set INJ2CFG=mess*.ini
set BATNJ=1
exit /b
:"Enterprise128"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Enterprise64"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"EXL100"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Daphne"
set BATNJ=1
exit /b
:"Dragon32-64"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"FlashGames"
set BATNJ=1
exit /b
:"FM-7"
set INJ1CFG=XM7.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"FMTowns"
set INJ1CFG=unz.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"GameCOM"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Galeco"
set INJ1CFG=demul.ini
set INJ2CFG=gdrImage.ini
set BATNJ=1
exit /b
:"Hikaru"
set INJ1CFG=demul.ini
set INJ2CFG=gdrImage.ini
set BATNJ=1
exit /b
:"Intellivision"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"InteractFamilyComputer"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AtariJaguarCD"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AtariJaguar"
set INJ1CFG=*.cmd
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"JupiterAce"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"AtariLynx"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"MegaDuck"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Microtan65"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ThomsonMO5"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"MSD-O-S"
set BATNJ=1
exit /b
:"AppleMacintosh"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"MTX"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"MSX"
set INJ1CFG=bluemsx.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"MSX2"
set INJ1CFG=bluemsx.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"MSXTurboR"
set INJ1CFG=bluemsx.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"MZ-700"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"MZ-800"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Nintendo64"
set INJ1CFG=Project64.cfg
set INJ2CFG=mupen*.cfg
set INJ3CFG=NRage.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"Naomi"
set INJ1CFG=demul.ini
set INJ2CFG=nullDC.cfg
set INJ3CFG=gdrImage.ini
set BATNJ=1
exit /b
:"NeoGeoPocket"
set INJ2CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NeoGeoPocketColor"
set INJ2CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NeoGeoMVS"
set INJ1CFG=mame.ini
set INJ2CFG=.ini\*.ini
set INJ3CFG=mednafen*.cfg
set INJ4CFG=mess*.ini
set INJ5CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NeoGeoCD"
set INJ1CFG=raine*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=fba*.ini
set INJ5CFG=.ini\*.ini
set BATNJ=1
exit /b
:"NintendoDS"
set INJ1CFG=desmume.ini
set INJ2CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoVirtualBoy"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoGameCube"
set INJ1CFG=Dolphin.ini
set BATNJ=1
exit /b
:"NintendoGameboy"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoGameboyColor"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoGameboyAdvance"
set INJ1CFG=vba*.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoEntertainmentSystem"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoFamicom"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"NintendoSatellaview"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"NECPC-6001"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"NECPC88"
set INJ1CFG=m88.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"NECPC88-VA"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"NECPC98"
set INJ1CFG=*.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"NECPC-FX"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"Odyssey"
set BATNJ=1
exit /b
:"Odyssey2"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Odyssey3"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Panasonic3DO"
set INJ1CFG=FourDO.settings
set BATNJ=1
exit /b
:"PopCap"
set BATNJ=1
exit /b
:"PCEngineCD"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=ootake.ini
set INJ5CFG=.ini\*.ini
set BATNJ=1
exit /b
:"PCEngine"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=ootake.ini
set INJ5CFG=.ini\*.ini
set BATNJ=1
exit /b
:"PCJr"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"PhilipsCD-I"
set INJ1CFG=*.cmd
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"PhilipsPC2000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"PhilipsVG5000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"PhilipsVideopac7400"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Pocketstation"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SonyPlaystation"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=psx.ini
set INJ5CFG=*.cmd
set BATNJ=1
exit /b
:"SonyPlaystation2"
set INJ1CFG=*.ini
set BATNJ=1
exit /b
:"SonyPlaystationVita"
set BATNJ=1
exit /b
:"SonyPS4"
set BATNJ=1
exit /b
:"SonyPS3"
set BATNJ=1
exit /b
:"SonyPSP"
set INJ1CFG=ppsspp.ini
set INJ2CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"BeatsofRage"
set BATNJ=1
exit /b
:"TangerineOricAtmos"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CasioPV-1000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"RCAStudioII"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SamCoupe"
set INJ1CFG=simCoupe.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ScummVM"
set BATNJ=1
exit /b
:"SuperCassetteVision"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaSG-1000"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ4CFG=.ini\*.ini
set INJ3CFG=retroarch*.ini
set BATNJ=1
exit /b
:"SegaSC-3000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaSF-7000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SuperControlStation"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaGenesis"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.ini
set INJ4CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaPico"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.ini
set INJ4CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaMegaDrive"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.ini
set INJ4CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaMasterSystem"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.ini
set INJ4CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaDreamcast"
set INJ1CFG=demul.ini
set INJ2CFG=nulldc*.cfg
set INJ3CFG=gdrImage.ini
set BATNJ=1
exit /b
:"SegaGameGear"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.ini
set INJ4CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaCD"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.ini
set BATNJ=1
exit /b
:"SegaModel2"
set INJ1CFG=emulator.ini
set BATNJ=1
exit /b
:"SegaModel3"
set INJ1CFG=supermodel.ini
set BATNJ=1
exit /b
:"SuperFamicom"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ3CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"Sega32X"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.ini
set BATNJ=1
exit /b
:"SuperGrafx"
set INJ1CFG=mednafen*.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.ini
set BATNJ=1
exit /b
:"SegaMega-CD"
set INJ1CFG=fusion.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.ini
set BATNJ=1
exit /b
:"SuperNintendo"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"SordM5"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Spectravideo"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SegaSaturn"
set INJ1CFG=SSF.ini
set BATNJ=1
exit /b
:"SegaSTV"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SharpX1"
set INJ1CFG=x1turbo.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"WataraSuperVision"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SuperGameboy"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set INJ4CFG=retroarch*.cfg
set BATNJ=1
exit /b
:"TaitoTypeX"
set BATNJ=1
exit /b
:"TurboGrafx16"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=ootake.ini
set INJ5CFG=.ini\*.ini
set BATNJ=1
exit /b
:"TurboGrafxCD"
set INJ1CFG=mednafen*.cfg
set INJ2CFG=mess*.ini
set INJ3CFG=retroarch*.cfg
set INJ4CFG=ootake.ini
set INJ5CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ThomsonMo5"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ThomsonTo7"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"ThomsonTo8"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Touhou"
set BATNJ=1
exit /b
:"TomyTutor"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Triforce"
set INJ1CFG=dolphin.ini
set BATNJ=1
exit /b
:"Vectrex"
set INJ1CFG=configuration.xml
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:"InteronVC4000"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CommodoreC16"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CommodorePET"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CommodoreMAX"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"CommodoreVIC20"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"VTechCreativision"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"VTechLaser200"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"VTechLaser310"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Xbox360"
set BATNJ=1
exit /b
:"X68000"
set INJ1CFG=XM6*.ini
set INJ2CFG=win68*.ini
set INJ3CFG=mess*.ini
set INJ4CFG=.ini\*.ini
set BATNJ=1
exit /b
:"Xbox"
set BATNJ=1
exit /b
:"NintendoWii"
set INJ1CFG=dolphin.ini
set BATNJ=1
exit /b
:"NintendoWiiU"
set BATNJ=1
exit /b
:"WindowsGames"
set BATNJ=1
exit /b
:"SinclairQL"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SinclairZX81"
set INJ1CFG=mess*.ini
set INJ2CFG=.ini\*.ini
set BATNJ=1
exit /b
:"SinclairZXSpectrum"
set INJ1CFG=spin.ini
set INJ2CFG=mess*.ini
set INJ3CFG=.ini\*.ini
set BATNJ=1
exit /b
:QUITOUT
set cancelled=1