pushd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Updating your installation" /marquee
popd
del /q "%GBC%\update.vbs"
del /q "%GBC%\download.ini"
del /q "%GBC%\updatelist.ini"
%WSTRT% "%WGET%" --no-check-certificate -t 2 -N -w 1 "https://raw.githubusercontent.com/romjacket/RoM-Jacket/master/updatelist.ini" -P "%GBC%"
copy /y "%GBC%\update.set" "%GBC%\update.vbs"
"%GBC%\fart.exe" "%GBC%\update.vbs" [CURRENTVERSION] "%GBC%\currentversion.set"
"%GBC%\fart.exe" "%GBC%\update.vbs" [UPDATEFILE] "%GBC%\updatelist.ini"
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
goto :GITREPO
for /f "tokens=1 delims=#" %%a in ('type "%GBC%\download.ini"') do (
SET TRANSF=%%~nxa
SET TRANSG=%%~a
call :TRANSGET
)
copy /y "%GBC%\updatelist.ini" "%GBC%\currentversion.set"
goto :COMPLETE

:TRANSGET
for %%a in ("%TRANSG:\=/%") do set URIP=%%~a
for %%a in ("%%TRANSG:%TRANSF%=%%") do call set TRANSPATH=%%~a
for %%a in ("%GBC%\%TRANSPATH%") do set TRANSTMP=%%~a
for %%a in ("%TRANSTMP:~0,-1%") do set TRANSP=%%~a
%WSTRT% "%WGET%" --no-check-certificate -t 2 -N -w 1 "%GITREPO%\%URIP%" -P "%TRANSP%"
exit /b

:GITREPO
%BSTRT% "%WFINS%" "RJ_GUI" "NOTIFICATION" "UPDATE FOUND" /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Latest updates can be found at http://github.com/romjacket/RoM-Jacket/^^Git options here soon^" "Great!" /BW=280 /DB=1 /TM=10
if %errorlevel%==1 goto :COMPLETE
goto :QUITOUT

:NOUPDATES
"%GBC%\wbox.exe" "RJ_GUI" "There are no updates at this time" "Okay" /TM=1
:COMPLETE
pushd "%GBC%"
REM %BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:3
popd
