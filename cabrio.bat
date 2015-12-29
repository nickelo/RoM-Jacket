SET cbcancel=
if exist "%CBR%\%CABR%.exe" goto :cabconfig
if exist "%GBE%\%EMUZ%\%CABR%\%CABR%.exe" goto :cabEmuDir
if exist "%PRGX%\%CABR%\%CABR%.exe" goto :cabDefDir

:cabinstall
"%GBC%\wbox.exe" "RJ_GUI" "^^Would you like to install/configure Cabrio-FE?^" "Install;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :install_Cabr
if %ERRORLEVEL%==1 goto :cbcancel

:cbcancel
SET cbcancel=1
goto :cabconfig


:inst_Cabr
set cbcancel=
if exist "%GBE%\%EMUZ%\%CABR%\%CABR%.exe" goto :cabEmuDir
if exist "%PRGX%\%CABR%\%CABR%.exe" goto :cabDefDir
if "%CBR%"=="[CBR]" goto :install_Cabr
if "%CBR%"=="" goto :locate_cbr
if not exist "%CBR%\cabrio.exe" goto :locate_cbr
goto :cabconfig

:no_Cabrio
%BSTRT% "%WFINS%" "RJ_GUI" "STOP" /Stop /timeout:1
SET CBR=[CBR]
for %%a in ("%CBE%\%CABR%.exe") do set CABRIOFE=%%~a
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
:not_installed
"%GBC%\wbox.exe" "RJ_GUI" "^^Cabrio was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getCabrio
if %ERRORLEVEL%==2 goto :setnoCab
goto :quitout

:setnoCab
set CBR=[CBR]
goto :cbcancel

:getCabrio
if "%CBR%"=="[CBR]" goto :locate_cbr
for %%A in ("%CABRIOFE:~0,11%") do set CBR=%%~A

:cabEmuDir
for %%A in ("%GBE%\%EMUZ%\%CABR%") do set CBR=%%~A
for %%A in ("%GBE%\%EMUZ%\%CABR%\%CABR%.exe") do set CABRIOFE=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :cabconfig

:cabDefDir
for %%A in ("%PRGX%\%CABR%") do set CBR=%%~A
for %%A in ("%PRGX%\%CABR%\%CABR%.exe") do set CABRIOFE=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :cabconfig

:checkdefaultCabrio
if exist "%PRGX%\Cabrio\Cabrio.exe" goto :cabDefDir
goto :locate_cbr


:install_Cabr
set cbcancel=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Cabrio-FE" /marquee

set urlNthL=80
set CABCFGURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set CABCFGURL=%%~a
popd

:CABCFGAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%CABR%" "%MIR1%/%CABCFGURL%" "%MIR2%/%CABCFGURL%" "%MIR3%/%CABCFGURL%" "%MIR4%/%CABCFGURL%" "%MIR5%/%CABCFGURL%"
for /f "delims=" %%A in ('dir /b/a-d/s "%GBC%\net\%CABR%\*.zip"') do set CABCFGXE=%%~A
if "%CABCFGXE%"=="" goto :no_Cabrio
for /f "delims=" %%a in ('dir /b/a-d-h "%CABCFGXE%"') do set CABCFGFILE=%%~nxa
%BSTRT% "%WFINS%" "RJ_GUI" "Cabrio-FE Downloaded" /Stop /timeout:1

:continue_Cabrio
for /f "delims=" %%a in ('Wfolder.exe "SET _cbrtmp=" "%GBE%\%EMUZ%" "Install Cabrio to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set cbrdrv-ltr=%_cbrtmp:*:=%
for %%A in ("%_cbrtmp:~0,2%\") do set CABDIR=%%~A
for %%A in ("%CABDIR%") do set CABDIR=%%~A
if "%_cbrtmp%"=="" goto :no_Cabrio
goto :cbrdrvltr

:cbrdrvltr
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Cabrio-FE" /marquee
for %%A in ("%_cbrtmp%") do set CBE=%%~A
if "%cbrdrv-ltr%"=="\" do set CBE=%_cbrtmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%CABR%\%CABCFGFILE%" -o"%CBE%"
for /f "delims=" %%a in ('dir /b /ad-h "%CBE%\%CABR%*"') do set CABRTMPDIR=%%~a
move /Y "%CBE%\%CABRTMPDIR%" "%CBE%\%CABR%"
for %%A in ("%CBE%\%CABR%\%CABR%.exe") do set CABRIOFE=%%~A
for %%A in ("%CBE%\%CABR%") do set CBR=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"

:cabrio_confirm
%BSTRT% "%WFINS%" "RJ_GUI" "Cabrio-FE is now installed" /Stop /timeout:1
goto :cabconfig

:locate_cbr
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the cabrio application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectcbr)
goto :selectcbr

:selectcbr
for /f "delims=" %%a in ('Wfile.exe "SET CBR=" "%PRGX%\%CABR%\*.exe" "Where is the Cabrio application?" /noquote') do %%a
if "%CBR%"=="[CBR]" goto :inst_Cabr
if "%CABRIOFE%"=="" goto :inst_Cabr

:cabconfig
CALL "%GBC%\cbAdd.bat">>"%GBC%\logs\cbadd.log"
:exitcabrio
