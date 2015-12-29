:ANTMICAPP 
SET amcappancel=
if exist "%IPP%\%AMICRO%.exe" goto :amcconfig
if exist "%GBE%\%EMUZ%\%AMICRO%\%AMICRO%.exe" goto :amcEmuDir
if exist "%PRGX%\%AMICRO%\%AMICRO%.exe" goto :amcDefDir
if "%INITAL%"=="1" goto :inst_AMCRO
:amcinstall
"%GBC%\wbox.exe" "RJ_GUI" "^^Would you like to install/configure antiMicro?^" "Install;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :locate_amcapp
if %ERRORLEVEL%==2 goto :amcappancel

:amcappancel
SET amcappancel=1
goto :exitantimicro

:inst_AMCRO
set amcappancel=
if exist "%GBE%\%EMUZ%\%AMICRO%\%AMICRO%.exe" goto :amcEmuDir
if exist "%PRGX%\%AMICRO%\%AMICRO%.exe" goto :amcDefDir
if "%IPP%"=="[IPP]" goto :install_AMCRO
if "%IPP%"=="" goto :locate_amcapp
if not exist "%IPP%\antimicro.exe" goto :locate_amcapp
goto :amcconfig

:no_antimicro
%BSTRT% "%WFINS%" "RJ_GUI" "STOP" /Stop /timeout:1
SET IPP=[IPP]
set ANTMIC=[AMC]
set JOYVAL=
call "%GBC%\setlocset.bat"
:not_installed
"%GBC%\wbox.exe" "RJ_GUI" "^^antimicro was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getantimicro
if %ERRORLEVEL%==2 goto :setnoAmc
goto :quitout

:setnoAmc
set IPP=[IPP]
set JOYVAL=
set ANTMIC=DISABLED
goto :amcappancel

:getantimicro
if "%IPP%"=="[IPP]" goto :locate_amcapp
if "%ANTMIC%"=="[AMC]" goto :locate_amcapp
for %%A in ("%ANTMIC:~0,14%") do set IPP=%%~A

:amcEmuDir
for %%A in ("%GBE%\%EMUZ%\%AMICRO%") do set IPP=%%~A
for %%A in ("%GBE%\%EMUZ%\%AMICRO%\%AMICRO%.exe") do set ANTMIC=%%~A
for %%A in ("%GBE%\%EMUZ%\%AMICRO%") do set IPP=%%~A
call "%GBC%\setlocset.bat"
goto :amcconfig

:amcDefDir
for %%A in ("%PRGX%\%AMICRO%") do set IPP=%%~A
for %%A in ("%PRGX%\%AMICRO%\%AMICRO%.exe") do set ANTMIC=%%~A
for %%A in ("%PRGX%\%AMICRO%") do set IPP=%%~A
call "%GBC%\setlocset.bat"
goto :amcconfig

:checkdefaultantimicro
if exist "%PRGX%\antiMicro\antiMicro.exe" goto :amcDefDir
goto :locate_amcapp


:setANTMV
:install_AMCRO
set amcappancel=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading antimicro" /marquee
set urlNthL=52
set AMCPFGURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set AMCPFGURL=%%~a
popd

:AMCPFGAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%AMICRO%" "%MIR1%/%AMCPFGURL%" "%MIR2%/%AMCPFGURL%" "%MIR3%/%AMCPFGURL%" "%MIR4%/%AMCPFGURL%" "%MIR5%/%AMCPFGURL%"
for %%A in ("%GBC%\net\%AMICRO%\%AMICRO%-%ARPOP%.7z") do set AMCPFGXE=%%~A
if not exist "%AMCPFGXE%" goto :no_antimicro
for /f "delims=" %%a in ('dir /b/a-d-h "%AMCPFGXE%"') do set AMCPFGFILE=%%~nxa
%BSTRT% "%WFINS%" "RJ_GUI" "antimicro Downloaded" /Stop /timeout:1
:continue_antimicro
for /f "delims=" %%a in ('Wfolder.exe "SET _amcapptmp=" "%GBE%\%EMUZ%" "Install antimicro to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set amcappdrv-ltr=%_amcapptmp:*:=%
for %%A in ("%_amcapptmp:~0,2%\") do set IPPDIR=%%~A
for %%A in ("is now %IPPDIR%") do set IPPDIR=%%~A
if "%_amcapptmp%"=="" goto :no_antimicro
goto :amcappdrvltr

:amcappdrvltr
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing antimicro" /marquee
for %%A in ("%_amcapptmp%") do set IPL=%%~A
if "%amcappdrv-ltr%"=="\" do set IPL=%_amcapptmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%AMICRO%\%AMCPFGFILE%" -o"%IPL%"
for /f "delims=" %%a in ('dir /b /ad-h "%IPL%\%AMICRO%*"') do set AMCROTMPDIR=%%~a
move /Y "%IPL%\%AMCROTMPDIR%" "%IPL%\%AMICRO%"
for %%A in ("%IPL%\%AMICRO%\%AMICRO%.exe") do set ANTMIC=%%~A
for %%A in ("%IPL%\%AMICRO%") do set IPP=%%~A
for %%A in ("%IPL%\%AMICRO%\%AMICRO%.exe") do set ANTMIC=%%~f
call "%GBC%\setlocset.bat"

:antimicro_confirm
%BSTRT% "%WFINS%" "RJ_GUI" "antimicro is now installed" /Stop /timeout:1
exit /b

:locate_amcapp
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the antimicro application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectamcapp)
goto :selectamcapp

:selectamcapp
set ANTMIC=
set IPP=
for /f "delims=" %%a in ('Wfile.exe "SET ANTMIC=" "%GBE%\%EMUZ%\%AMICRO%\an*.exe" "Where is the antimicro application?" /noquote') do %%a
if "%ANTMIC%"=="" goto :setANTMV
for /f "delims=" %%a in ("%ANTMIC%") do (
set ABE=%%~dpa
)
for %%a in ("%ANTMIC:~0,-14%") do set IPP=%%~a
if "%IPP%"=="" goto :setANTMV
goto :setup_continue

:amcconfig
"%GBC%\wbox.exe" "RJ_GUI" "^^antiMicro has been detected.^^ Would you like to download and [install] it to another location?^[Use] the detected installation^" "Install;Use" /DB=2
if %ERRORLEVEL%==1 goto :reinstall
if %ERRORLEVEL%==2 goto :selectamcapp
goto :EOF

:reinstall 
set IPP=[IPP]
goto :install_AMCRO

:exitantimicro
