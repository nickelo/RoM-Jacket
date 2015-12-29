:XPADDERAPP 
SET xpdappancel=
if exist "%XPP%\%XPADR%.exe" goto :xppconfig
if exist "%GBE%\%EMUZ%\%XPADR%\%XPADR%.exe" goto :xppEmuDir
if exist "%PRGX%\%XPADR%\%XPADR%.exe" goto :xppDefDir
if "%INITAL%"=="1" goto :inst_XPADR

:xppinstall
"%GBC%\wbox.exe" "RJ_GUI" "^^Would you like to install/configure Xpadder?^" "Install;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :locate_xpdapp
if %ERRORLEVEL%==2 goto :xpdappancel

:xpdappancel
SET xpdappancel=1
goto :exitxpadder

:inst_XPADR
set xpdappancel=
if exist "%GBE%\%EMUZ%\%XPADR%\%XPADR%.exe" goto :xppEmuDir
if exist "%PRGX%\%XPADR%\%XPADR%.exe" goto :xppDefDir
if "%XPP%"=="[XPP]" goto :install_XPADR
if "%XPP%"=="" goto :locate_xpdapp
if not exist "%XPP%\xpadder.exe" goto :locate_xpdapp
goto :xppconfig

:no_xpadder
%BSTRT% "%WFINS%" "RJ_GUI" "STOP" /Stop /timeout:1
set JOYVAL=
SET XPD=[XPD]
SET XPP=[XPP]
set XPADDER=%XPL%\%XPADR%.exe
call "%GBC%\setlocset.bat"
:not_installed
"%GBC%\wbox.exe" "RJ_GUI" "^^xpadder was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getxpadder
if %ERRORLEVEL%==2 goto :setnoXpd
goto :quitout

:setnoXpd
set JOYVAL=
set XPADDER=DISABLED
set XPD=[XPD]
set XPP=[XPP]
goto :xpdappancel

:getxpadder
if "%XPP%"=="[XPP]" goto :locate_xpdapp
if "%XPADDER%"=="[XPD]" goto :locate_xpdapp
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A

:xppEmuDir
for %%A in ("%GBE%\%EMUZ%\%XPADR%") do set XPP=%%~A
for %%A in ("%GBE%\%EMUZ%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
for %%A in ("%GBE%\%EMUZ%\%XPADR%") do set XPP=%%~A
call "%GBC%\setlocset.bat"
goto :xppconfig

:xppDefDir
for %%A in ("%PRGX%\%XPADR%") do set XPP=%%~A
for %%A in ("%PRGX%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
for %%A in ("%PRGX%\%XPADR%") do set XPP=%%~A
call "%GBC%\setlocset.bat"
goto :xppconfig

:checkdefaultxpadder
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xppDefDir
goto :locate_xpdapp


:setXPDRV
:install_XPADR
set xpdappancel=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading xpadder" /marquee
set urlNthL=102
set XPDPFGURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set XPDPFGURL=%%~a
popd

:XPDPFGAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XPADR%" "%MIR1%/%XPDPFGURL%" "%MIR2%/%XPDPFGURL%" "%MIR3%/%XPDPFGURL%" "%MIR4%/%XPDPFGURL%" "%MIR5%/%XPDPFGURL%"
for %%A in ("%GBC%\net\%XPADR%\%XPADR%.7z") do set XPDPFGXE=%%~A
if not exist "%XPDPFGXE%" goto :no_xpadder
for /f "delims=" %%a in ('dir /b/a-d-h "%XPDPFGXE%"') do set XPDPFGFILE=%%~nxa
%BSTRT% "%WFINS%" "RJ_GUI" "XPadder Downloaded" /Stop /timeout:1
:continue_xpadder
for /f "delims=" %%a in ('Wfolder.exe "SET _xpdapptmp=" "%GBE%\%EMUZ%" "Install xpadder to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set xpdappdrv-ltr=%_xpdapptmp:*:=%
for %%A in ("%_xpdapptmp:~0,2%\") do set XPPDIR=%%~A
for %%A in ("is now %XPPDIR%") do set XPPDIR=%%~A
if "%_xpdapptmp%"=="" goto :no_xpadder
goto :xpdappdrvltr

:xpdappdrvltr
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing xpadder" /marquee
for %%A in ("%_xpdapptmp%") do set XPL=%%~A
if "%xpdappdrv-ltr%"=="\" do set XPL=%_xpdapptmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%XPADR%\%XPDPFGFILE%" -o"%XPL%"
for /f "delims=" %%a in ('dir /b /ad-h "%XPL%\%XPADR%*"') do set XPADRTMPDIR=%%~a
move /Y "%XPL%\%XPADRTMPDIR%" "%XPL%\%XPADR%"
for %%A in ("%XPL%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
for %%A in ("%XPL%\%XPADR%") do set XPP=%%~A
for %%A in ("%XPL%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~f
call "%GBC%\setlocset.bat"
if "%WINVER%" NEQ "XP" reg.exe Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%XPADDER%" /d "WINXPSP3" /f
if "%WINVER%" NEQ "XP" reg.exe Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%XPADDER%" /d "WINXPSP3" /f

:xpadder_confirm
%BSTRT% "%WFINS%" "RJ_GUI" "xpadder is now installed" /Stop /timeout:1
exit /b

:locate_xpdapp
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the xpadder application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectxpdapp)
goto :selectxpdapp

:selectxpdapp
set XPADDER=
set XPP=
for /f "delims=" %%a in ('Wfile.exe "SET XPADDER=" "%GBE%\%EMUZ%\%XPADR%\Xp*.exe" "Where is the xpadder application?" /noquote') do %%a
if "%XPADDER%"=="" goto :setXPDRV
for /f "delims=" %%a in ("%XPADDER%") do (
set XBE=%%~dpa
)
for %%a in ("%XPADDER:~0,-12%") do set XPP=%%~a
if "%XPP%"=="" goto :setXPDRV
goto :setup_continue

:xppconfig
"%GBC%\wbox.exe" "RJ_GUI" "^^Xpadder has been detected.^^ Would you like to download and [install] it to another location?^[Use] the detected installation^" "Install;Use" /DB=2
if %ERRORLEVEL%==1 goto :reinstall
if %ERRORLEVEL%==2 goto :selectxpdapp
goto :EOF

:reinstall 
set JOYVAL=
set XPADDER=DISABLED
set XPP=[XPD]
set XPP=[XPP]
goto :install_XPADR

:exitxpadder
