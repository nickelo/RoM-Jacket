:SETUP
SET OUTZIP=
SET INZIP=
call "%GBC%\romxt.bat">>"%GBC%\logs\romxt.log"
if "%OUTZIP%"=="1" SET ROMXT=.zip
if "%OUTZIP%"=="1" goto :RMZIP
set CDPASS=
:ROMMENU
"%GBC%\wbox.exe" "RJ_GUI" "^^The file ^''%ROMNAME%''^ has been identified.^^PICK:^Choose the system the rom belongs to.^^OPEN:^Open the sorting folder in windows explorer.^^Select:^   Select a different rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :PICK
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :CONFLSUBNUM
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :moveall
goto :quitout

:RMZIP
set CDPASS=
"%GBC%\wbox.exe" "RJ_GUI" "^^The file ^''%ROMNAME%''^ has been identified with ''%REALN%'' inside.^^PICK:^Choose the system the rom belongs to.^^OPEN:^Open the sorting folder in windows explorer.^^Select:^   Select a different rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^Extract:^Extract ''%ROMNAME%'' to a system.^Extract all ''%ROMXT%'' to a system." "Pick;Open;Skip;Skip %ROMXT%;Select;ALL;Extract;ExtractAll" /DB=1
if %ERRORLEVEL%==1 goto :PICK
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :CONFLSUBNUM
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :moveall
if %ERRORLEVEL%==7 goto :EXTRACT
if %ERRORLEVEL%==8 goto :EXTRALL


goto :quitout


:SKIPALL
SET SKIPALL=1
pushd "%GBC%"
for %%a in ("%ROMXT%") do SET ROMSHT=%ROMXT:~1,5%
"%GBC%\fart.exe" "%GBC%\cflct.ini" "%ROMSHT%" --remove
popd
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GBG%\%ROMJ%\*%ROMXT%"') do SET /A CONFLNUM=-1
goto :quitnext

:SELECTROM
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\sortlist.ini" "Select Rom" "set ROMFULL=$item" > "%GBC%\romsel.cmd"
if %errorlevel%==0 goto :ROMMENU
CALL "%GBC%\romsel.cmd"
if "%ROMFULL%"=="" goto :ROMMENU
for /f "delims=" %%a in ("%ROMFULL%") do set ROMNAME=%%~nxa
for /f "delims=" %%a in ("%ROMFULL%") do set ROMXT=%%~xa
for /f "delims=" %%a in ("%ROMFULL%") do set ROMIS=%%~dpa
call "%GBC%\romxt.bat">>"%GBC%\logs\selromxt.log"
goto :PICK

:EXTRACT
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forroms.cmd"
for %%a in ("%FORROM:~0,1%") do set FORTMP=%%~a
if "%FORROM%"=="" goto :CONFLSUBNUM
if "%FORTMP%"=="-" goto :EXTRACT
goto :EXTRONE


:EXTRONE
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting ''%ROMNAME%'' to ''%FORROM%''" /marquee
for /f "delims=" %%a in ('dir /s/b/a-d-h "%ROMFULL%"') do (
"%SEVENZIP%" e -y "%%~a" -o"%GBG%\%GAM%\%CONS%\%FORROM%"

)
%BSTRT% "%WFINS%" "RJ_GUI" "Extracted" /Stop /Timeout:1
exit /b

:ADDCONSOLENAME
"%GBC%\Winput.exe" "set FORROM=$input" "Enter the Name of your new console" "">"%GBC%\newconnm.cmd"
if %ERRORLEVEL%==1 goto :SETUP
call "%GBC%\newconnm.cmd"
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


:EXTRALL
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forroms.cmd"
set FORTMP=%FORROM:~0,1%
if "%FORROM%"=="" goto :CONFLSUBNUM
if "%FORROM%"=="-New Console-" SET NEWCONSOLE=1
if "%FORROM%"=="-New Console-" call :ADDCONSOLENAME
if "%NEWCONSOLE%"=="1" goto :EXTRACTION
if "%FORTMP%"=="-" goto :EXTRALL
goto :EXTRACTION

:EXTRACTION
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting ''%ROMXT%'' files to ''%FORROM%''" /marquee
for /f "delims=" %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%\*%ROMXT%"') do (
"%SEVENZIP%" e -y "%%~a" -o"%GBG%\%GAM%\%CONS%\%FORROM%"

)
%BSTRT% "%WFINS%" "RJ_GUI" "Extracted" /Stop /Timeout:1
exit /b

:moveall
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forroms.cmd"
for %%a in ("%FORROM:~0,1%") do set FORTMP=%%~a
if "%FORROM%"=="" goto :CONFLSUBNUM
if "%FORROM%"=="-New Console-" SET NEWCONSOLE=1
if "%FORROM%"=="-New Console-" call :ADDCONSOLENAME
if "%NEWCONSOLE%"=="1" goto :MOVINGALL
if "%FORTMP%"=="-" goto :moveall
:MOVINGALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Moving ''%ROMXT%'' files to ''%FORROM%''" /marquee
for /f "delims=" %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%\*%ROMXT%"') do (
move /y "%%~a" "%GBG%\%GAM%\%CONS%\%FORROM%"
)
%BSTRT% "%WFINS%" "RJ_GUI" "Moved" /Stop /Timeout:1
exit /b
:PICK
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forrom.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forrom.cmd"
if "%FORROM%"=="" goto :CONFLSUBNUM
for %%a in ("%FORROM:~0,1%") do set FORTMP=%%~a
if "%FORROM%"=="-New Console-" SET NEWCONSOLE=1
if "%FORROM%"=="-New Console-" call :ADDCONSOLENAME
if "%NEWCONSOLE%"=="1" goto :PICKMOVE
if "%FORTMP%"=="-" goto :PICK

:PICKMOVE
move /y "%ROMFULL%" "%GBG%\%GAM%\%CONS%\%FORROM%"

pushd "%GBC%"
"%GBC%\fart.exe" "sortlist.ini" "%ROMFULL%" --remove
popd
for /f "tokens=1 delims=([" %%a in ("%ROMID%") do set ROMSH=%%~nxa
for /f "delims=" %%a in ('type "%GBC%\extlist.set"') do (
set EXTLIST=%%~a
if exist "%ROMPTH%\%ROMSH%*.%%~a" call :EXTXE
)
for /f "delims=" %%a in ('dir /b/a-d-h "%ROMPTH%\%ROMSH%*.*"') do move /y "%ROMPTH%\%%~a" "%GBG%\%GAM%\%CONS%\%FORROM%"
exit /b

:EXTXE
for /f "delims=" %%a in ('dir /s/b/a-d-h "%ROMPTH%\%ROMSH%*.%EXTLIST%"') do (
move /y "%%~dpnxa" "%GBG%\%GAM%\%CONS%\%FORROM%"
pushd "%GBC%"
"%GBC%\fart.exe" "sortlist.ini" "%%~dpnxa" --remove
popd
)
exit /b

:CONFLSUBNUM
set /a CONFLNUM=-1
goto :quitnext

:openfolder
explorer "%ROMPTH%"

:quitout
set QUITSEL=1
:quitnext
