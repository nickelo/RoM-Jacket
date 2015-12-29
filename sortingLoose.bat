%BSTRT% "%WBUSY%" "RJ_GUI" "Cataloging Existing Directories" /marquee
CALL "%GBC%\CreateConsoleDirectories.bat">>"%GBC%\logs\createConsoleDirectories.log"
CALL "%GBC%\unsort.bat">>"%GBC%\logs\unsort.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Cataloged" /Stop /timeout:1

:beginromulation
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
pushd "%GBG%\%ROMJ%"
mkdir "SORTED ARCHIVES"
ATTRIB +H "SORTED ARCHIVES"
popd
%BSTRT% "%WBUSY%" "RJ_GUI" "Cataloging files in the RJ-Sort-Folder" /marquee

if "%ARCVTST%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "ARCHIVES FOUND" /Stop /timeout:1
if "%ARCVTST%"=="1" goto :ARCHVQ
goto :ARCHVY

:ARCHVQ
%BSTRT% "%WFINS%" "RJ_GUI" "ARCHIVES FOUND" /Stop /timeout:1

"%GBC%\wbox.exe" "RJ_GUI" "######################^ARCHIVES DETECTED^######################^^Would you like to search for identifiable roms inside the ZIP RAR & 7ZIP files of your rom-jacket.?^^---NOTE---^^This will search inside *every* archive in the RJ-Sort-Folder.^" "Skip;Search" /DB=2
if %errorlevel%==1 goto :SKPARCH
if %errorlevel%==2 goto :ARCHVY
goto :ARCHVY

:EMPTYTST
del /q "%GBC%\conexist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set EMPTY=1
SET CONSOLEFOLDER=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :EMPTYCHK
popd
)
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\conexist.ini" = --remove
popd
exit /b
:EMPTYCHK
SET CHRG=
for /f "delims=" %%a in ('dir /b/a-h') do if "%%~a" NEQ "" set CHRG=0
if "%CHRG%"=="0" call :CHRG
exit /b

:CHRG
for %%a in ("%CONSOLEFOLDER%") do echo.%%~a=>>"%GBC%\conexist.ini"
exit /b

:ARCHVY
%BSTRT% "%WBUSY%" "RJ_GUI" "Cataloging files in archives." /marquee
SET INARCH=
:RESETARC
set ARCWITHIN=
pushd "%GBG%\%ROMJ%"
CALL "%GBC%\rarextract.bat">>"%GBC%\logs\rarextract.log"
CALL "%GBC%\7zextract.bat">>"%GBC%\logs\7zextract.log"
CALL "%GBC%\zipcheck.bat">>"%GBC%\logs\zipcheck.log"
if "%ARCWITHIN%"=="1" goto :RESETARC
popd

:SKPARCH
%BSTRT% "%WBUSY%" "RJ_GUI" "Moving identified ROMs" /marquee
CALL "%GBC%\allmove.bat">>"%GBC%\logs\allmove.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Moving identified ROMs" /stop /timeout:1
popd

pushd "%GBG%\%ROMJ%"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
for /f "delims=" %%a in ('dir /b /a-h "%GBG%\%ROMJ%"') do set USROMS=%%~a
if "%USROMS%"=="" goto :injectLaunchers
CALL :EMPTYTST
CALL "%GBC%\extensionSort.bat">>"%GBC%\logs\extensionSort.log"
CALL "%GBC%\romSort.bat">>"%GBC%\logs\romsort.log"
