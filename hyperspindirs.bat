SET CSTHYPS=
SET HSDESCAPE=
:HS
if "%PRECONF%"=="1" goto :ALLCONSOLE
if "%HMIRZ%"=="" goto :MIRLOC
REM start /w /min "" "%GBC%\wbox.exe" "RJ_GUI" "Choose a console for which to create a Hyperspin compatible." "SELECT" /DB=1 /TM=2
"%GBC%\wbox.exe" "RJ_GUI" "^SELECT^Choose a console for which to create a Hyperspin compatible mirror.^^LOCATE^Relocate the Hyperspin Mirror Directory" "SELECT;LOCATE" /DB=1
if %ERRORLEVEL%==1 goto :HSCONSOLE
if %ERRORLEVEL%==2 goto :MIRLOC
goto :HSCONSOLE

:TOPSEL
for %%a in ("%HMIRT:~0,-13%") do set HMIRT=%%~a
exit /b

:MIRLOC
set HMIRT=
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET HMIRT=" "%GBG%\%GAM%" "HyperMirror Location" /noquote') do %%a
if %ERRORLEVEL%==1 goto :QUITOUT
for /f "delims=" %%a in ("%HMIRT%") do if "%%~nxa"=="HyperMirrors" call :TOPSEL
for /f "delims=" %%a in ("%HMIRT%\%HYPMIR%") do set HMIRZ=%%~a
for /f "delims=" %%a in ("HyperMirrors") do set LOCMIR=%%~a
if not exist "%HMIRZ%" mkdir "%HMIRZ%"	
:HSCONSOLE
if "%HMIRZ%"=="" goto :HS
SET HYPCONNORM=1
SET HYPCONCUST=
SET CSTHYPS=1
"%GBC%\wbox.exe" "RJ_GUI" "Select systems to create mirrors for" "OKAY" /DB=1 /TM=3
if %errorlevel%==1 goto :MKMR
goto :QUITOUT

:MKMR
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :HSDESCAPE
goto :ALLCONSOLE

:CREATING
if "%HYPCONCUST%"=="1" set DIRTOLIST=%HYPCONDIR%
if "%HYPCONNORM%"=="1" set DIRTOLIST=%GBG%\%GAM%\%CONS%\%HYPCONDIR%
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating HS Rom-Directory"  /marquee
if "%HYPCONNORM%"=="1" mkdir "%HMIRZ%\%HYPCONDIR%"
if not exist "%HMIRZ%\Favorites" mkdir "%HMIRZ%\Favorites"
if "%HYPCONCUST%"=="1" mkdir "%HMIRZ%\%HYPCONDIRNAME%"
for /f "delims=" %%a in ('dir /b /ad "%DIRTOLIST%"') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
pushd "%DIRTOLIST%\%%~a"
CALL :DIRLIST
popd
)

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to add another console to your Hyperspin setup?" "Yes;Complete" /DB=1
if %ERRORLEVEL%==1 goto :HSCONSOLE
if %ERRORLEVEL%==2 goto :ASKADD
goto :ASKADD

:GETCUST
pushd "%GBC%"
SET HYPCONNORM=
SET HYPCONDIR=
for /f "delims=" %%a in ('Wfolder.exe "SET HYPCONDIR=" "%GBG%\%GAM%\%CONS%" "Locate the Console's Directory" /noquote') do %%a
set HYPCONDRVL=%HYPCONDIR:*:=%
if "%HYPCONDIR%"=="" GOTO :HS
popd
for %%a in ("%HYPCONDIR%") do set HYPCONDIRNAME=%%~na
goto :CREATING


:DIRLIST
for /f "delims=" %%a in ('dir /b/a-d-h "*.bat"') do (
SET ROM=%%~a
set ROMNAME=%%~na
CALL :romlink
)
exit /b

:romlink
if "%HYPCONCUST%"=="1" goto :FULLNAME
if "%HYPCONDIR%"=="%SEGM3%" goto :SPECIAL
if "%HYPCONDIR%"=="%SEGM2%" goto :SPECIAL
if "%HYPCONDIR%"=="%NEOGE%" goto :SPECIAL
if "%HYPCONDIR%"=="%NAOMI%" goto :SPECIAL
if "%HYPCONDIR%"=="%ATMS%" goto :SPECIAL
if "%HYPCONDIR%"=="%CPS%" goto :SPECIAL
if "%HYPCONDIR%"=="%CPS2%" goto :SPECIAL
if "%HYPCONDIR%"=="%CPS3%" goto :SPECIAL
if "%HYPCONDIR%"=="%ARCD%" goto :SPECIAL
"%GBC%\xxmklink.exe" "%HMIRZ%\%HYPCONDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\%ROM%" " " "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:FULLNAME
"%GBC%\xxmklink.exe" "%HMIRZ%\%HYPCONDIRNAME%\%ROMNAME%.lnk" "%HYPCONDIR%\%ROMDIR%\%ROM%" " " "%HYPCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:SPECIAL
del /q "%HMIRZ%\%CSTCONS%\*.lnk"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\*.zip"') do (
set ROMNAME=%%~na
CALL :XXMKS
)
exit /b

:XXMKS
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\*.bat"') do (
SET ROMB=%%~a
CALL :LINKING
)
exit /b

:LINKING
"%GBC%\xxmklink.exe" "%HMIRZ%\%HYPCONDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\%ROMB%" " " "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
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
for /f "delims=" %%d in ('dir /b /ad') do rd /q "%%~d"
exit /b

:ALLCONSOLE
SET CSTHYPS=0
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Mirrors"  /marquee
mkdir "%HMIRZ%"
REM for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set HSCONDIR=%%~a
mkdir "%HMIRZ%\%%~a"
CALL :ROMBAT
)
goto :AUTOADD

:ROMBAT
CALL "%GBC%\romlink.bat">>"%GBC%\logs\%HSCONDIR%romlink.log"
exit /b

:ASKADD
if "%CREATEDONLY%"=="1" goto :HSDCOMPLETE
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to create the databases for existing Hyperspin mirrored directories?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :AUTOADD
if %ERRORLEVEL%==2 goto :HSDCOMPLETE
goto :HSDESCAPE

:AUTOADD
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
if "%CREATEDONLY%"=="1" goto :HSDCOMPLETE

:MANADD
%BSTRT% "%WBUSY%" "RJ_GUI" "Building Databases"  /marquee
CALL "%GBC%\HLAdd.bat"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
CALL "%GBC%\HLInj.bat"
exit /b

:CRHSLNKS
if "%HSCONDIR%"=="" exit /b
for /f "delims=" %%a in ('dir /b/ad-h') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
)

:HSDESCAPE
SET HSDESCAPE=1
:HSDCOMPLETE
