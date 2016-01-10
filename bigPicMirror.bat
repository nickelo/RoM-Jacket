:MIRLOC
for %%a in ("SteamMirrors") do set BIGMIR=%%~a
set BMIRT=
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET BMIRT=" "%GBG%\%GAM%" "Steam Mirror Location" /noquote') do %%a
if %ERRORLEVEL%==1 goto :QUITOUT
for /f "delims=" %%a in ("%OMIRT%") do if "%%~nxa"=="SteamMirrors" call :TOPSEL
for /f "delims=" %%a in ("%OMIRT%\%BIGMIR%") do set SMIROR=%%~a
for /f "delims=" %%a in ("SteamMirrors") do set LOCMIR=%%~a
popd
if not exist "%GBG%\%GAM%\%LOCMIR%" mkdir "%GBG%\%GAM%\%LOCMIR%"

:STM
"%GBC%\wbox.exe" "RJ_GUI" "Select: Choose a console for which to create a Steam compatible mirror.^Custom: choose a custom cosole location of ROMs" "Select;Custom" /DB=1
if %ERRORLEVEL%==1 goto :STMCONSOLE
if %ERRORLEVEL%==2 goto :GETCUST
goto :QUITOUT 

:TOPSEL
for %%a in ("%OMIRT:~0,-13%") do set OMIRT=%%~a
exit /b

:STMCONSOLE
SET STMCONNORM=1
SET STMCONCUST=
SET CSTSTM=1
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
goto :ALLCONSOLE

:CREATING
if "%STMCONCUST%"=="1" set DIRTOLIST=%CSTCONS%
if "%STMCONNORM%"=="1" set DIRTOLIST=%GBG%\%GAM%\%CONS%\%CSTCONS%
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Steam Rom-Directory"  /marquee
if "%STMCONNORM%"=="1" mkdir "%GBG%\%GAM%\%LOCMIR%\%CSTCONS%"
if not exist "%GBG%\%GAM%\%LOCMIR%\Favorites" mkdir "%GBG%\%GAM%\%LOCMIR%\Favorites"
if "%STMCONCUST%"=="1" mkdir "%GBG%\%GAM%\%LOCMIR%\%CSTCONSNAME%"
for /f "delims=" %%a in ('dir /b /ad "%DIRTOLIST%"') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
pushd "%DIRTOLIST%\%%~a"
CALL :DIRLIST
popd
)

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to add another console to your Steam setup?" "Yes;Complete" /DB=1
if %ERRORLEVEL%==1 goto :STMCONSOLE
if %ERRORLEVEL%==2 goto :ASKADD
goto :ASKADD

:GETCUST
pushd "%GBC%"
SET STMCONNORM=
SET CSTCONS=
for /f "delims=" %%a in ('Wfolder.exe "SET CSTCONS=" "%GBG%\%GAM%\%CONS%" "Locate the Console's Directory" /noquote') do %%a
set STMCONDRVL=%CSTCONS:*:=%
if "%CSTCONS%"=="" GOTO :STM
popd
for %%a in ("%CSTCONS%") do set CSTCONSNAME=%%~na
goto :CREATING


:DIRLIST
for /f "delims=" %%a in ('dir /b/a-d-h "*.bat"') do (
SET ROM=%%~a
set ROMNAME=%%~na
CALL :romlink
)
exit /b

:romlink
if "%STMCONCUST%"=="1" goto :FULLNAME
if "%CSTCONS%"=="%SEGM3%" goto :SPECIAL
if "%CSTCONS%"=="%SEGM2%" goto :SPECIAL
if "%CSTCONS%"=="%NEOGE%" goto :SPECIAL
if "%CSTCONS%"=="%NAOMI%" goto :SPECIAL
if "%CSTCONS%"=="%GALCO%" goto :SPECIAL
if "%CSTCONS%"=="%HIKARU%" goto :SPECIAL
if "%CSTCONS%"=="%ATMS%" goto :SPECIAL
if "%CSTCONS%"=="%CPS%" goto :SPECIAL
if "%CSTCONS%"=="%CPS2%" goto :SPECIAL
if "%CSTCONS%"=="%CPS3%" goto :SPECIAL
if "%CSTCONS%"=="%ARCD%" goto :SPECIAL
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%CSTCONS%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%\%ROM%" " " "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:FULLNAME
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%CSTCONSNAME%\%ROMNAME%.lnk" "%CSTCONS%\%ROMDIR%\%ROM%" " " "%CSTCONS%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:SPECIAL
del /q "%GBG%\%GAM%\%LOCMIR%\%CSTCONS%\*.lnk"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%\*.zip"') do (
REM set ROMNAME=%%~na
REM CALL :XXMKS
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%CSTCONS%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%\%ROM%" " " "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%" "%ROMNAME%" 1 " "
)
exit /b

:XXMKS
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%\*.bat"') do (
SET ROMB=%%~a
CALL :LINKING
)
exit /b

:LINKING
REM "%GBC%\xxmklink.exe" "%GBG%\%GAM%\%LOCMIR%\%CSTCONS%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%\%ROMB%" " " "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMDIR%" "%ROMNAME%" 1 " "
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
SET CSTSTM=0
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Steam Console-Mirror Directories"  /marquee
mkdir "%GBG%\%GAM%\%LOCMIR%"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set HSCONDIR=%%~a
mkdir "%GBG%\%GAM%\%LOCMIR%\%%~a"
CALL "%GBC%\romlink.bat"
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b

for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%LOCMIR%"') do (
set NEWLINK=
set ORGLINK=%%~a
if "%%~a"=="%NES%" set NEWLINK=NES
if "%%~a"=="%SNES%" set NEWLINK=SNES
if "%%~a"=="%N64%" set NEWLINK=N64
if "%%~a"=="%PSX%" set NEWLINK=PS1
if "%%~a"=="%PS2%" set NEWLINK=PS2
if "%%~a"=="%NGC%" set NEWLINK=Gamecube
if "%%~a"=="%SEGAG%" set NEWLINK=Genesis
if "%%~a"=="%NGB%" set NEWLINK=Gameboy
if "%%~a"=="%NGBA%" set NEWLINK=GBA
if "%%~a"=="%WII%" set NEWLINK=Wii
if "%%~a"=="%NDS%" set NEWLINK=DS
if "%%~a"=="%PSP%" set NEWLINK=PSP
if "%%~a"=="%SEGADC%" set NEWLINK=Dreamcast
if "%%~a"=="%SMS%" set NEWLINK=SMS
if "%%~a"=="%TG16%" set NEWLINK=TG16
if "%%~a"=="%SEGG%" set NEWLINK=SGG
call :%LINKR%
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
exit /b
:WINV
if "%NEWLINK%"=="" exit /b
mklink "%GBG%\%GAM%\%LOCMIR%\%NEWLINK%" "%GBG%\%GAM%\%LOCMIR%\%ORGLINK%"
exit /b
:WINLEG
if "%NEWLINK%"=="" exit /b
"%GBC%\linkd.exe" "%GBG%\%GAM%\%LOCMIR%\%ORGLINK%" "%GBG%\%GAM%\%LOCMIR%\%NEWLINK%"
exit /b