:RESASK
:ESTHEME
goto :installTheme
:NOBAN
"%GBC%\wbox.exe" "RJ_GUI" "Logos have not been downloaded." "Download;Skip" /DB=1 /TM=2
if %errorlevel%==1 goto :BANDOWN
if %errorlevel%==1 goto :BNDN
goto :BNDN
:BANDOWN
call "%GBC%\getBanners.bat">>"%GBC%\logs\getBanners.log"
goto :BNDN
:NOBCK
"%GBC%\wbox.exe" "RJ_GUI" "Backdrops have not been downloaded." "Download;Skip" /DB=1 /TM=2
if %errorlevel%==1 goto :BCKDOWN
if %errorlevel%==1 goto :BNDN
goto :BNDN
:BCKDOWN
call "%GBC%\getImages.bat">>"%GBC%\logs\getImages.log"
goto :BKDN

:installTheme
if not exist "%GBC%\net\%BANN%\%BANN%.zip" goto :NOBAN
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
:BNDN
if not exist "%BACKDROP%" goto :NOBCK
"%SEVENZIP%" x -y "%BACKDROP%" -o"%BACKDEST%"
:BKDN
"%GBC%\wbox.exe" "RJ_GUI" "Select emulationStation systems to create themes for" "OKAY" /DB=1 /TM=2
if %errorlevel%==1 goto :SELTHEME
goto :SELTHEME

:CREARB
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%EMSROMS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
goto :MKALL
:SELTHEME
if not exist "%GBC%\net\%EMST%\escurrent.ini" goto :CREARB
"%GBC%\multisel.exe" "%GBC%\net\%EMST%\escurrent.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :CREARB
:MKALL
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CSTCONS=%%~a
call :COPYCON
)
%BSTRT% "%WFINS%" "RJ_GUI" "FINISHED" /Stop /timeout:1
goto :MKSC

:COPYCON
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating %CSTCONS% Theme" /marquee
pushd "%EMS%\.%EMST%\themes\romj"
if not exist "%CSTCONS%" call :MKTHEME
popd
copy /y "%GBC%\net\%BANN%\%CSTCONS%.png" "%EMS%\.%EMST%\themes\romj\%CSTCONS%\art\%CSTCONS%.png"
"%GBC%\nconvert.exe" -out png -o "%EMS%\.%EMST%\themes\romj\%CSTCONS%\art\%CSTCONS%_art.png" "%BACKDEST%\%CSTCONS%.%BACKEXTN%"
"%GBC%\nconvert.exe" -soften 100 -gauss 23 -out jpeg -o "%EMS%\.%EMST%\themes\romj\%CSTCONS%\art\%CSTCONS%_art_blur.jpg" "%BACKDEST%\%CSTCONS%1.%BACKEXTN%"
exit /b

:MKTHEME
mkdir "%CSTCONS%"
mkdir "%CSTCONS%\art"
copy /y "%GBC%\net\%EMST%\theme.set" "%EMS%\.%EMST%\themes\romj\%CSTCONS%\theme.xml"
"%GBC%\fart.exe" "%EMS%\.%EMST%\themes\romj\%CSTCONS%\theme.xml" [CONS] "%CSTCONS%"
exit /b

:notheme
:MKSC
call "%GBC%\esinput.bat">>"%GBC%\logs\esinput.log"
call "%GBC%\esoptions.bat">>"%GBC%\logs\esoptions.log"
copy /y "%GBC%\net\%EMST%\*.cfg" "%EMS%\.%EMST%"
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
if "%REALWINDOWS%"=="0" for %%a in ("%USERPROFILE%\Desktop") do set DESKTOPDIR=%%~a
"%GBC%\xxmklink.exe" "%DESKTOPDIR%\emulationStation.lnk" "%EMS%\launch_portable.bat" " " "%EMS%" emulationStation 1 "%EMS%\emulationStation.exe:0"

:esout
