set BIOSFSEL=
set BIOARC=
"%GBC%\wbox.exe" "RJ_GUI" "#######################^[DOWNLOAD]^Download using torrents, magnets and urls^^#######################^[INSTALL]^Install BIOS files to your emulators." "Download;Install;Menu" /DB=2 /BW=100
if %ERRORLEVEL%==1 goto :DOWNLOADING
if %ERRORLEVEL%==2 goto :INSTALLING
if %ERRORLEVEL%==3 goto :bioscancel
goto :fingetbioses

:INSTALLING
pushd "%GBC%\net\%BIOS%"
"%GBC%\wbox.exe" "RJ_GUI" "Choose a method of Searching for BIOS files.^#######################^[CRC]^Search ALL files for known CRC hashes^^#######################^[GUESS]^#######################^Search for BIOS files using likely names^^#######################^[SELECT]^Select a system or BIOS file to sort^" "CRC;GUESS;SELECT;Menu" /DB=2 /BW=100
if %ERRORLEVEL%==1 goto :PROBABLE
if %ERRORLEVEL%==2 goto :BIOSPROC
if %ERRORLEVEL%==3 goto :SELECT
if %ERRORLEVEL%==4 goto :bioscancel
goto :fingetbioses

:SELECT
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee
call "%GBC%\rehash.bat">>"%GBC%\logs\rehash.log"
call "%GBC%\biosemusel.bat">>"%GBC%\logs\biosemusel.log"
call "%GBC%\mamecopy.bat">>"%GBC%\logs\mamecopy.log"
call "%GBC%\messcopy.bat">>"%GBC%\logs\messcopy.log"
set HIDEN=-H
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
call "%GBC%\allcrc.bat">>"%GBC%\logs\allcrc.log"
set HIDEN=+H
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"

:REXTRACT
set INARC=
for /f "delims=" %%a in ('dir /b/a-d-h "*.7z" "*.rar" "*.zip"') do (
if /i "%%~xa"==".7z" "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]7Zs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".zip" "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]ZIPs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".rar" "%UNRAR%" e -y -o+"%%~nxa" "%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]RARs\%%~nxa" && SET INARC=1
)
if "%INARC%"=="1" goto :SELECT
if "%CVAREMU%"=="%MESS%" goto :MESSCHK
if "%CVAREMU%"=="%MAME%" goto :MAMECHK
pushd "%GBC%\net\BIOS"
for /f "delims=" %%a in ('dir /b/a-dh') do attrib -h "%%~a"
popd
call "%GBC%\allcrc.bat">>"%GBC%\logs\allcrc.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1

set CHKONE=
set ONESYS=
goto :fingetbioses

:PROBABLE
set GTLOOP=:PROBABLE
set BIOSI=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee
set SRCH=h
set HIDEN=-H
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
call "%GBC%\rehash.bat">>"%GBC%\logs\rehash.log"
call "%GBC%\allcrc.bat">>"%GBC%\logs\allcrc.log"
call "%GBC%\mamecopy.bat">>"%GBC%\logs\mamecopy.log"
call "%GBC%\messcopy.bat">>"%GBC%\logs\messcopy.log"
set SRCH=-h
set HIDEN=+H
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
set INARC=
for /f "delims=" %%a in ('dir /b/a-d-h "*.7z" "*.rar" "*.zip"') do (
if /i "%%~xa"==".7z" "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]7Zs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".zip" "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]ZIPs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".rar" "%UNRAR%" e -y -o+"%%~nxa" "%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]RARs\%%~nxa" && SET INARC=1
)
if "%INARC%"=="1" %BSTRT% "%WBUSY%" "Archives Found^Re-indexing" /marquee
if "%INARC%"=="1" goto %GTLOOP%


%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :fingetbioses

:MESSCHK
SET MESSXST=
set BIOSI=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee
if exist "%GBE%\%EMUZ%\%MESS%" SET MESSXST=1
if exist "%GBE%\%EMUZ%\%UME%" SET MESSXST=1
if "%MESSXST%"=="1" call "%GBC%\messbios.bat">>"%GBC%\logs\messbios.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :fingetbioses

:MAMECHK
set MAMEXST=
set BIOSI=1

%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee
if exist "%GBE%\%EMUZ%\%MAME%" set MAMEXST=1
if "%MAMEXST%"=="1" call "%GBC%\net\mamebios.bat">>"%GBC%\logs\mamebios.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :fingetbioses

:BIOSPROC
set BIOSI=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee
call :REXTRACT
call "%GBC%\mamecopy.bat">>"%GBC%\logs\mamecopy.log"
call "%GBC%\messcopy.bat">>"%GBC%\logs\messcopy.log"
set HIDEN=-H
set SRCH=h
%BSTRT% "%WBUSY%" "RJ_GUI" "Moving Identified BIOS files." /marquee
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
call "%GBC%\biosproc.bat">>"%GBC%\logs\biosproc.log"
set HIDEN=+H
set SRCH=-h
call "%GBC%\BiosKnown.bat">>"%GBC%\logs\BiosKnown.log"
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete." /stop /timeout:1
goto :INSTALLING

:REXTRACT
SET GTLOOP=:REXTRACT
set INARC=
for /f "delims=" %%a in ('dir /b/a-d-h "*.7z" "*.rar" "*.zip"') do (
if /i "%%~xa"==".7z" "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]7Zs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".zip" "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]ZIPs\%%~nxa" && SET INARC=1
if /i "%%~xa"==".rar" "%UNRAR%" e -y -o+"%%~nxa" "%GBC%\net\BIOS" && move /y "%%~nxa" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]RARs\%%~nxa" && SET INARC=1
)
if "%INARC%"=="1" %BSTRT% "%WBUSY%" "Archives Found^Re-indexing" /marquee
if "%INARC%"=="1" goto %GTLOOP%
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :fingetbioses

:DOWNLOADING
"%GBC%\wbox.exe" "RJ_GUI" "Select a ''.TORRENT file'' or enter a URL/MAGNET." "Torrent;URL;Menu" /DB=4 /BW=100
if %ERRORLEVEL%==1 goto :SelFile
if %ERRORLEVEL%==2 goto :URL
if %ERRORLEVEL%==3 goto :bioscancel
goto :fingetbioses

:SelArc
set CHKONE=
set BIOARC=1
set BIOSI=1

%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee

call "%GBC%\rehash.bat">>"%GBC%\rehash.log"
call "%GBC%\BiosSelection.bat">>"%GBC%\logs\BiosSelection.log"
pushd "%GBC%\net\BIOS"
for /f "delims=" %%a in ('dir /b/a-dh') do attrib -h "%%~a"
popd
call "%GBC%\allcrc.bat">>"%GBC%\logs\allcrc.log"
goto :fingetbioses
	
:URL
"%GBC%\Winput.exe" "set INURL=$input" "Enter the URL for a game torrent."  > "%GBC%\url.ini"
if %ERRORLEVEL%==1 goto :bioscancel
pushd "%GBC%"
"%GBC%\fart.exe" "url.ini" "set INURL=" --remove
call :setURL
%WSTRT% "%ARIA2C%" --check-integrity=true --seed-time=0 --connect-timeout=10 --file-allocation=none --conditional-get=true --dir="%GBC%\net\BIOS" "%GETURLURL%"
goto :fingetbioses

:setURL
set urlNthL=1
set GETURLURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\url.ini" /L:%urlNthL%') do set GETURLURL=%%~a

:SelFile
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET TORURL=" "C:\*.torrent" "Where is the ''torrent file''?" /noquote') do %%a
if /I "%TORURL%"=="" goto :bioscancel
%WSTRT% "%ARIA2C%" --check-integrity=true --seed-time=0 --connect-timeout=10 --file-allocation=none --conditional-get=true --dir="%GBC%\net\BIOS" --torrent-file="%TORURL%"
goto :fingetbioses

:SelList
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET TORLIST=" "C:\*.set" "Where is the ''List file''?" /noquote') do %%a
if /I "%TORLIST%"=="" goto :bioscancel
"%GBC%\Wselect.exe" "%TORLIST%" "Select Torrent to download" "set URLNUM=$item" > "%GBC%\torlist.cmd"
if %errorlevel%==1 goto :bioscancel
CALL "%GBC%\torlist.cmd"
for %%A in ("%URLNUM:~0,1%") do set URLABV=%%~A
if "%URLNUM%"=="" goto :bioscancel
if "%URLABV%"=="-" goto :SelList
if "%URLNUM%"=="OTHER" goto :SelFile
%WSTRT% "%ARIA2C%" --check-integrity=true --seed-time=0 --connect-timeout=10 --file-allocation=none --conditional-get=true --dir="%GBC%\net\BIOS" "%URLNUM%"
goto :fingetbioses
:bioscancel
set BIOSCANCL=1
:fingetbioses
