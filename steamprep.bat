:STEAMSTART
set STEAMICON=
set UNPREP=
if "%STEAMLOC%"=="[STM]" goto :STMCHK
if "%STEAMLOC%" NEQ "" goto :QUERY

:STMCHK
for %%a in ("%PRGX%\Steam") do set STEAMLOC=%%~a

if not exist "%STEAMLOC%\Steam.exe" call :STEAMLOC

if not exist "%STEAMLOC%\Steam.exe" goto :NOSTEAM

:QUERY
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to RoM-Jacket to quit Steam and backup your Steam account's shortucts?" "Yes;Locate;Quit" /DB=1
if %ERRORLEVEL%==1 goto :BACKUP
if %ERRORLEVEL%==2 goto :STEAMLOC
if %ERRORLEVEL%==3 goto :QUITOUT
goto :QUITOUT

:NOSTEAM
"%GBC%\wbox.exe" "RJ_GUI" "Steam was not found." "Locate;Okay" /TM=1
if %errorlevel%==1 goto :STEAMSTART
if %errorlevel%==2 goto :QUITOUT
goto :QUITOUT

:STEAMLOC
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET STEAMLOC=" "%EMUZ%" "Steam Folder" /noquote') do %%a
popd
if "%STEAMLOC%"=="" goto :STEAMSTART


exit /b

:BACKUP
"%GBC%\wbox.exe" "RJ_GUI" "Mirrors^^Create [Mirrors] for Steam?^[Continue] with existing mirrrors." "Mirrors;Continue" /DB=2
if %ERRORLEVEL%==1 goto :CREATEMIRRORS
if %ERRORLEVEL%==2 goto :SETUP
goto :QUITOUT

:CREATEMIRRORS
call "%GBC%\bigPicMirror.bat">>"%GBC%\logs\bigPicMirror.log"

:SETUP
if "%LOCMIR%"=="" set LOCMIR=SteamMirrors
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq Steam.exe"') DO %KILLTSK% %KILLPID% %%A

for /f "delims=" %%a in ('dir /b /ad "%STEAMLOC%\userdata"') do set STMUSRFLDR=%%~a
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET STMSHRTCT=" "%STEAMLOC%\userdata\%STMUSRFLDR%\config\shortcuts.vdf*" "Locate your shortcuts.vdf" /noquote') do %%a
if "%STMSHRTCT%"=="" goto :ALERT
for %%a in ("%STMSHRTCT%") do (
set STMSHRTP=%%~dpa
set STMSHRTN=%%~na
set STMSHRTF=%%~nxa
set STMSHRTX=%%~xa
)
if "%STMSHRTX%"=="orig" set STMSHRTF=shortcuts.vdf
if "%STMSHRTX%"=="orig" set STMSHRTN=shortcuts
if "%STMSHRTX%"=="bak" set STMSHRTF=shortcuts.vdf
if "%STMSHRTX%"=="bak" set STMSHRTN=shortcuts
for %%a in ("%STMSHRTP:~0,-1%") do set STMSHRTCTPTH=%%~a
if not exist "%STMSHRTCT%.orig" rename "%STMSHRTCT%" "shortcuts.vdf.orig"
move /y "%STMSHRTCT%" "%STMSHRTCTPTH%\shortcuts.vdf.bak"
goto :PREP

:ALERT
"%GBC%\wbox.exe" "RJ_GUI" "Steam's ''shortcuts.vdf'' file was not found.^Locate the destination directory for your shortcuts.vdf" "Select;Quit"
if %ERRORLEVEL%==1 goto :QUERYLOC
if %ERRORLEVEL%==2 goto :QUITOUT
goto :QUITOUT

:QUERYLOC
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET STMSHRTCTPTH=" "%STEAMLOC%\userdata\%STMUSRFLDR%\config" "Select the destination folder for shortcuts.vdf" /noquote') do %%a
popd
if "%STMSHRTCTPTH%"=="" goto :QUITOUT

:PREP
"%GBC%\wbox.exe" "RJ_GUI" "How would you like to add games to STEAM?^^ICE:^   A tool called ice is installed and configured.^^RJ^   RoM-Jacket configures Steam.^############^You must use ''RJ'' if your roms contain foreign characers.^###########^" "ICE;RJ" /DB=2
if %ERRORLEVEL%==1 goto :STEAMICE
if %ERRORLEVEL%==2 goto :CONTINUE
goto :QUITOUT

:STEAMICE
set STEAMICE=1
set CEMU=ice
SET EMUNUM=109
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
if "%MKEXE%"=="1" exit /b
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMUFILE%" -o"%STEAMLOC%\SteamApps\Common\Applications"
if "%EMUINST%" NEQ "Auto" %BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Installed." /Stop /sound /timeout:1
exit /b



if "%HPN%"=="" goto :CONTINUE
if "%HPN%"=="[HPN]" goto :CONTINUE
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to use Hyperspin wheel images as game icons?" "Yes;No"
if %ERRORLEVEL%==1 goto :SETICON
if %ERRORLEVEL%==2 goto :CONTINUE
goto :QUITOUT

:SETICON
set STEAMICON=1

:CONTINUE
set ADDALL=
set ANOT=
for /f "delims=" %%a in ('dir /b/s/ad "%GBC%\net\STEAM"') do rd /s /q "%%~a"
del /q "%GBC%\net\STEAM\*.ini"
del /q "%GBC%\net\STEAM\*.tmp"
SET MULTISTEAM=
del /q "%GBC%\consoles.ini"
echo --SELECT-->"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
echo ALL CONSOLES>>"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%LOCMIR%"') do echo.%%~a>>"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
echo FINISH>>"%GBC%\consoles.ini"
exit /b

:QUITOUT
set UNPREP=1
