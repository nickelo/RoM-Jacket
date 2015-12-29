set ROMULT=
setlocal DISABLEDELAYEDEXPANSION
SET REALWINDOWS=1
for /f "tokens=2 delims=," %%a in ('wmic os get caption /format:csv') do SET WINGET=%%~a
for /f "tokens=3 delims= " %%a in ("%WINGET%") do set WINVER=%%~a
if exist "Z:\bin\sh" set REALWINDOWS=0
set WSRT=
if "%REALWINDOWS%"=="0" set WINVER=XP
if "%WINVER%"=="XP" call :XPVARS
goto :BUZY
:XPVARS
set LINKR=WINLEG
if "%REALWINDOWS%"=="1" set KILLTSK=tskill
set KILLOPT=
set KILLPID=
:BUZY
if "%SORTON%"=="1" goto :existingusers
:RomulateBegin
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
CALL "%GBC%\defineVar.bat">>"%GBC%\logs\defineVar.log"
CALL "%GBC%\MIRSET.bat">>"%GBC%\logs\MIRSET.log"

set urlNthL=1
set BIT=
set BITVAL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\ARCH.ini" /L:%urlNthL%') do set BITVAL=%%~a
popd
for %%a in ("%BITVAL%") do (
if "%%a"=="[BIT]" goto :unsets
if "%%a"=="" goto :unsets
SET BIT=%%a
)

:SETBIT
if "%BIT%"=="64" set INDX=index64.set
if "%BIT%"=="32" set INDX=index32.set
if exist "locset.ini" goto :autoset
if exist "%GBC%\locset.ini" goto :autoset
goto :unsets

:autoset
if "%REALWINDOWS%"=="0" goto :WINE

:VARCHK
set WSTRT=start /min /w ""
set BSTRT=start ""
for %%a in ("start /w """) do set LAUNCH=%%~a
for %%a in ("%GBC%\aria2c.exe") do set ARIA2C=%%~a
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
for %%a in ("findstr") do set FNDSTR=%%~a
if "%WINVER%"=="XP" goto :XP
set ROBOCPY=robocopy
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
goto :ARK

:XP
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
goto :ARK

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
goto :ARK

:ARK
%GBD%
cd "%GBC%"
CALL "%GBC%\varLoc.bat">>"%GBC%\logs\varloc.log"
if "%GBM%"=="[GBM]" goto :unsets
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :unsets
if "%DAMVAR%"=="[DAM]" goto :unsets
if "%GBG%\Games\Console"=="[GBG]\Games\Console" goto :unsets
if "%XPADDER%"=="[XPD]" goto :unsets
if "%GBM%"=="[GBM]" goto :unsets
for %%R in ("%GBC%\copy.ini") do if "%%~zR" equ "" goto :existingUsers
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :existingUsers
"%GBC%\wbox.exe" "RJ_GUI" "Move or Copy" "MOVE;COPY" /DB=1
if %errorlevel%==1 goto :MOVING
if %errorlevel%==2 goto :COPYING
goto :EOF

:CURCOPY
set CURCOPY=
for /f "delims=" %%a in ('type "%GBC%\copy.ini"') do set /A CURCOPY+=1
set /a CURTOT=%CURCOPY%
exit /b

:MOVING
set MOVENUM=
set COPYTYP=Moving
call :CURCOPY
%BSTRT% "%WBUSY%" "RJ_GUI" "Moving to your Rom-Jacket.^Please be patient." /marquee
call :HIDEO
for /f "delims=" %%a in ('type "%GBC%\copy.ini"') do (
set TOCPY=%%~a
set TONAM=%%~nxa
if exist "%GBG%\%ROMJ%\%%~a" attrib -h "%GBG%\%ROMJ%\%TONAM%"
if exist "%GBG%\%ROMJ%\%%~a\*" call :UNATRIB
move /y "%%~a" "%GBG%\%ROMJ%"
)
%BSTRT% "%WFINS%" "RJ_GUI" "Moved" /Stop /timeout:1
goto :CLNP

:HIDEO
for /f "delims=" %%a in ('dir /b/a-h/s "%GBG%\%ROMJ%"') do attrib +h "%%~a"
exit /b

:COPYING
set MOVENUM=
set COPYTYP=Copying
call :CURCOPY
%BSTRT% "%WBUSY%" "RJ_GUI" "Copying to your Rom-Jacket^Please be patient." /marquee
call :HIDEO
for /f "delims=" %%a in ('type "%GBC%\copy.ini"') do (
set TOCPP=%%~dpa
set TOCPF=%%~a
set TONAM=%%~nxa
call :FLDRTST
)
%BSTRT% "%WFINS%" "RJ_GUI" "Copy Complete" /Stop /timeout:1
goto :CLNP

:FLDRTST
for %%a in ("%TOCPP:~0,-1%") do set TOCPY=%%~a
if exist "%TOCPF%\*" goto :ROBO
goto :ROBOF

:ROBO
if exist "%GBG%\%ROMJ%\%TONAM%" call :UNATRIB
%ROBOCPY% "%TOCPF%" "%GBG%\%ROMJ%\%TONAM%" /NP /E /IS /R:2 /W:2
exit /b

:ROBOF
if exist "%GBG%\%ROMJ%\%TONAM%" attrib -h "%GBG%\%ROMJ%\%TONAM%"
%ROBOCPY% "%TOCPY%" "%GBG%\%ROMJ%" "%TONAM%" /COPY:DAT /NP /IS /R:2 /W:2
exit /b

:UNATRIB
attrib -h "%GBG%\%ROMJ%\%TONAM%"
for /f "delims=" %%a in ('dir /b/ah/s "%GBG%\%ROMJ%\%TONAM%"') do attrib -h "%%~a"
exit /b

:CLNP
set ROMULT=1
goto :romucall

:existingUsers
for /f "delims=" %%a in ('dir /b/ah/s "%GBG%\%ROMJ%"') do (
set ROMIS=%%~dpa
SET UNHIDN=%%~dpnxa
call :XTNZCHK
)
goto :romucall

:XTNZCHK
if "%ROMIS%"=="%GBG%\%ROMJ%\SORTED ARCHIVES\" exit /b
attrib -h "%UNHIDN%"
exit /b

:romucall
call "%GBC%\sortroms.bat">>"%GBC%\logs\sortroms.log"
del /q "%GBC%\copy.ini"

exit /b

:unsets
"%GBC%\wbox.exe" "RJ_GUI" "^^Rom-Jacket needs to be configured to jacketize your library.^^" "Continue;Quit" /DB=1 /BW=130  
if %ERRORLEVEL%==1 goto :callrun
if %ERRORLEVEL%==2 goto :endromulate
goto :endromulate

:callrun
"%GBC%\BEGIN.lnk"

:endromulate
exit /b
