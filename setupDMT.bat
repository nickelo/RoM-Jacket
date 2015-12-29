set dmtcancelled=
if "%DTLOC%"=="1" goto :locate_dt
:setup_daemT
if "%DAMVAR%"=="DISABLED" goto :COMPLETE
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" goto :DTsetPro
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" goto :DTsetDefault 
goto :locate_dt

:DTsetDefault
for %%A in ("%PRGX%\DAEMON Tools Lite\DTlite.exe") do set DAMVAR=%%~A
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :COMPLETE

:DTsetPro
for %%A in ("%PRGX%\DAEMON Tools Pro\DTAgent.exe") do set DAMVAR=%%~A
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :COMPLETE

:locate_dt
set DTLOC=1
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the daemon tools application or click download to download and install it.^^" "Locate;Download;Skip" /DB=3 /BW=150
if %ERRORLEVEL%==1 goto :selectdt
if %ERRORLEVEL%==2 goto :continue_DaemonT
if %ERRORLEVEL%==3 goto :setnoDT

:selectdt
for /f "delims=" %%a in ('Wfile.exe "SET DAMVAR=" "%PRGX%\Daemon Tools Lite\d*.exe" "Where is the DaemonTools application?" /noquote') do %%a
if "%DAMVAR%"=="[DAM]" goto :inst_daemonT
IF "%DAMVAR%"=="" goto :inst_daemonT
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :COMPLETE



if "%DAMVAR%"=="DISABLED" (set DAMTG=Enable) ELSE (set DAMTG=Disable)
"%GBC%\wbox.exe" "RJ_GUI" "would you like to %DAMTG% Daemontools?" "Install;%DAMTG%;MainMenu" /DB=2
if %ERRORLEVEL%==1 goto :locate_dt
if %ERRORLEVEL%==2 goto :%DAMTG%_daemontools
if %ERRORLEVEL%==3 goto :COMPLETE
goto :QUITOUT

:Eno_daemonT
%BSTRT% "%WFINS%" "RJ_GUI" "DaemonTools installer has not been found" /Stop /timeout:1

:no_daemonT
"%GBC%\wbox.exe" "RJ_GUI" "^^DeaemonTools will not be configured.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :setnoDT
goto :QUITOUT

:Disable_daemontools
:setnoDT
set GBT=0
set DAMVAR=DISABLED
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
if "%INITAL%"=="1" goto :COMPLETE
goto :COMPLETE

:Enable_daemontools
:setnoDT
set GBT=1
set DAMVAR=
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :setup_daemT

:continue_DaemonT
%GBD%
cd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Daemon Tools"  /marquee
CALL "%GBC%\getDaemT.bat">>"%GBC%\logs\getDaemT.log"
if "%DAEMNTFILE%"=="" goto :Eno_daemonT
goto :installing_DaemonT

:installing_DaemonT
%BSTRT% "%WFINS%" "RJ_GUI" "Downloaded" /Stop /timeout:1
for %%A in ("%GBC%\net\%DAEMNT%\*.*") do set DAEMNTXE=%%~A
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%DAEMNT%\*.7z"') do set DAEMNTSZ=%%~a
if "%DAEMNTSZ%"=="" goto :Eno_daemonT
for %%a in ("%GBC%\net\%DAEMNT%\%DAEMNTSZ%") do set DAEMNTSP=%%~a
"%SEVENZIP%" x -y "%DAEMNTSP%" -o"%GBC%\net\%DAEMNT%"
for %%A in ("%GBC%\net\%DAEMNT%\*.exe") do set DAEMNTXE=%%~A
for /f "delims=" %%a in ('dir /b "%DAEMNTXE%"') do set DAEMNTFILE=%%~nxa
"%GBC%\wbox.exe" "RJ_GUI" "^^Choose the location you wish to install Daemon Tools to.^^eg: %PRGF% ^^^Be Patient. A confirmation dialoge box will appear after Daemon Tools has been installed.^^" "Okay" /BW=245  /TM=5
if %ERRORLEVEL%==1 (goto :selectdto)

:selectdto
set _damtmp=
for /f "delims=" %%a in ('Wfolder.exe "SET _damtmp=" "%PRGX%" "Install DaemonTools to:?  eg:''%PRGX%''" /noquote') do %%a
if "%_damtmp%"=="" goto :no_daemonT

%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Daemon Tools"  /marquee
%LAUNCH% "%GBC%\net\%DAEMNT%\%DAEMNTFILE%" /S /nogadget /notoolbar /sptd /D="%_damtmp%"
for %%A in ("%_damtmp%\Daemon Tools Lite\DTLite.exe") do set DAMVAR=%%~A
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Daemon Tools has been installed to^%DAMVAR%\Daemon Tools Lite\Dlite.exe" /Stop /timeout:1
goto :COMPLETE

:inst_daemonT
if "%DAMVAR%"=="DISABLED" goto :COMPLETE
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to install daemonTools?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :no_daemonT
goto :QUITOUT

:QUITOUT
set dmtcancelled=1
:COMPLETE
