:MIRLOC
for %%a in ("OblyTileMirrors") do set OBLMIR=%%~a
set OMIRT=
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET HMIRT=" "%GBG%\%GAM%" "OblyTileMirror Location" /noquote') do %%a
if %ERRORLEVEL%==1 goto :QUITOUT
for /f "delims=" %%a in ("%OMIRT%") do if "%%~nxa"=="OblyTileMirrors" call :TOPSEL
for /f "delims=" %%a in ("%OMIRT%\%OBLMIR%") do set OMIRROR=%%~a
for /f "delims=" %%a in ("OblyTileMirrors") do set LOCMIR=%%~a
popd
if not exist "%GBG%\%GAM%\%LOCMIR%" mkdir "%GBG%\%GAM%\%LOCMIR%"

:OB
"%GBC%\wbox.exe" "RJ_GUI" "Select: Choose a console for which to create a OblyTile compatible mirror.^Custom: Select a custom folder of ROMs" "Select;Custom" /DB=1
if %ERRORLEVEL%==1 goto :OBCONSOLE
if %ERRORLEVEL%==2 goto :GETCUST
goto :OBLYEXIT

:TOPSEL
for %%a in ("%OMIRT:~0,-16%") do set OMIRT=%%~a
exit /b


:OBCONSOLE
SET OBLYCONNORM=1
SET OBLYCONCUST=
SET CSTOBLY=1
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
echo Other>>"%GBC%\list.ini"
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :OB
goto :CLEANHOUSE

:CREATING
if "%OBLYCONCUST%"=="1" set DIRTOLIST=%HSCONDIR%
if "%OBLYCONNORM%"=="1" set DIRTOLIST=%GBG%\%GAM%\%CONS%\%HSCONDIR%

%BSTRT% "%WBUSY%" "RJ_GUI" "Creating HS Rom-Directory"  /marquee
if "%OBLYCONNORM%"=="1" mkdir "%GBG%\%GAM%\%LOCMIR%\%HSCONDIR%"
if not exist "%GBG%\%GAM%\%LOCMIR%\Favorites" mkdir "%GBG%\%GAM%\%LOCMIR%\Favorites"
if "%OBLYCONCUST%"=="1" mkdir "%GBG%\%GAM%\%LOCMIR%\%HSCONDIRNAME%"
for /f "delims=" %%a in ('dir /b /ad "%DIRTOLIST%"') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
pushd "%DIRTOLIST%\%%~a"
CALL :DIRLIST
popd
)

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to add another console to your OblyTile setup?" "Yes;Complete" /DB=1
if %ERRORLEVEL%==1 goto :OB
if %ERRORLEVEL%==2 goto :OBLYEXIT
goto :OBLYEXIT

:GETCUST
SET OBLYCONCUST=1
pushd "%GBC%"
SET OBLYCONNORM=
SET HSCONDIR=
for /f "delims=" %%a in ('Wfolder.exe "SET HSCONDIR=" "%GBG%\%GAM%\%CONS%" "Locate the Console's Directory" /noquote') do %%a
set OBLYCONDRVL=%HSCONDIR:*:=%
if "%HSCONDIR%"=="" GOTO :OB
popd
for %%a in ("%HSCONDIR%") do set HSCONDIRNAME=%%~na
goto :CREATING


:DIRLIST
for /f "delims=" %%a in ('dir /b/a-d-h "*.bat"') do (
SET ROM=%%~a
set ROMNAME=%%~na
CALL :romlink
)
exit /b

:romlink
if "%OBLYCONCUST%"=="1" goto :FULLNAME
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%HSCONDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%\%ROM%" " " "%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:FULLNAME
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%HSCONDIRNAME%\%ROMNAME%.lnk" "%HSCONDIR%\%ROMDIR%\%ROM%" " " "%HSCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:SPECIAL
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%\*.zip"') do (
set ROMNAME=%%~na
CALL :XXMKS
)
exit /b

:XXMKS
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%\*.bat"') do (
SET ROMB=%%~a
CALL :LINKING
)
exit /b

:LINKING
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%HSCONDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%\%ROMB%" " " "%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
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
SET CSTOBLY=0
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating OblyTile Console-Mirror Directories"  /marquee
mkdir "%GBG%\%GAM%\%LOCMIR%"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set HSCONDIR=%%~a
mkdir "%GBG%\%GAM%\%LOCMIR%\%%~a"
CALL "%GBC%\romlink.bat"
)

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
:OBLYEXIT