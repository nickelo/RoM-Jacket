
:INIT
del /q "%GBC%\rdpass.ini"
del /q "%GBC%\rdftd.ini"
"%GBC%\wbox.exe" "RJ_GUI" "^[TORRENT]^Select a torrent file.^^[URL]^Enter a magnet link or url.^^[SITE]^Select a ROM repository website or RoM-Jacket location to browse.^" "File;URL;Site;MainMenu" /DB=3 /BW=100
if %ERRORLEVEL%==1 goto :SelFile
if %ERRORLEVEL%==2 goto :URL
if %ERRORLEVEL%==3 goto :SelList
if %ERRORLEVEL%==4 goto :fingetroms
goto :fingetroms

:URL
"%GBC%\Winput.exe" "set INURL=$input" "Enter the URL for a game torrent."  > "%GBC%\url.ini"
if %ERRORLEVEL%==1 goto :fingetroms
pushd "%GBC%"
"%GBC%\fart.exe" "url.ini" "set INURL=" --remove
call :setURL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading roms" /marquee
%WSTRT% "%ARIA2C%" --check-integrity=true --seed-time=0 --connect-timeout=10 --file-allocation=none --conditional-get=true --dir="%GBG%\%ROMJ%" "%GETURLURL%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:2
goto :fingetroms

:setURL
set urlNthL=1
set GETURLURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\url.ini" /L:%urlNthL%') do set GETURLURL=%%~a

:RESETFAIL
%BSTRT% "%WBUSY%" "RJ_GUI" "Could not aquire ROM list" /stop /timeout:1

:SelFile
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET TORURL=" "C:\*.torrent" "Where is the ''torrent file''?" /noquote') do %%a
if /I "%TORURL%"=="" goto :fingetroms
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading roms" /marquee
%WSTRT% "%ARIA2C%" --check-integrity=true --seed-time=0 --connect-timeout=10 --file-allocation=none --conditional-get=true --dir="%GBG%\%ROMJ%" --torrent-file="%TORURL%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:2
goto :fingetroms

:-NEW-
set NEWQ=1
:QUERYCOM
"%GBC%\wbox.exe" "RJ_GUI" "Enter the [URL] of a community site^[Select] a community list" "URL;Select" /DB=1
if %errorlevel%==1 goto :ENTERURL
if %errorlevel%==2 goto :SELCOM
goto :INIT

:SELCOM
set NEWQ=
set COMLIST=
pushd "%GBC%"
for /f "delims=" %%a in ('Wfile.exe "SET COMLIST=" "%GBC%\community.ini" "Select a community list" /noquote') do %%a
if "%COMLIST%"=="" goto :QUERYCOM
popd
if exist "%GBC%\community.ini" goto :COMQU
for /f "delims=" %%a in ('type "%COMLIST%"') do echo."%%~a">>"%GBC%\community.ini"
goto :SelList
exit /b

:COMQU
"%GBC%\wbox.exe" "RJ_GUI" "[Append] this community list^ or ^[Replace] your current?" "Append;Replace" /DB=1
if %errorlevel%==1 goto :APNDLST
if %errorlevel%==2 goto :REPLLST
goto :SelList

:REPLLST
del /q "%GBC%\community.ini"
:APNDLST
"%GBC%\fart.exe" "%GBC%\community.ini" "-RESET-" --remove
for /f "delims=" %%a in ('type "%COMLIST%"') do echo."%%~a">>"%GBC%\community.ini"
"%GBC%\fart.exe" "%GBC%\community.ini" "\"" --remove
goto :SelList

:ENTERURL
echo.SITE-PARSE>"%GBC%\parsetype.ini"
echo.ARCHIVE>>"%GBC%\parsetype.ini"
echo.TOSEC-SET>>"%GBC%\parsetype.ini"
echo.NO-INTRO-SET>>"%GBC%\parsetype.ini"
echo.REMOTE-JACKET>>"%GBC%\parsetype.ini"
"%GBC%\Wselect.exe" "%GBC%\parsetype.ini" "Select Type of Repository" "set SITETYPE=$item" > "%GBC%\sitetype.cmd"
call "%GBC%\sitetype.cmd"
if "%SITETYPE%"=="" goto :SelList
set PRFX=
"%GBC%\Winput.exe" "$input" "ENTER URL PREFIX" "http://a friendly rom site.com/roms/?dir=">"%GBC%\prefix.ini"
if %ERRORLEVEL%==1 goto :QUITOUT
for /f "tokens=1,2* delims=/" %%a in ('type "%GBC%\prefix.ini"') do set PRFX=%%~a//%%~b
for /f "delims=" %%a in ('type "%GBC%\prefix.ini"') do set SITEPRFX=%%~a
if "%PRFX%"=="" goto :ENTERURL
for /f "tokens=1,2,3 delims=/" %%a in ('type "%GBC%\prefix.ini"') do set PRFN=%%~b
set COMLIST=community.ini
echo.%SITETYPE%:%PRFN%:"%SITEPRFX%">>"%GBC%\%COMLIST%"
for /f "tokens=2 delims=:/" %%a in ('type "%GBC%\prefix.ini"') do set REPO=%%~a
set SITEMAN=1
exit /b

:DELINIS
del /q "%GBC%\romrepo.ini"
del /q "%GBC%\community.ini"
del /q "%GBC%\net\%ROMDPT%\*.ini"
del /q "%GBC%\net\%ROMDPT%\*.html"
del /q "%GBC%\net\%TIA%\*.ini"
del /q "%GBC%\net\%TIA%\*.html"
del /q "%GBC%\net\%RJFRND%\*.ini"
del /q "%GBC%\net\%RJFRND%\*.html"
set NEWQ=1
goto :MAKEREPO

:SelList
set NEWQ=
set SITEMAN=
set COMLIST=community.ini
set REPO=

:MAKEREPO
echo.-------->"%GBC%\romrepo.ini"
echo.-NEW->"%GBC%\romrepo.ini"
echo.-------->>"%GBC%\romrepo.ini"
if not exist "%GBC%\%COMLIST%" call :QUERYCOM
if "%SITEMAN%"=="1" goto :%SITETYPE%
for /f "tokens=1,2* delims=:" %%a in ('type "%GBC%\%COMLIST%"') do echo."%%~b">>"%GBC%\romrepo.ini"
echo.-RESET->>"%GBC%\romrepo.ini"
"%GBC%\fart.exe" "%GBC%\romrepo.ini"  "\"" --remove
"%GBC%\Wselect.exe" "%GBC%\romrepo.ini" "Select a ROM-Repo" "set REPO=$item" > "%GBC%\ROMREPO.cmd"
call "%GBC%\ROMREPO.cmd"
if "%REPO%"=="--------" goto :SelList
if "%REPO%"=="" goto :INIT
if "%REPO%"=="-RESET-" goto :DELINIS
if "%REPO%"=="-NEW-" call :-NEW-
if "%NEWQ%"=="1" goto :%SITETYPE%
set FNDTYP=
for /f "tokens=1,2* delims=:/" %%a in ('type "%GBC%\%COMLIST%"') do (
if "%%~b"=="%REPO%" set SITETYPE=%%~a
if "%%~b"=="%REPO%" set PRFX=%%~b
if "%%~b"=="%REPO%" set SITELOC=%%~c
if "%%~b"=="%REPO%" set FNDTYP=1
)
if "%SITETYPE%"=="SITE-PARSE" set REPTYP=%ROMDPT%
if "%SITETYPE%"=="SITE-PARSE" set REPTYP=%ARCORG%
if "%FNDTYP%"=="1" call :%SITETYPE%
if "%SITELOC%"=="" goto :SelList
exit /b

:ARCHIVE
call "%GBC%\romarchive.bat">>"%GBC%\logs\romarchive.log"
goto :SelList



:REMOTE-JACKET
:TOSEC-SET
:NO-INTRO-SET
goto :SelList



:SITE-PARSE
call "%GBC%\ROMDPT.bat">>"%GBC%\logs\ROMDPT.log"
goto :SelList
:fingetroms
