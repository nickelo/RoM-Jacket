
CHCP 1252
setlocal enableextensions,disabledelayedexpansion
MODE CON: COLS=15 LINES=1

SET REALWINDOWS=1
if exist "Z:\bin\sh" set REALWINDOWS=0

set WSRT=
if "%REALWINDOWS%"=="0" set WINVER=XP
if "%REALWINDOWS%"=="1" for %%a in ("'") do set WSRT=%%~a
set LINKR=WINV
set KILLTSK=taskkill
set KILLOPT=/f /im
set KILLPID=/F /PID
if "%WINVER%"=="XP" call :XPVARS
goto :KILL

:XPVARS
set LINKR=WINLEG
if "%REALWINDOWS%"=="1" set KILLTSK=tskill
set KILLOPT=
set KILLPID=

:KILL
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "BIOSINSTALL"') DO %KILLTSK% /F /PID %%A
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO %KILLTSK% %KILLPID% %%A
TITLE BIOSINSTALL
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "INIT"') DO %KILLTSK% %KILLPID% %%A
%KILLTSK% %KILLOPT% BEGIN.exe
%KILLTSK% %KILLOPT% Wbox.exe
%KILLTSK% %KILLOPT% Wbusy.exe
%KILLTSK% %KILLOPT% Wselect.exe
%KILLTSK% %KILLOPT% Wfile.exe
%KILLTSK% %KILLOPT% Wfolder.exe
%KILLTSK% %KILLOPT% winput.exe
%KILLTSK% %KILLOPT% wget.exe
%KILLTSK% %KILLOPT% aria.exe
%KILLTSK% %KILLOPT% dxdiag.exe


:STARTALL
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
move /y bioslist.ini "%GBC%"
CALL "%GBC%\defineVar.bat">>"%GBC%\logs\defineVar.log"
if exist "locset.ini" goto :bautoset
if exist "%GBC%\locset.ini" goto :bautoset
goto :bunsets

:bautoset
pushd "%GBC%"
CALL "%GBC%\varLoc.bat">>"%GBC%\logs\varLoc.log"
if "%GBM%"=="[GBM]" goto :bunsets
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :bunsets
if "%DAMVAR%"=="[DAM]" goto :bunsets
if "%GBG%\Games\Console"=="[GBG]\Games\Console" goto :bunsets
if "%XPADDER%"=="[XPD]" goto :bunsets
if "%ANTMIC%"=="[AMC]" goto :bunsets
for %%R in ("%GBC%\bioslist.ini") do if "%%~zR" equ "" goto :existingBios
for %%R in ("%GBC%\bioslist.ini") do if "%%~zR" equ "0" goto :existingBios
if "%REALWINDOWS%"=="0" goto :WINE

:VARCHK
set WSTRT=start /min /w ""
set BSTRT=start ""
for %%a in ("start /w """) do set LAUNCH=%%~a
for %%a in ("start /min /w "" "%GBC%\aria2c.exe"") do set ARIA2C=%%~a
for %%a in ("start /min /w "" "%GBC%\wget.exe"") do set WGET=%%~a
for %%a in ("findstr") do set FNDSTR=%%~a
if "%WINVER%"=="XP" goto :XP
set ROBOCPY=robocopy
for %%a in ("%USERPROFILE%\AppData\Roaming\XBMC") do set XBAPDTA=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
goto :ARCHITECTURE

:XP
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%APPDATA%\XBMC") do set XBAPDTA=%%~a
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
goto :ARCHITECTURE

:WINE
set WSTRT=start /w
set BSTRT=start
for %%a in ("start /w") do set LAUNCH=%%~a
for %%a in ("%GBC%\findstr.exe") do set FNDSTR=%%a
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
for %%a in ("%GBC%\aria2c.exe") do set ARIA2C=%%~a
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
goto :ARCHITECTURE

:ARCHITECTURE
popd
pushd "%GBC%\net\%BIOS%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Copying bios files to your bios folder." /marquee
for /f "delims=" %%a in ('type "%GBC%\bioslist.ini"') do copy /Y "%%~a" "%GBC%\net\BIOS"
%BSTRT% "%WFINS%" "RJ_GUI" "Bios Files Now In the ''BIOS'' folder" /Stop /timeout:2

set DRGND=1
set BIOSI=1
goto :bioscall

:existingBios
ATTRIB -H "%GBG%\%ROMJ%\SORTED ARCHIVES"
explorer "%GBC%\net\BIOS"
goto :endBIOS

:bioscall
%BSTRT% "%WBUSY%" "RJ_GUI" "Cataloging BIOS files." /marquee
call :REXTRACT
call "%GBC%\mamecopy.bat">>"%GBC%\logs\mamecopy.log"
call "%GBC%\messcopy.bat">>"%GBC%\logs\messcopy.log"
set HIDEN=-H
set SRCH=h
%BSTRT% "%WBUSY%" "RJ_GUI" "Moving Identified BIOS files." /marquee

call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
call "%GBC%\biosproc.bat">>"%GBC%\logs\biosproc.log"
set HIDEN=+H
set SRCH=-h
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"

%BSTRT% "%WBUSY%" "RJ_GUI" "Complete." /stop /timeout:1

exit /b

:REXTRACT
set INARC=
for /f "delims=" %%a in ('dir /b/a-d-h "*.7z" "*.rar" "*.zip"') do (
if /i "%%~xa"==".7z" "%SEVENZIP%" e -y "%%~a" -o"%GBC%\net\BIOS" && move /y "%%~a" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]7Zs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".zip" "%SEVENZIP%" e -y "%%~a" -o"%GBC%\net\BIOS" && move /y "%%~a" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]ZIPs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".rar" "%UNRAR%" e -y -o+"%%~a" "%GBC%\net\BIOS" && move /y "%%~a" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]RARs\%%~nxa" && SET INARC=1
)
set HIDEN=+H
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
if "%INARC%"=="1" %BSTRT% "%WBUSY%" "Archives Found^Re-indexing" /marquee
if "%INARC%"=="1" goto :REXTRACT
del /q "%GBC%\bioslist.ini"
SET EMUINST=Auto
goto :endBIOS
exit /b

:bunsets
"%GBC%\wbox.exe" "RJ_GUI" "^^Rom-Jacket needs to be configured to sort your bios file.^^" "Continue;Quit" /DB=1 /BW=130
if %ERRORLEVEL%==1 goto :callBrun
if %ERRORLEVEL%==2 goto :endBIOS
goto :endBIOS

:callBrun
cmd /c START /min "" "%GBC%\BEGIN.bat">>"%GBC%\logs\BEGIN.log"

:endBIOS
exit /b
