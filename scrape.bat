:INIT
for /f "tokens=1,2,3 delims=.-" %%a in ('REG QUERY HKCU\SOFTWARE\Python\PythonCore') do (
SET PYTHV=%%~nxa%%~nxb%%~nxc
call :PYQ
)
goto :VIDQ

:PYQ
if "%PYTHV:~0,2%" GEQ "32" SET PYOK=1
if "%PYTHV:~0,2%"=="27" SET PYOK=1
if "%PYTHV:~0,2%"=="26" SET PYOK=1
exit /b

:VIDQ
if "%PYOK%"=="" goto :SKPVID
"%GBC%\wbox.exe" "RJ_GUI" "Scrape video from youtube?" "Yes;No" /DB=1
if %errorlevel%==2 goto :SCRVID
if %errorlevel%==1 goto :SKPVID
goto :QUITOUT

:COMPLST
if exist "%COMPLST%" echo."%COMPLST%">>"%GBC%\curlist.ini"
exit /b


:SCRVID
set VIDSCR=1
goto :SETUP
:SKPVID
set VIDSCR=
goto :SETUP
:SETUP
set GTMTA=1
set DLM=
set CNSLIST=matchlist.ini
set SIMP=
for %%a in ("Console's Folder") do set SORTLOC=%%~a
del /q "%GBC%\%CNSLIST%"
del /q "%GBC%\curlist.ini"

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
if "%%~a"=="%ATMS%" echo."%%~a">>"%GBC%\list.ini"
if "%%~a"=="%SSTV%" echo."%%~a">>"%GBC%\list.ini"
)

"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
popd

if not exist "%GBC%\list.ini" goto :QUITOUT
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
goto :INDIV

:SORTDIR
"%GBC%\wbox.exe" "RJ_GUI" "### BASE-NAME ###^Look for Art as delimited by ([^^### FULL-NAME ###^Search for artwork using the exact folder-name^" "Base-Name;Full-Name" /DB=1
if %errorlevel%==1 goto :CONSOL
if %errorlevel%==2 goto :INDIV
goto :QUITOUT

:INDIV
set DLM=1
set CONCAT=delims=
goto :LOOKSYS

:CONSOL
set DLM=0
for /f "delims=" %%a in ("tokens=1,* delims=([") do set CONCAT=%%~a
goto :LOOKSYS

:LOOKSYS
%BSTRT% "%WBUSY%" "RJ_GUI" "Searching for Artwork for SELECTED SYSTEMS" /marquee
set LISTED="*.*"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
SET CSTCONS=%%~a
call :CSTCHK
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Search complete" /stop /timeout:1
exit /b

:CSTCHK
%BSTRT% "%WBUSY%" "RJ_GUI" "Searching for %CSTCONS% Artwork" /marquee
for %%a in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do (
pushd "%%~a"
call :hidemeta
set PARSEDEST=%%~a
)
set ROMEXT=
set ROMNAME=
set ROMORGN=
set ROMORG=
set SHRTN=
SET HSHTYP=FULLHASH
HSHTYP=NAMSORT

:CREATEGAMELIST
for /f "delims=" %%a in ('dir /b/ad-h') do echo."%%~a">>"%GBC%\%CNSLIST%"
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
if "%SHRTN%" NEQ "" call :FULLHASH
exit /b

:FULLHASH
for /f "%CONCAT%" %%a in ('type "%GBC%\%MATCHLIST%"') do (
set FLDRN=%%~nxa
set ROMFNM=%%~nxa
call :SCRAPE
)
exit /b

:SCRAPE
for /f "tokens=1,2,3,4,5,6,7,8,9* delims= " %%a in ("%ROMFNM%") do set ROMRNM=%%~a%%~b%%~c%%~d%%~e%%~f%%~g%%~h%%~i
for /f "tokens=1,2,3,4,5,6,7,8,9* delims=,.-_'~`" %%a in ("%ROMRNM%") do SET ROMFNM=%%~a%%~b%%~c%%~d%%~e%%~f%%~g%%~h%%~i

set LOG1ART=
set BANNR=
set FAN1ART=
set FAN2ART=
set B1ART=
set B2ART=
set VIDID=
set SNAP1ART=
set SNAP2ART=
set SNAP3ART=
set SNAP4ART=
set SNAP5ART=
set SCRPDT=
set SRTMV=
set FLDSWTCH=delims=
set ARTSWTCH=delims=
set ROMRNM=

for /f "delims=" %%a in ("%CSTCONS%") do set CSTSCRP=%%~a
if "%CSTCONS%"=="%CPS%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%CPS2%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%CPS3%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%NEOGE%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%SEGM2%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%SSTV%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%NAOMI%" set CSTSCRP=%ARCD%
if "%CSTCONS%"=="%ATMS%" set CSTSCRP=%ARCD%

call "%GBC%\hashing\scrape\%CSTSCRP%.bat">>"%GBC%\logs\scrape%CSTCONS%.log"
if "%SCRPFLZ%"=="" goto :SCRPCOMPL 
if "%ROMRNM%" NEQ "" for /f "%CONCAT%" %%a in ("%ROMRNM%") do set FLDRN=%%~na%%~xa

:SCRPCOMPL
if "%ROMRNM%" NEQ "" set SCRPDT=1
if "%SCRPDT%"=="1" call :GETMETA
exit /b

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

:hidemeta
for /f "delims=" %%a in ('dir /b /a "*.settings" "*.config" "*.conf" "*.cfg" "*.ini" "*.jpg" "*.png" "*.xml" "*.tbn" "*.nfo" "*.ssrm" "*.srm" "*.sta" "*.fs" "*.mc0" "*.sg0" "*.state*" "*.gs*"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a-d "*.txt"') do if /i "%%~xa"==".txt" move /y "%%~a" ".Man"
for /f "delims=" %%a in ('dir /b /a-d "*.pdf"') do if /i "%%~xa"==".pdf" move /y "%%~a" ".Man"
for /f "delims=" %%a in ('dir /b /a-d "*.mp4"') do if /i "%%~xa"==".mp4" move /y "%%~a" "backdrops\%%~nxa"
exit /b
:QUITOUT