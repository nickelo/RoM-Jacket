:INIT
set REINIT=
:INITL
SET escancel=
:WIDESPCT
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\%BCKD%.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a
set BACKEXTN=jpg

if /i "%DISPASPCT%"=="WIDESCREEN" goto :SETSIZE

:SETCROP
set BACKDROP=
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\CROPPED\CROPPED.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
set BACKEXTN=png
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a

:SETSIZE
if "%REINIT%"=="1" goto :emstinstall
if exist "%EMS%\%EMST%.exe" goto :emstconfig
if exist "%GBE%\%EMUZ%\%EMST%\%EMST%.exe" goto :emstEmuDir
if exist "%PRGX%\%EMST%\%EMST%.exe" goto :emstDefDir

:emstinstall
"%GBC%\wbox.exe" "RJ_GUI" "^^Would you like to install/configure emulationStation?^" "Install;Locate;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :install_emuSt
if %ERRORLEVEL%==2 goto :LOCATE
if %ERRORLEVEL%==3 goto :exitemulationStation

:escancel
SET escancel=1
goto :emstconfig

:inst_emuSt
set escancel=
if exist "%GBE%\%EMUZ%\%EMST%\%EMST%.exe" goto :emstEmuDir
if exist "%PRGX%\%EMST%\%EMST%.exe" goto :emstDefDir
if "%EMS%"=="[EMS]" goto :install_emuSt
if "%EMS%"=="" goto :locate_ems
if not exist "%EMS%\emulationStation.exe" goto :locate_ems
goto :emstconfig

:no_emulationStation
%BSTRT% "%WFINS%" "RJ_GUI" "STOP" /Stop /timeout:1
SET EMS=[EMS]
for %%a in ("%EMSE%\%EMST%.exe") do set EMSFP=%%~a
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
:not_installed
"%GBC%\wbox.exe" "RJ_GUI" "^^emulationStation was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getemulationStation
if %ERRORLEVEL%==2 goto :REINIT

:REINIT
set REINIT=1
:RESET
set EMSFP=
set EMS=[EMS]
goto :INITL
:setnoes
set EMS=[EMS]
goto :escancel

:getemulationStation
if "%EMS%"=="[EMS]" goto :locate_ems
for %%A in ("%EMSFP:~0,21%") do set EMS=%%~A

:emstEmuDir
for %%A in ("%GBE%\%EMUZ%\%EMST%") do set EMS=%%~A
for %%A in ("%GBE%\%EMUZ%\%EMST%\%EMST%.exe") do set EMSFP=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :emstconfig

:emstDefDir
for %%A in ("%PRGX%\%EMST%") do set EMS=%%~A
for %%A in ("%PRGX%\%EMST%\%EMST%.exe") do set EMSFP=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :emstconfig

:checkdefaultemulationStation
if exist "%PRGX%\emulationStation\emulationStation.exe" goto :emstDefDir
goto :locate_ems


:install_emuSt
set escancel=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading emulationStation" /marquee
set urlNthL=124
set EMSTCFGURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set EMSTCFGURL=%%~a
popd

:EMSTCFGAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%EMST%" "%MIR1%/%EMSTCFGURL%" "%MIR2%/%EMSTCFGURL%" "%MIR3%/%EMSTCFGURL%" "%MIR4%/%EMSTCFGURL%" "%MIR5%/%EMSTCFGURL%"
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%EMST%\*.7z"') do set EMSTCFGXE=%%~a
if "%EMSTCFGXE%"=="" goto :no_emulationStation
for /f "delims=" %%a in ('dir /b/a-d-h "%EMSTCFGXE%"') do set EMSTCFGFILE=%%~nxa
%BSTRT% "%WFINS%" "RJ_GUI" "emulationStation Downloaded" /Stop /timeout:1

:continue_emulationStation
set _emstmp=
for /f "delims=" %%a in ('Wfolder.exe "SET _emstmp=" "%GBE%\%EMUZ%" "Install emulationStation to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
if "%_emstmp%"=="" goto :no_emulationStation
set emsdrv-ltr=%_emstmp:*:=%
for %%A in ("%_emstmp:~0,2%\") do set EMSTDIR=%%~A
for %%A in ("%ESDIR%") do set EMSTDIR=%%~A
if "%_emstmp%"=="" goto :no_emulationStation
goto :emsdrvltr

:LOCATE
set _emstmp=
for /f "delims=" %%a in ('Wfolder.exe "SET _emstmp=" "%GBE%\%EMUZ%" "Select an existing installation" /noquote') do %%a
if "%_emstmp%"=="" goto :no_emulationStation
set emsdrv-ltr=%_emstmp:*:=%
for %%A in ("%_emstmp:~0,2%\") do set EMSTDIR=%%~A
for %%A in ("%ESDIR%") do set EMSTDIR=%%~A
if "%_emstmp%"=="" goto :no_emulationStation
goto :emstst

:emstst
set EMSFP=
set EMS=[EMS]
for %%A in ("%_emstmp%") do set EMSE=%%~A
if "%emsdrv-ltr%"=="\" do set EMSE=%_emstmp:~0,2%
for %%A in ("%EMSE%\%EMST%.exe") do set EMSFP=%%~A
if not exist "%EMSFP%" goto :not_installed
for %%A in ("%EMSE%\%EMST%") do set EMS=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :emstconfig



:emsdrvltr
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing emulationStation" /marquee
for %%A in ("%_emstmp%") do set EMSE=%%~A
if "%emsdrv-ltr%"=="\" do set EMSE=%_emstmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%EMST%\%EMSTCFGFILE%" -o"%EMSE%\%EMST%"
for %%A in ("%EMSE%\%EMST%\%EMST%.exe") do set EMSFP=%%~A
for %%A in ("%EMSE%\%EMST%") do set EMS=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"

:emulationStation_confirm
%BSTRT% "%WFINS%" "RJ_GUI" "emulationStation is now installed" /Stop /timeout:1
goto :emstconfig

:locate_ems
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the emulationStation application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectems)
goto :selectems

:selectems
for /f "delims=" %%a in ('Wfile.exe "SET EMS=" "%PRGX%\%EMST%\*.exe" "Where is the emulationStation application?" /noquote') do %%a
if "%EMS%"=="[EMS]" goto :inst_emuSt
if "%EMS%"=="" goto :inst_emuSt

:emstconfig
set BUSYPROT=
set HSLIB=
set ROMLIB=
"%GBC%\wbox.exe" "RJ_GUI" "[re/install]^re/install, re/locate emulationStation^^[Add]^Add systems to your emulationStation configuration^^[Theme]^Create themes for your emulationStation systems^Import and export artwork to and from your emulationStation installation and RoM-Jackets/Hyperspin installation" "re/install;Add;Theme;Quit" /DB=1
if %errorlevel%==1 goto :REINIT
if %errorlevel%==2 goto :ADDSYS
if %errorlevel%==3 goto :SETTHEME
if %errorlevel%==4 goto :QUITOUT
goto :QUITOUT

:SETTHEME
"%GBC%\wbox.exe" "RJ_GUI" "^[Create]^Create themes for emulationStation systems.^^[Import]^Migrate boxart from your existing RoM-Jacket/Hyperspin Libraries to emulationStation^^[Export]^Transfer boxart from your emulationStation libraries to your existing RoM-Jacket/Hyperspin Libraries" "Create;Import;Export" /DB=1
if %errorlevel%==1 goto :THEMEUP
if %errorlevel%==1 goto :MIGRATE
if %errorlevel%==2 goto :EXPORT
goto :QUITOUT


:THEMEUP
call "%GBC%\copyescfg.bat">>"%GBC%\logs\copyescfg.log"
goto :emstconfig

:EXPORT
set /a ARCP=1
set BUSYPROT=Exporting
goto :TRANS
:MIGRATE
set /a ARCP=0
set BUSYPROT=Importing
goto :TRANS
:TRANS
"%GBC%\wbox.exe" "RJ_GUI" "Select a library to transfer %DIREC%" "RoM-Jacket;Hyperspin;Both" /DB=1
if %errorlevel%==1 goto :ROMLIB
if %errorlevel%==2 goto :HSLIB
if %errorlevel%==2 goto :BOTH
goto :QUITOUT

:GETSYS
%BSTRT% "%WBUSY%" "RJ_GUI" "%BUSYPROT% your libraries." /marquee
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CONSESPTH=%GBG%\%GAM%\%CONS%\%%~a
set CSTCONS=%%~a
set CONSES=%%~a
CALL :ESCA
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b

:ESCA
for %%a in ("%CSTCONS:~0,1%") do set ESCATMP=%%~a
if "%ESCATMP%"==":" exit /b
if "%ESCATMP%"=="-" exit /b
set ESRMP=
call "%GBC%\esremap.bat">>"%GBC%\logs\esremap.log"
set RMFN=
if exist "%EMS%\.%EMST%\downloaded_images" set RMFN=1
if "%RMFN%"=="" for %%a in ("downloadedimages\%ESRMP%") do set ORIGMP=%%~a
if "%RMFN%"=="1" for %%a in ("downloaded_images\%CSTCONS%") do set ORIGMP=%%~a

for /f "delims=" %%a in  ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
mkdir "%EMS%\.%EMST%\%ORIGMP%"
if "%HSLIB%"=="1" copy /y "%HYP%\media\%CSTCONS%\images\%ARTFLDR%\%%~a.png" "%EMS%\.%EMST%\%ORIGMP%\%%~a-image.png"
if "%ROMLIB%"=="1" copy /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\Folder.jpg" "%EMS%\.%EMST%\%ORIGMP%\%%~a-image.jpg"
if "%HSLIB%"=="2" copy /y "%EMS%\.%EMST%\%ORIGMP%\%%~a-image.jpg" "%HYP%\media\%CSTCONS%\images\%ARTFLDR%\%%~a.png"
if "%ROMLIB%"=="2" copy /y "%EMS%\.%EMST%\%ORIGMP%\%%~a-image.jpg" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%%~a\Folder.jpg"
)
exit /b

:ART1
set ARTFLDR=Artwork1
goto :%ARBRET%
exit /b
:ART2
set ARTFLDR=Artwork2
goto :%ARBRET%
exit /b
:ART3
set ARTFLDR=Artwork3
goto :%ARBRET%
exit /b
:ART4
set ARTFLDR=Artwork4
goto :%ARBRET%
exit /b

:BOTH
call :SANITIZE
set /a HSLIB=1+%ARCP%
set /a ROMLIB=1+%ARCP%
set ARBRET=BOTH
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
call :ARTADD
call :GETSYS
goto :emstconfig

:ROMLIB
call :SANITIZE
set /a ROMLIB=1+%ARCP%
del /q "%GBC%\list.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
REM call "%GBC%\fesysadd.bat">>"%GBC%\logs\fesysadd.log"
call :GETSYS
goto :emstconfig

:HSLIB
call :SANITIZE
if "%HPN%"=="[HPN]" goto :NOHS
if "%HPN%"=="" goto :NOHS
set ARBRET=HSRESUME
set /a HSLIB=1+%ARCP%
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT

:ARTADD
"%GBC%\wbox.exe" "RJ_GUI" "Select an art-folder containing boxart" "Artwork1;Artwork2;Artwork3;Artwork4" /DB=3
if %errorlevel%==1 goto :ART1
if %errorlevel%==2 goto :ART2
if %errorlevel%==3 goto :ART3
if %errorlevel%==4 goto :ART4
goto :QUITOUT
:HSRESUME
call :GETSYS
goto :emstconfig

:SANITIZE
pushd "%EMSROMS%"
%BSTRT% "%WBUSY%" "RJ_GUI" Sanitizing Database" /marquee
for /f "delims=" %%a in ('dir /b/ad') do (
pushd "%%~a"
set NDO=%%~a
call :INDIR
rd /q "%%~a"
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Sanitized" /stop /timeout:1
popd
exit /b
:INDIR
for /f "delims=" %%a in ('dir /b/ad') do rd /q "%%~a"
popd
exit /b

:ADDSYS
CALL "%GBC%\esAdd.bat">>"%GBC%\logs\esadd.log"
goto :emstconfig
:exitemulationStation
:QUITOUT
