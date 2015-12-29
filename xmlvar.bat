
set CNSLIST=cstmlist.ini
del /q "%GBC%\%CNSLIST%"
if "%COMPSORT%"=="" set CNSLIST=matchlist.ini
set DLM=
if not exist "%GBC%\%CNSLIST%" goto :REHASH
if "%TOOLSETUP%"=="1" goto :SORTQUERY
goto :SORTDIR

:PARSESETUP
set SIMP=
for %%a in ("RJ-Sort folder") do set SORTLOC=%%~a
for %%a in ("%GBG%\%ROMJ%") do set PARSEDEST=%%~a
if "%COMPSORT%"=="1" for %%a in ("Console's Folder") do set SORTLOC=%%~a
if "%COMPSORT%"=="1" for %%a in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do set PARSEDEST=%%~a
if "%COMPSORT%"=="1" goto :REHASH
"%GBC%\wbox.exe" "RJ_GUI" "##### CATALOG #####^Select HASH databases for ROMs^^##### REHASH #####^Rehash the %SORTLOC%^^##### PARSE #####^PARSE DATABASES^" "CATALOG;REHASH;MENU" /DB=1
if %ERRORLEVEL%==1 goto :PRESORT
if %ERRORLEVEL%==2 goto :REHASH
if %ERRORLEVEL%==3 goto :QUITOUT
goto :QUITOUT

:SORTQUERY
if "%TOOLSETUP%"=="1" goto :PARSESETUP
set SIMP=
for %%a in ("RJ-Sort folder") do set SORTLOC=%%~a
for %%a in ("%GBG%\%ROMJ%") do set PARSEDEST=%%~a
if "%COMPSORT%"=="1" for %%a in ("Console's Folder") do set SORTLOC=%%~a
if "%COMPSORT%"=="1" for %%a in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do set PARSEDEST=%%~a
if "%COMPSORT%"=="1" goto :REHASH
"%GBC%\wbox.exe" "RJ_GUI" "##### CATALOG #####^Select consoles ROMs to search the %SORTLOC% for.^^##### REHASH #####^Rehash the %SORTLOC%^^" "CATALOG;REHASH;MENU" /DB=1
if %ERRORLEVEL%==1 goto :PRESORT
if %ERRORLEVEL%==2 goto :REHASH
if %ERRORLEVEL%==3 goto :QUITOUT
goto :QUITOUT
:PARSE

:REHASH
del /q "%GBC%\%CNSLIST%"
set HSHTYP=%CNSLIST%
set LISTED="*.*"
pushd "%PARSEDEST%"
call "%GBC%\hashsort.bat">>"%GBC%\logs\hashsort.log"
popd
if "%TOOLSETUP%"=="1" goto :SORTQUERY
goto :SORTDIR

:GETMATL
set LISTED="*.*"
call "%GBC%\datparse.bat">>"%GBC%\logs\datparse.log"
if not exist "%GBC%\%CNSLIST%" goto :NODAT
goto :SORTQUERY

:PRESORT
"%GBC%\wbox.exe" "RJ_GUI" "Search for BIOS files?" "Yes;No" /DB=2
if %errorlevel%==1 goto :BIOSSORT
if %errorlevel%==2 goto :SORTDIR
goto :QUITOUT

:BIOSSORT
set BIOPOS=min.ini
call :BIOSPARSE
set BIOPOS=low.ini
call :BIOSPARSE
goto :SORTDIR

:BIOSPARSE
for /f "tokens=1,2,3 delims=:" %%a in ('type "%GBC%\%BIOPOS%"') do (
set ROMRNM=
set ROMORGN=%%~a
set CRCSRC=%%~c
set ROMORG=%%~a:%%~b
call :BHASH
)
exit /b
:BHASH
call "%GBC%\BIOShash.bat">>"%GBC%\logs\BIOShash.log"
if "%ROMRNM%"=="" exit /b
move /y "%ROMORG%" "%GBC%\net\BIOS\%ROMRNM%"
exit /b

:SORTDIR
set TERRO=REHASH
set TOOLM=;Rehash
for %%a in ("### REHASH ###") do set TOOLMSG1=%%~a
for %%a in ("Rehash the contents of your RJ-Sort-Folder.") do set TOOLMSG2=%%~a
if "%TOOLMENU%"=="1" for %%a in ("### RENAME ###") do set TOOLMSG1=%%~a
if "%TOOLMENU%"=="1" for %%a in ("Rename the files only.") do set TOOLMSG2=%%~a
if "%TOOLMENU%"=="1" set TERRO=RENAMED
if "%TOOLMENU%"=="1" set TOOLM=;Rename
SET JUSTMV=
if "%COMPSORT%"=="1" goto :SORTFLDR
"%GBC%\wbox.exe" "RJ_GUI" "### Consolidate ###^Group, rename and jacketize ROMs using the indexed Base Name as delimited by ([^^### Individuate ###^Each ROM is renamed and jacketized using the predefined name^^### MOVE ###^Move the ROM but do not rename or jacketize^^%TOOLMSG1%^%TOOLMSG2%" "Consolidate;Individuate;Move%TOOLM%" /DB=1
if %errorlevel%==1 goto :CONSOL
if %errorlevel%==2 goto :INDIV
if %errorlevel%==3 goto :MOVEONLY
if %errorlevel%==4 goto :%TERRO%
goto :QUITOUT

:SORTFLDR
if "%COMPSORT%"=="1" call :METASK
:JACKETASK
"%GBC%\wbox.exe" "RJ_GUI" "### Consolidate ###^Group, rename and jacketize ROMs using the indexed Base Name as delimited by ([^^### Individuate ###^Each ROM is renamed and jacketized using the predefined name^" "Consolidate;Individuate" /DB=1
if %errorlevel%==1 goto :CONSOL
if %errorlevel%==2 goto :INDIV
goto :QUITOUT

:METASK
"%GBC%\wbox.exe" "RJ_GUI" "Scrape Artwork?" "Scrape;Skip" /DB=1
if %errorlevel%==1 goto :METAON
if %errorlevel%==2 goto :METAOFF
goto :QUITOUT

:METAON
set GTMTA=1
goto :JACKETASK
:METAOFF
set GTMTA=
goto :JACKETASK

:INDIV
set DLM=1
set CONCAT=delims=
goto :LOOKSYS
:CONSOL
set DLM=0
for /f "delims=" %%a in ("tokens=1,* delims=([") do set CONCAT=%%~a
goto :LOOKSYS
:MOVEONLY
set CONCAT=delims=
set JUSTMV=1
goto :LOOKSYS
:RENAMED
for /f "delims=" %%a in ("tokens=1,* delims=([") do set CONCAT=%%~a
set JUSTMV=2
goto :LOOKSYS
:LOOKSYS
call :RESMP
set LISTSRCH=HASHindex.set
if "%COMPSORT%"=="1" goto :CSTCONS
call "%GBC%\sysSearch.bat">>"%GBC%\logs\sysSearch.log"
if not exist "%GBC%\curlist.ini" goto :SORTQUERY
goto :CHECKALL

:RESMP
echo.-------->"%GBC%\extendedSelect.ini"
echo.-ALL->>"%GBC%\extendedSelect.ini"
for /f "delims=" %%a in ('type "%GBC%\extendedSelect.set"') do echo.%%~a>>"%GBC%\extendedselect.ini"
for /f "delims=" %%a in ('type "%GBC%\tosecnames.set"') do echo.%%~a>>"%GBC%\extendedselect.ini"
exit /b

:CSTCONS
if "%REINV%" NEQ "1" for %%a in ("%CSTCONS%") do echo.%%~a>%GBC%\curlist.ini"
:CHECKALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Searching for ROMS for SELECTED SYSTEMS" /marquee
set CHKSYS=CSTCHK
set LISTED="*.*"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
SET CSTCONS=%%~a
call :%CHKSYS%
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Search complete" /stop /timeout:1
exit /b

:CSTCHK
%BSTRT% "%WBUSY%" "RJ_GUI" "Searching for %CSTCONS% ROMS" /marquee
for %%a in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do set PARSEDEST=%%~a
:CHKSYS
set ROMEXT=
set ROMNAME=
set ROMORGN=
set ROMORG=
set SHRTN=
SET HSHTYP=FULLHASH
if "%COMPSORT%"=="1" set HSHTYP=NAMSORT
pushd "%PARSEDEST%"
set LISTED="*.*"
set INDEXED=
set MATCHHASH=
set MATCHHASH1=
set MATCHHASH2=
set MATCHHASH3=
set MATCHHASH4=
set MATCHHASH5=
set MATCHLIST=%CNSLIST%
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
call "%GBC%\listed.bat">>"%GBC%\logs\listed.log"
for %%a in ("%MATCHHASH%") do if "%MATCHHASH%" NEQ "" set MATCHLIST=%%~a&&call :FULLHASH
for %%a in ("%MATCHHASH1%") do if "%MATCHHASH1%" NEQ "" set MATCHLIST=%%~a&&call :FULLHASH
for %%a in ("%MATCHHASH2%") do if "%MATCHHASH2%" NEQ "" set MATCHLIST=%%~a&&call :FULLHASH
for %%a in ("%MATCHHASH3%") do if "%MATCHHASH3%" NEQ "" set MATCHLIST=%%~a&&call :FULLHASH
for %%a in ("%MATCHHASH4%") do if "%MATCHHASH4%" NEQ "" set MATCHLIST=%%~a&&call :FULLHASH
for %%a in ("%MATCHHASH5%") do if "%MATCHHASH5%" NEQ "" set MATCHLIST=%%~a&&call :FULLHASH
if "%INDEXED%"=="" call :FULLHASH
exit /b
REM if "%DATVRB%"==".dat" call "%GBC%\tosecnames.bat">>"%GBC%\logs\tosecnames.log"
REM if "%DATVRB%"==".dat" call "%GBC%\tosecshortnames.bat">>"%GBC%\logs\tosecshortames.log"

:FULLHASH
set INDEXED=1
for /f "tokens=1,2,3 delims=:" %%a in ('type "%GBC%\%MATCHLIST%"') do (
set FLDRN=
set ROMORGN=%%~a
set CRCSRC=%%~c
set ROMORG=%%~a:%%~b
call :XPROT
call :MESS
call :TOSEC
if "%COMPSORT%"=="1" call :SCRAPE
call :MOVR
)
pushd "%GBC%"

"%GBC%\fart.exe" "%GBC%\hashlist.ini" "\"" --remove
"%GBC%\fart.exe" "%GBC%\hashlist.ini" " :" ":"
popd
exit /b

:FLDRCHK
if "%SRTMV%"=="1" exit /b
rename "%ROMORG%" "%ROMRNM%%ROMEXT%"
set MVTYP=1
exit /b

:MOVR
set MVTYP=
if "%ROMRNM%"=="" exit /b
"%GBC%\fart.exe" "%GBC%\%CNSLIST%" "%ROMORG%" --remove
"%GBC%\fart.exe" "%GBC%\min.ini" "%ROMORG%" --remove
"%GBC%\fart.exe" "%GBC%\low.ini" "%ROMORG%" --remove
"%GBC%\fart.exe" "%GBC%\med.ini" "%ROMORG%" --remove
"%GBC%\fart.exe" "%GBC%\lrg.ini" "%ROMORG%" --remove
"%GBC%\fart.exe" "%GBC%\max.ini" "%ROMORG%" --remove
"%GBC%\fart.exe" "%GBC%\%CNSLIST%" ":%CRCSRC%" --remove
"%GBC%\fart.exe" "%GBC%\min.ini" ":%CRCSRC%" --remove
"%GBC%\fart.exe" "%GBC%\low.ini" ":%CRCSRC%" --remove
"%GBC%\fart.exe" "%GBC%\med.ini" ":%CRCSRC%" --remove
"%GBC%\fart.exe" "%GBC%\lrg.ini" ":%CRCSRC%" --remove
"%GBC%\fart.exe" "%GBC%\max.ini" ":%CRCSRC%" --remove

if "%JUSTMV%"=="2" call :FLDRCHK
if "%MVTYP%"=="1" exit /b
if "%JUSTMV%"=="1" move /y "%ROMORG%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMFNM%"
if "%JUSTMV%"=="2" rename "%ROMORG%" "%ROMRNM%"
if "%JUSTMV%"=="2" exit /b
if "%SRTMV%"==""  move /y "%ROMORG%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%RNMFL%%ROMEXT%"
if "%SRTMV%"=="" exit /b
if "%SRTMV%"=="1" move /y "%ROMORG%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%ROMRNM%"
exit /b

if "%NOINTRO%"=="1" move /y "%ROMORG%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%ROMRNM%%ROMEXT%"
if "%NOINTRO%"=="1" exit /b

:GETMETA
call "%GBC%\scrapeart.bat">>"%GBC%\logs\scrapeart.log"
set SNAP1ART=
set SNAP2ART=
set SNAP3ART=
set SNAP4ART=
set SNAP5ART=
set FAN1ART=
set FAN2ART=
set B1ART=
set B2ART=
set LOG1ART=
exit /b

:XPROT
SET NOINTRODT=
set SRTMV=
set ROMRNM=
set FLDSWTCH=delims=
call "%GBC%\hashing\name\%CSTCONS%.bat"
for /f "delims=" %%a in ("%ROMORG%") do (
set ROMFNM=%%~nxa
set ROMEXT=%%~xa
set RNMFL=%%~na
)
if "%ROMRNM%" NEQ "" for /f "%CONCAT%" %%a in ("%ROMRNM%") do set FLDRN=%%~na%%~xa
if "%ROMRNM%" NEQ "" set NOINTRODT=1
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%"
if "%NOINTRODT%"=="1" call :GETMETA
exit /b

:SCRAPE
set LOG1ART=
set BANNR=
set FAN1ART=
set FAN2ART=
set B1ART=
set B2ART=
set SNAP1ART=
set SNAP2ART=
set SNAP3ART=
set SNAP4ART=
set SNAP5ART=
set SCRPDT=
set SRTMV=
set FLDSWTCH=delims=
set ARTSWTCH=delims=
call "%GBC%\hashing\scrape\%CSTCONS%.bat">>"%GBC%\logs\scrape%CSTCONS%.log"	
for /f "delims=" %%a in ("%ROMORG%") do (
set ROMFNM=%%~nxa
set ROMEXT=%%~xa
set RNMFL=%%~na
)
if "%FLDRN%" NEQ "" goto :SCRPCOMPL
if "%ROMRNM%" NEQ "" for /f "%CONCAT%" %%a in ("%ROMRNM%") do set FLDRN=%%~na%%~xa
:SCRPCOMPL
if "%ROMRNM%" NEQ "" set SCRPDT=1
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%"
if "%SCRPDT%"=="1" call :GETMETA
exit /b

:TOSEC
if "%ROMRNM%" NEQ "" exit /b
set TOSECDT=
set SRTMV=1
set FLDSWTCH=delims=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\tosec\%CSTCONS%_*.bat"') do call "%GBC%\hashing\tosec\%%~a">>"%GBC%\logs\%%~a.log"
if "%ROMRNM%" NEQ "" for /f "%CONCAT%" %%a in ("%ROMRNM%") do set FLDRN=%%~na%%~xa
if "%ROMRNM%" NEQ "" set TOSECDT=1
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%"
if "%TOSECTDT%"=="1" call :GETMETA
exit /b

:MESS
if "%ROMRNM%" NEQ "" exit /b
set SRTMV=1
set MESSDT=
for /f "delims=" %%a in ("tokens=1,2 delims=:") do set FLDSWTCH=%%~a
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\mess\%CSTCONS%_*.bat"') do call "%GBC%\hashing\mess\%%~a">>"%GBC%\logs\%%~a.log"
if "%ROMRNM%" NEQ "" for /f "%CONCAT%" %%a in ("%ROMFLDR%") do set FLDRN=%%~na%%~xa
if "%ROMRNM%" NEQ "" set MESSDT=1
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%"
exit /b

:CHKEXT
"%GBC%\wbox.exe" "RJ_GUI" "Your RJ-Sort folder exceeds 2000 files^Would you like to sort by extension?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :MINHASH
if %ERRORLEVEL%==1 goto :CONHASH
goto :QUITOUT

:CONHASH
goto :FULLHASH

:NODAT
"%GBC%\wbox.exe" "RJ_GUI" "No files exist in your RJ-Sort Folder" "OK" /DB=1 /TM=1
goto :QUITOUT

:MINHASH
call "%GBC%\hashsel.bat">>"%GBC%\logs\hashsel.log"
:QUITOUT
