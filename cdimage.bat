for %%R in ("%ROMFULL%") do if %%~zR leq 500000 goto :cueimg
for %%R in ("%ROMFULL%") do if %%~zR leq 8500000000 goto :cdimg
for %%R in ("%ROMFULL%") do if %%~zR gtr 2000000000 goto :dvdimg

:inbetween
SET ININAME=inbet.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "RJ_GUI" "^^The file ^''%ROMNAME%''^ has been identified.^^PICK:^Choose the system the rom belongs to.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL
goto :quitnext

:cdimg
SET ININAME=cdimg.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "RJ_GUI" "^^PICK:^Choose the system the rom belongs to^^OPEN:^Open the sorting folder in windows explorer.^^The file ^''%ROMNAME%''^ has been identified.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL

goto :quitnext

:dvdimg
SET ININAME=dvdimg.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "RJ_GUI" "^^PICK:^Choose the system the rom belongs to.^^OPEN:^Open the sorting folder in windows explorer.^^The file ^''%ROMNAME%''^ has been identified.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL
goto :quitnext

:cueimg
SET ININAME=discimg.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "RJ_GUI" "^^The file ^''%ROMNAME%''^ has been identified.^^PICK:^Choose the system the rom belongs to.^^OPEN:^Open the sorting folder in windows explorer.^^The file ^''%ROMNAME%''^ has been identified.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL
goto :quitnext

:SELECTROM
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\%ININAME%" "Select Rom" "set ROMFULL=$item" > "%GBC%\romsel.cmd"
if %errorlevel%==0 goto :quitnext
CALL "%GBC%\romsel.cmd"
if "%ROMFULL%"=="" goto :SELECTROM
for /f "delims=" %%a in ("%ROMFULL%") do set ROMNAME=%%~nxa
for /f "delims=" %%a in ("%ROMFULL%") do set ROMXT=%%~xa
for /f "delims=" %%a in ("%ROMFULL%") do set ROMIS=%%~dpa
call "%GBC%\romxt.bat">>"%GBC%\logs\selromxt.log"
goto :moverom

:SKIPALL
SET SKIPALL=1
pushd "%GBC%"
for %%a in ("%ROMXT%") do SET ROMSHT=%ROMXT:~1,5%
"%GBC%\fart.exe" "%GBC%\cflct.ini" "%ROMSHT%" --remove
popd
if "%ROMXT%"==".cue" goto :quitnext
if "%ROMXT%"==".mds" goto :quitnext
if "%ROMXT%"==".ccd" goto :quitnext
for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%ROMJ%\*%ROMXT%"') do SET /A CONFLNUM=-1
goto :quitnext

:MOVEALL
set FORROM=
SET NEWCONSOLE=
"%GBC%\Wselect.exe" "%GBC%\%ININAME%" "System for ''%ROMXT%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :quitnext
CALL "%GBC%\forroms.cmd"
set FORTMP=%FORROM:~0,1%
if "%FORROM%"=="" goto :quitnext
if "%FORROM%"=="-New Console-" SET NEWCONSOLE=1
if "%FORROM%"=="-New Console-" call :ADDCONSOLENAME
if "%NEWCONSOLE%"=="1" goto :MOVING
if "%FORTMP%"=="-" goto :moveall
:MOVING
%BSTRT% "%WBUSY%" "RJ_GUI" "Moving ''%ROMXT%'' files to ''%FORROM%''" /marquee
for /f "delims=" %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%\*%ROMXT%"') do (
move /y "%%~a" "%GBG%\%GAM%\%CONS%\%FORROM%"
if "%ROMXT%"==".ccd" goto :quitnext
if "%ROMXT%"==".cue" goto :quitnext
if "%ROMXT%"==".mds" goto :quitnext
)
%BSTRT% "%WFINS%" "RJ_GUI" "Moved" /Stop /Timeout:1
goto :quitnext

:ADDCONSOLENAME
"%GBC%\Winput.exe" "set FORROM=$input" "Enter the Name of your new console" "">"%GBC%\newconnm.cmd"
if %ERRORLEVEL%==1 goto :SETUP
call "%GBC%\newconnm.cmd"
REM for /f "delims=" %%a in ("%FORROM%") do set NEWCONM=%%~nxa
if "%FORROM%"=="" goto :SETUP
if exist "%GBG%\%GAM%\%CONS%\%FORROM%" "%GBC%\wbox.exe" Exists" "Folder Exists" "OK" /TM=1
if not exist "%GBG%\%GAM%\%CONS%\%FORROM%" call :CONEXT
if not exist "%GBG%\%GAM%\%CONS%\%FORROM%" mkdir "%GBG%\%GAM%\%CONS%\%FORROM%"
exit /b

:CONEXT
pushd "%GBC%"
for %%a in ("%FORROM%") do echo.%%~a=>>"%GBC%\conexist.ini"
"%GBC%\fart.exe" "%GBC%\conexist.ini" = --remove
popd
exit /b

:moverom
"%GBC%\Wselect.exe" "%GBC%\%ININAME%" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forrom.cmd"
if %errorlevel%==0 goto :quitnext
CALL "%GBC%\forrom.cmd"
if "%FORROM%"=="" goto :quitnext
if "%FORROM%"=="----------" goto :quitnext
if "%FORROM%"=="-New Console-" SET NEWCONSOLE=1
if "%FORROM%"=="-New Console-" call :ADDCONSOLENAME
if "%NEWCONSOLE%"=="1" goto :MOVING
SET NUMOF=
for /f "tokens=1 delims=([" %%a in ("%ROMID%") do set ROMSH=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%ROMPTH%\%ROMSH%*.*"') do set /a NUMOF+=1
if %NUMOF% GTR 1 goto :CONSOLIDATE
goto :ONE

:ONE
mkdir "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMID%"
move /y "%ROMFULL%" "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMID%"
goto :UNCOUNT

:CONSOLIDATE
mkdir "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMSH%"
for /f "delims=" %%a in ('dir /b/a-d-h "%ROMPTH%\%ROMSH%*.*"') do move /y "%ROMPTH%\%%~a" "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMSH%"

:UNCOUNT
if "%ROMXT%"==".ccd" exit /b
if "%ROMXT%"==".cue" exit /b
if "%ROMXT%"==".mds" exit /b

pushd "%GBC%"
"%GBC%\fart.exe" "sortlist.ini" "%ROMFULL%" --remove
popd
exit /b

:SKIP
if "%ROMXT%"==".ccd" exit /b
if "%ROMXT%"==".cue" exit /b
if "%ROMXT%"==".mds" exit /b
goto :quitnext

:openfolder
explorer "%ROMPTH%"

:quitnext
