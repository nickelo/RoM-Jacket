:BLDLIST
del /q "%GBC%\curlist.ini"
del /q "%GBC%\Slist.ini"
del /q "%GBC%\list.tmp"
del /q "%GBC%\list.ini"
del /q "%GBC%\added.ini"
del /q "%GBC%\add.ini"
del /q "%GBC%\list.ini"
del /q "%GBC%\artSel.cmd"
echo :::::::>"%GBC%\list.ini"
echo ALL SYSTEMS>>"%GBC%\list.ini"
echo :::::::>>"%GBC%\list.ini"
rename "%GBC%\list.ini" "list.tmp"
copy /b "%GBC%\list.tmp" + "%GBC%\%LISTSRCH%" "%GBC%\list.ini"
del /q "%GBC%\list.tmp"
set INISTATE=list

:SYSTEMSELECT
SET READD=

:READDING
set CALLOUT=
set READD=
"%GBC%\Wselect.exe" "%GBC%\%INISTATE%.ini" "Select a system to add" "set CONSCAB=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 goto :cbout
call "%GBC%\artSel.cmd"
for %%A in ("%CONSCAB:~0,1%") do set HSHCHK=%%~A
if /I "%HSHCHK%"=="#" goto :SYSTEMSELECT
if /I "%HSHCHK%"==":" goto :SYSTEMSELECT
if "%CONSCAB%"=="-RESET-" goto :BLDLIST
if "%CONSCAB%"=="ALL SYSTEMS" call :ALLLIBS
if "%CONSCAB%"=="-ADDED-" goto :SYSTEMSELECT
if "%CONSCAB%"=="-SEARCH-" goto :BUILD

call :NORTST

echo :::::::>"%GBC%\add.ini"
echo -ADDED->>"%GBC%\add.ini"
for /f "delims=" %%a in ('type "%GBC%\added.ini"') do echo %%~a>>"%GBC%\add.ini"
echo :::::::>>"%GBC%\add.ini"
:LINTXT
echo -SEARCH->>"%GBC%\add.ini"

:TYPECONF
echo :::::::>>"%GBC%\add.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" ":::::::" --remove
"%GBC%\fart.exe" "%GBC%\list.ini" "ALL SYSTEMS" --remove
for /f "delims=" %%a in ('type "%GBC%\list.ini"') do echo %%~a>>"%GBC%\add.ini"
echo :::::::>>"%GBC%\add.ini"
echo -RESET->>"%GBC%\add.ini"
echo :::::::>>"%GBC%\add.ini"
set INISTATE=add
if "%READD%"=="" goto :SYSTEMSELECT
goto :READDING


:NORTST
if not exist "%GBC%\added.ini" goto :KING
for /f "delims=" %%a in ('type "%GBC%\added.ini"') do if "%CONSCAB%"=="%%~a" call :REIN
if "%READD%"=="1" exit /b

:ADDNOW
:KING
del /q "%GBC%\listing.ini"
for %%a in ("%CONSCAB%") do echo %%~a>>"%GBC%\added.ini"
for /f "delims=" %%a in ('type "%GBC%\list.ini"') do if "%CONSCAB%" NEQ "%%~a" echo %%~a>>"%GBC%\listing.ini"
del /q "%GBC%\list.ini"
rename "%GBC%\listing.ini" "list.ini"
exit /b

:REIN
del /q "%GBC%\adding.ini"
for /f "delims=" %%a in ('type "%GBC%\added.ini"') do if "%CONSCAB%" NEQ "%%~a" echo %%~a>>"%GBC%\adding.ini"
del /q "%GBC%\added.ini"
rename "%GBC%\adding.ini" "added.ini"
for %%a in ("%CONSCAB%") do Echo %%~a>>"%GBC%\list.ini"
SET READD=1
exit /b

:BUILD
copy /y "%GBC%\added.ini" "%GBC%\curlist.ini"
exit /b
:ALLLIBS
if /i "%LISTSRCH%"=="HASHindex.set" "%GBC%\fart.exe" "%GBC%\list.ini" "ALL RECOMMENDED" --remove
if /i "%LISTSRCH%"=="HASHindex.set" "%GBC%\fart.exe" "%GBC%\list.ini" ":" --remove
copy /y "%GBC%\list.ini" "%GBC%\curlist.ini"
exit /b
:cbout
set cbcancel=1
del /q "%GBC%\curlist.ini"