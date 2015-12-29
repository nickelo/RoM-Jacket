%BSTRT% "%WBUSY%" "RJ_GUI" "Checking for updates to your downloaded archives." /marquee

del /q "%GBC%\update.vbs"
del /q "%GBC%\download.ini"
if exist "%GBC%\updaterepo.ini" goto :SELSOME


%BSTRT% "%WBUSY%" "RJ_GUI" "Retrieving update list." /marquee
%WSTRT% "%WGET%" --no-check-certificate -t 2 -N -w 1 "http://dl.dropbox.com/u/413403/updaterepo.ini" -P "%GBC%"


:SELSOME
%BSTRT% "%WBUSY%" "RJ_GUI" "Comparing files." /marquee
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\updaterepo.ini"') do (
set ARCNAME=%%~a
set ARCHASH=%%~b
if exist "%GBC%\net\%%~a" call :UPDTARCHV
if not exist "%GBC%\net\%%~a" "%GBC%\fart.exe" "%GBC%\updaterepo.ini" "%%~a:%%~b" --remove
)
copy /y "%GBC%\update.set" "%GBC%\update.vbs"

"%GBC%\fart.exe" "%GBC%\update.vbs" [CURRENTVERSION] "%GBC%\currentArchive.set"
"%GBC%\fart.exe" "%GBC%\update.vbs" [UPDATEFILE] "%GBC%\updaterepo.ini"
"%GBC%\fart.exe" "%GBC%\update.vbs" [DOWNLOAD] "%GBC%\download.ini"

cscript /b "%GBC%\update.vbs"

:DWNFCHK
set urlNthL=1
set DWNLNUM=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\download.ini" /L:%urlNthL%') do set DWNLNUM=%%~a
popd

:DWNFIN
if "%DWNLNUM%"=="" del /q "%GBC%\download.ini"

:UPDATE
if not exist "%GBC%\download.ini" goto :NOUPDATES
%BSTRT% "%WFINS%" "RJ_GUI" "Updates Found" /stop /Timeout:1
call "%GBC%\netCRC.bat">>"%GBC%\logs\netCRC.log"
exit /b

:UPDTARCHV
for /f "tokens=1 delims=/ " %%a in ('fciv.exe "%GBC%\net\%ARCNAME%"') do if "%%~a" NEQ "File" set CURRENTHASH=%%~a
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set"') do if "%%~a"=="%ARCNAME%" "%GBC%\fart.exe" "%SRCGET%" "%%~b" "%CURRENTHASH%"
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set"') do if "%%~a"=="%ARCNAME%" "%GBC%\fart.exe" "%GBC%\currentArchive.set" "%%~b" "%CURRENTHASH%"
exit /b

:NOUPDATES
%BSTRT% "%WFINS%" "RJ_GUI" "No updates Found" /stop /Timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "There are no updates at this time" "Okay" /TM=1
exit /b

:COMPLETE
pushd "%GBC%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
popd
