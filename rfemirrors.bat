:BEGIN
set MIRICN=
set CANCELLED=
:OB
set CONBLD=

:MIRCONSOLE
if "%CONBLD%"=="1" goto :GETLIST
if exist "%MIRLOC%\retroMirrors" goto :FOUND
if exist "%GBG%\%GAM%\retroMirrors" goto :FOUND
goto :MIRTASK

:FOUND
"%GBC%\wbox.exe" "RJ_GUI" "Use the retroMirrors Directory?" "retroMirrors;Other" /DB=1
if %errorlevel%==1 goto :RFEASSUME
if %errorlevel%==2 goto :RFETASK
goto :QUITOUT
:RFEASSUME
for %%a in ("%GBG%\%GAM%") do set MIRLOC=%%~a
set MIRDN=retroMirrors
goto :RFECOMPLETE

:MIRTASK
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET MIRLOC=" "%GBG%\%GAM%" "RetroFE Mirror Location" /noquote') do %%a
if "%MIRLOC%"=="" goto :QUITOUT
popd
:RFEASK
"%GBC%\Winput.exe" "set MIRDN=$input" "Enter the name of your retroFE mirrors." "retroMirrors">"%GBC%\input.cmd"
if %ERRORLEVEL%==1 goto :QUITOUT
call "%GBC%\input.cmd"
if "%MIRDN%"=="" goto :QUITOUT
:RFECOMPLETE

set CONBLD=1
for %%a in ("%MIRLOC%\%MIRDN%") do set MIRNZ=%%~a
goto :GETLIST

:GETLIST
SET MIRCONNORM=1
SET MIRCONCUST=
SET CSTMIRICN=1
set MIRARBV=1
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
set MIRARBV=
if not exist "%GBC%\curlist.ini" goto :QUITOUT
goto :ALLCONSOLE

:CREATING
if "%MIRCONDIR%"=="1" for %%a in ("%MIRDIR%") do set DIRTOLIST=%%~a
if "%MIRCONNORM%"=="1" for %%a in ("%GBG%\%GAM%\%CONS%\%MIRDIR%") do set DIRTOLIST=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating mirror Rom-Directory"  /marquee
if "%MIRCONNORM%"=="1" mkdir "%MIRLOC%\%MIRDN%\%MIRDIR%"
if not exist "%MIRLOC%\%MIRDN%\Favorites" mkdir "%MIRLOC%\%MIRDN%\Favorites"
if "%MIRCONCUST%"=="1" mkdir "%MIRLOC%\%MIRDN%\%MIRDIRNAME%"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
pushd "%DIRTOLIST%\%%~a"
CALL :DIRLIST
popd
)
goto :FINISH

:FINISH
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :COMPLETE

:GETCUST
pushd "%GBC%"
SET MIRCONNORM=
SET MIRDIR=
for /f "delims=" %%a in ('Wfolder.exe "SET MIRDIR=" "%GBG%\%GAM%\%CONS%" "Locate the Console's Directory" /noquote') do %%a
set MIRICNCONDRVL=%MIRDIR:*:=%
if "%MIRDIR%"=="" GOTO :OB
popd
for %%a in ("%MIRDIR%") do set MIRDIRNAME=%%~na
goto :CREATING

:DIRLIST
for /f "delims=" %%a in ('dir /b/a-d-h "*.bat"') do (
SET ROM=%%~a
SET ROMB=%%~a
set ROMNAME=%%~na
CALL :romlink
)
exit /b

:romlink
set MICNEXT=
set NOICN=
set MIRORICN= 
if "%MIRCONCUST%"=="1" goto :FULLNAME
"%GBC%\xxmklink.exe" "%MIRLOC%\%MIRDN%\%MIRDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%MIRDIR%\%ROMDIR%\%ROM%" " " "%GBG%\%GAM%\%CONS%\%MIRDIR%\%ROMDIR%" "%ROMNAME%" 1 "%MIRORICN%"
exit /b

:FULLNAME
"%GBC%\xxmklink.exe" "%MIRLOC%\%MIRDN%\%MIRDIRNAME%\%ROMNAME%.lnk" "%MIRDIR%\%ROMDIR%\%ROM%" " " "%MIRDIR%\%ROMDIR%" "%ROMNAME%" 1 "%MIRORICN%"
exit /b

:SPECIAL
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%MIRDIR%\%ROMDIR%\*.zip"') do (
set ROMNAME=%%~na
CALL :XXMKS
)
exit /b

:XXMKS
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%MIRDIR%\%ROMDIR%\*.bat"') do (
SET ROMB=%%~a
CALL :LINKING
)
exit /b

:LINKING
set MICNEXT=
set NOICN=
set MIRORICN= 
"%GBC%\xxmklink.exe" "%MIRLOC%\%MIRDN%\%MIRDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%MIRDIR%\%ROMDIR%\%ROMB%" " " "%GBG%\%GAM%\%CONS%\%MIRDIR%\%ROMDIR%" "%ROMNAME%" 1 "%MIRORICN%"
exit /b

:CLEANHOUSE
for /f "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :CLEAR
popd
)
pushd "%GBG%\%GAM%\%CONS%"
call :CLEAR
popd
goto :ALLCONSOLE

:CLEAR
for /f "delims=" %%d in ('dir /b /ad') do rd "%%d"
exit /b

:ALLCONSOLE
SET CSTMIRICN=0
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Console-Mirror Directories"  /marquee
mkdir "%MIRLOC%\%MIRDN%"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set HSCONDIR=%%~a
mkdir "%MIRLOC%\%MIRDN%\%%~a"
CALL "%GBC%\rfelink.bat">>"%GBC%\logs\rfelink.log"
)

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :COMPLETE
:COMPLETE
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
:QUITOUT