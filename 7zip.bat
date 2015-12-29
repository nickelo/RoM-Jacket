CHCP 1252
setlocal disableDelayedExpansion
set QUITOUT=
set FRUN=
echo %date%>t.tmp
for /f "tokens=1,2,3 delims=/" %%a in ('type t.tmp') do (
set MONTH=%%~a
set DAY=%%~b
set YEAR=%%~c
)
del /q t.tmp
if exist "Z:\bin\sh" call :DCHK
if not exist "Z:\bin\sh" for /f "tokens=1,2 delims= " %%a in ('echo %MONTH%') do set MONTH=%%~b
:SETRA
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do SET GBC=%%~A
if not exist "%GBC%\LCL.ini" goto :RESET
if not exist "%GBC%\ARC.ini" goto :RESET
goto :OPEN
:SETARC
copy /y "%GBC%\RAind.set" "%GBC%\ARC.ini"
"wbox.exe" "SETBIT" "Set your architecture type" "32;64" /db=2
if %errorlevel%==1 goto :32
if %errorlevel%==2 goto :64
goto :64

:DCHK
if %MONTH% LEQ 9 set MNTHTMP=0%MONTH%
set MONTH=%MNTHTMP%
exit /b

:64
"%GBC%\fart.exe" "ARC.ini" [BIT] "win-x86_64"
goto :INIT

:32
set BIT=32
"%GBC%\fart.exe" "ARC.ini" [BIT] "win-x86"
goto :INIT

:OPEN
"wbox.exe" "RESET" "Reset your Retroarch cores folder?" "Continue;RESET" /db=1
if %ERRORLEVEL%==1 goto :INIT
if %ERRORLEVEL%==2 goto :RESET
goto :INIT

:RESET
del /q "%GBC%\ARC.ini"
del /q "%GBC%\LCL.ini"
set FRUN=1
goto :SETARC

:INIT
for /f "delims=" %%a in ('type "%GBC%\LCL.ini"') do set RADIRECT=%%~a
for %%a in ("%GBC%\7za.exe") do set SEVENZIP=%%~a
pushd "%GBC%"
if exist "Z:\bin\sh" goto :NIX
set WSTRT=start /w ""
set BSTRT=start ""
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
if "%FRUN%"=="1" goto :DIRCOREGET
goto :UPDATERA
:NIX
set WSTRT=start /w
set BSTRT=start
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
if "%FRUN%"=="1" goto :DIRCOREGET
goto :UPDATERA

:DIRCOREGET
set REDIFC=
for /f "delims=" %%a in ('Wfolder.exe "SET RADIRECT=" "" "Select Retroarch cores folder" /noquote') do %%a
if "%RADIRECT%"=="" goto :QUITOUT
for %%a in ("%RADIRECT%") do echo.%%~a>"%GBC%\LCL.ini"
:UPDATERA
for /f "delims=" %%a in ('type "%GBC%\ARC.ini"') do set RAMIR=%%~a
echo.-------->"%GBC%\corelist.ini"
echo.Update Program>>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
echo.Update All>>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
for /f "tokens=1 delims=." %%a in ('dir /b/a-d "%RADIRECT%\*libretro.dll"') do (
set CORENAME=%%~a
call :ECKO
)
copy /y "%GBC%\corelist.ini" "%GBC%\coreupdt.ini"
copy /y "%GBC%\corelist.set" "%GBC%\coreget.ini"
for /f "delims=" %%a in ('type "%GBC%\corelist.ini"') do "%GBC%\fart.exe" "%GBC%\coreget.ini" "%%~a" --remove
echo.-------->>"%GBC%\corelist.ini"
echo.Available Cores>>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
echo.Download All>>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
goto :SELECT

:ECKO
echo.%CORENAME%>>"%GBC%\corelist.ini"
exit /b

:ECHOALL
echo.%CORENAME%>>"%GBC%\corelist.ini"
exit /b

:SELECT
for /f "delims=" %%a in ('type "%GBC%\coreget.ini"') do (
set CORENAME=%%~a
call :ECHOALL
)

set CORENAME=
:SELCORE
set RAUPDT=
"%GBC%\wselect.exe" "%GBC%\corelist.ini" "Select a Core" "set CORENAME=$item" > "%GBC%\corelist.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\corelist.cmd"
if "%CORENAME%"=="" goto :QUITOUT
if "%CORENAME%"=="" goto :UPDATERA
if "%CORENAME%"=="--------" goto :SELCORE
if "%CORENAME%"=="Update Program" goto :UPDTPRG
if "%CORENAME%"=="Available Cores" goto :SELCORE
if "%CORENAME%"=="Update All" goto :UPDTALL
if "%CORENAME%"=="Download All" goto :DWNALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading %CORENAME%" /marquee
%WSTRT% "%WGET%" -c -N --waitretry=3 --tries=3 "%RAMIR%/%CORENAME%.dll.zip" -P "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing %CORENAME%" /marquee
if exist "%GBC%\%CORENAME%.dll.zip" "%SEVENZIP%" e -y "%GBC%\%CORENAME%.dll.zip" -o"%RADIRECT%"
"%GBC%\fart.exe" "%GBC%\corelist.ini" "%CORENAME%" --remove
if "%RAUPDT%"=="1" exit /b
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :SELCORE

:DWNALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading and installing all cores" /marquee
set RAUPDT=1
for /f "delims=" %%a in ('type "%GBC%\corelist.ini"') do (
set CORENAME=%%~a
call :GETCORE
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :QUITOUT

:UPDTPRG
for /f "delims=" %%a in ("%RADIRECT:~0,-6%") do set RAEXELOC=%%~a
if not exist "%RAEXELOC%\retroarch.exe" call :GETRADIR
if "%QUITOUT%"=="1" exit /b
for /f "tokens=1,2,3,4 delims=/" %%a in ("%RAMIR%") do set RAMLOC=%%~a//%%~b/%%~c/%%~d
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading retroArch" /marquee
%WSTRT% "%WGET%" -c -N --waitretry=3 --tries=3 "%RAMLOC%/%YEAR%-%MONTH%-%DAY%_RetroArch.7z" -P "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting retroArch" /marquee
if exist "%GBC%\%YEAR%-%MONTH%-%DAY%_RetroArch.7z" "%SEVENZIP%" x -y "%GBC%\%YEAR%-%MONTH%-%DAY%_RetroArch.7z" -o"%RAEXELOC%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :DIRCOREGET
if "%REDIFC%"=="1" call :CRECHK
if "%REDIFC%"=="1" goto :DIRCOREGET
goto :UPDATERA

:CRECHK
if "%RAEXELOC%\cores"=="%RADIRECT%" set REDIFC=
exit /b

:GETRADIR
set REDIFC=1
for /f "delims=" %%a in ('Wfolder.exe "SET RAEXELOC=" "" "Select Retroarch application location" /noquote') do %%a
if "%RAEXELOC%"=="" goto :QUITOUT
for /f "delims=" %%a in ("%RAEXELOC%") do if /i "%%~nxa" NEQ "retroArch" set RXF=1
if "%RXF%"=="1" for /f "%delims=" %%a in ("%RAEXELOC%\retroArch") do set RAEXELOC=%%~a
exit /b

:UPDTALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Updating all cores" /marquee
set RAUPDT=1
for /f "delims=" %%a in ('type "%GBC%\coreupdt.ini"') do (
set CORENAME=%%~a
call :GETCORE
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /tim	eout:1
goto :QUITOUT

:GETCORE
if "%CORENAME%"=="--------" exit /b
if "%CORENAME%"=="Available Cores" exit /b
if "%CORENAME%"=="Download All" exit /b
if "%CORENAME%"=="Update All" exit /b
%WSTRT% "%WGET%" -c -N --waitretry=3 --tries=3 "%RAMIR%/%CORENAME%.dll.zip" -P "%GBC%"
if exist "%GBC%\%CORENAME%.dll.zip" "%SEVENZIP%" e -y "%GBC%\%CORENAME%.dll.zip" -o"%RADIRECT%"
"%GBC%\fart.exe" "%GBC%\corelist.ini" "%CORENAME%" --remove
if "%RAUPDT%"=="1" exit /b
goto :SELCORE
:QUITOUT
set QUITOUT=1
"%GBC%\wbox.exe" "QUIT" "Quit the tool?"  "Quit;Restart" /db=1
if %errorlevel%==1 exit /b
if %errorlevel%==2 goto :SETRA