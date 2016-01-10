set cbcancel=

:BLDLIST
del /q "%GBC%\net\%CABR%\*.tmp"
del /q "%GBC%\added.ini"
del /q "%GBC%\add.ini"
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
del /q "%GBC%\artSel.cmd"
echo :::::::>"%GBC%\list.ini"
if "%RFEM%" NEQ "1" echo ALL SYSTEMS>>"%GBC%\list.ini"
echo :::::::>>"%GBC%\list.ini"
if "%ROMSRCH%"=="1" copy /y "%GBC%\net\%ROMDPT%\srchlst.ini" "%GBC%\list.ini"
if "%ROMSRCH%"=="1" goto :INISTATE
if "%GETROM%"=="1" copy /y "%GBC%\rdpass.ini" "%GBC%\list.ini"
if "%GETROM%"=="1" goto :INISTATE
if "%RFEM%"=="1" for /f "delims=" %%a in ('dir /b/ad-h "%MIRLOC%\%MIRDN%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
if "%RFEM%"=="1" goto :INISTATE
if "%GTMTA%"=="1" goto :CULLSYS
if "%RDEPOT%"=="1" goto :RDEPOT
if "%ARCDO%"=="1" goto :ARCDO
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
:INISTATE
set INISTATE=list

:SYSTEMSELECT
SET READD=

:READDING
set CALLOUT=
set READD=
set SYSADDTYPE=Select a system to add
if "%ROMSRCH%"=="1" set SYSADDTYPE=Select ROMs to Download
if "%GETROM%"=="1" set SYSADDTYPE=Select ROMs to Download
if "%ARCDO%"=="1" set SYSADDTYPE=Select system to list ROMs
if "%RDEPOT%"=="1" set SYSADDTYPE=Select system to list ROMs
if "%RFETHEME%"=="1" set SYSADDTYPE=Create themes for retroFE
if "%RFEADD%"=="1" set SYSADDTYPE=Select mirrors for retroFE
if "%MIRARBV%"=="1" set SYSADDTYPE=Create mirrors for retroFE
"%GBC%\Wselect.exe" "%GBC%\%INISTATE%.ini" "%SYSADDTYPE%" "$item" > "%GBC%\FESel.ini"
if %errorlevel%==0 goto :cbout
for /f "delims=" %%a in ('type "%GBC%\FESel.ini"') do set CONSCAB=%%~a
if "%CONSCAB%"=="-RESET-" goto :BLDLIST
if "%CONSCAB%"=="ALL SYSTEMS" goto :ALLLIBS
if "%CONSCAB%"=="-ADDED-" goto :SYSTEMSELECT
if "%CONSCAB%"==":::::::" goto :SYSTEMSELECT
if "%CONSCAB%"=="-BUILD-" goto :BUILD
if "%CONSCAB%"=="-DOWNLOAD-" goto :BUILD

call :NORTST
if "%RDEPOT%"=="1" goto :BUILD
set COMPLTYP=-BUILD-
if "%GETROM%"=="1" set COMPLTYP=-DOWNLOAD-
echo :::::::>"%GBC%\add.ini"
echo -ADDED->>"%GBC%\add.ini"
for /f "delims=" %%a in ('type "%GBC%\added.ini"') do echo."%%~a">>"%GBC%\add.ini"
"%GBC%\fart.exe" "%GBC%\add.ini" "\"" --remove
echo :::::::>>"%GBC%\add.ini"
echo %COMPLTYP%>>"%GBC%\add.ini"
echo :::::::>>"%GBC%\add.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" ":::::::" --remove
"%GBC%\fart.exe" "%GBC%\list.ini" "ALL SYSTEMS" --remove
for /f "delims=" %%a in ('type "%GBC%\list.ini"') do echo."%%~a">>"%GBC%\add.ini"
"%GBC%\fart.exe" "%GBC%\add.ini" "\"" --remove
echo :::::::>>"%GBC%\add.ini"
echo -RESET->>"%GBC%\add.ini"
echo :::::::>>"%GBC%\add.ini"
set INISTATE=add
if "%READD%"=="" goto :SYSTEMSELECT
goto :READDING

:RDEPOT
del /q "%GBC%\list.ini"
if "%NOINDX%"=="1" exit /b
for /f "delims=" %%a in ('type "%GBC%\net\%ROMDPT%\consoles.ini"') do echo."%%~na">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
goto :INISTATE

:ARCDO
del /q "%GBC%\list.ini"
if "%NOINDX%"=="1" exit /b
for /f "delims=" %%a in ('type "%GBC%\net\%ROMDPT%\consoles.ini"') do echo."%%~na>">"%GBC%\list.ini"
goto :INISTATE

:CULLSYS
pushd "%GBG%\%GAM%\%CONS%"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\scrape\*.bat"') do (
set COMPLST=%%~na
call :COMPLST
)

for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
if "%%~a"=="%CPS%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%CPS2%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%CPS3%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%NEOGE%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%SEGM2%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%NAOMI%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%GALCO%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%HIKARU%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%ATMS%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%SSTV%" echo."%%~a">>"%GBC%\list.ini"
)

"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
popd
goto :INISTATE

:COMPLST
if exist "%COMPLST%" echo."%COMPLST%">>"%GBC%\list.ini"
exit /b

:NORTST
if not exist "%GBC%\added.ini" goto :KING
for /f "delims=" %%a in ('type "%GBC%\added.ini"') do if "%CONSCAB%"=="%%~a" call :REIN
if "%READD%"=="1" exit /b

:ADDNOW
if "%CURFE%"=="Cabrio" CALL "%GBC%\cabrConAdd.bat">>"%GBC%\logs\cabrConAdd.log"

:KING
del /q "%GBC%\listing.ini"
for %%a in ("%CONSCAB%") do echo."%%~a">>"%GBC%\added.ini"
"%GBC%\fart.exe" "%GBC%\added.ini" "\"" --remove

for /f "delims=" %%a in ('type "%GBC%\list.ini"') do if "%CONSCAB%" NEQ "%%~a" echo."%%~a">>"%GBC%\listing.ini"
"%GBC%\fart.exe" "%GBC%\listing.ini" "\"" --remove
del /q "%GBC%\list.ini"
rename "%GBC%\listing.ini" "list.ini"
exit /b

:REIN
del /q "%GBC%\adding.ini"
for /f "delims=" %%a in ('type "%GBC%\added.ini"') do if "%CONSCAB%" NEQ "%%~a" echo."%%~a">>"%GBC%\adding.ini"
"%GBC%\fart.exe" "%GBC%\adding.ini" "\"" --remove
del /q "%GBC%\added.ini"
rename "%GBC%\adding.ini" "added.ini"
for %%a in ("%CONSCAB%") do Echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
SET READD=1
exit /b

:BUILD
copy /y "%GBC%\added.ini" "%GBC%\curlist.ini"
exit /b

:ALLLIBS
copy /y "%GBC%\list.ini" "%GBC%\curlist.ini"
exit /b
:cbout
set cbcancel=1
