:BEGINEMUST
"%GBC%\wbox.exe" "RJ_GUI" "###########^CONFIG TYPE^###########^^[BATCH]^Batch files from your RoM-Jacket consoles are used.^^[MIRROR]^Shortcuts from a selected mirror location are used." "Batch;Mirror" /DB=1
if %errorlevel%==1 goto :BATCH
if %errorlevel%==2 goto :MIRROR
goto :QUITOUT

:BATCH
set EMSEXT=.bat
for /f "delims=" %%a in ("%GBG%\%GAM%\%CONS%") do set EMSROMS=%%~a
goto :SETUP

:MIRROR
set EMSEXT=.lnk
"%GBC%\wbox.exe" "RJ_GUI" "Select the location of mirrors to use with emulationStation" "OKAY" /DB=1 /TM=2
if %errorlevel%==1 goto :SELMIR
goto :SELMIR

:SELMIR
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET EMSROMS=" "%GBG%\%GAM%" "Select Mirror directory" /noquote') do %%a
if "%EMSROMS%"=="" goto :esout
popd
goto :SETUP

:SETUP
if "%escancel%"=="1" goto :esout
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%EMSROMS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :esout
if "%escancel%"=="1" goto :cbout
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuring emulationStation" /marquee
CALL "%GBC%\esAddAll.bat">>"%GBC%\logs\esAddAll.log"
type "%GBC%\net\%EMST%\config.end.set">>"%GBC%\net\%EMST%\config.xml"
%BSTRT% "%WFINS%" "RJ_GUI" "emulationStation Configured" /Stop /timeout:1
:esout
exit /b
