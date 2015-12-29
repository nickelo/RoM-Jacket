del /q "%GBC%\tmp.ini"
del /q "%GBC%\newversion.ini"
copy /y "%GBC%\download.ini" "%GBC%\src.ini"
for %%a in ("%GBC%\src.ini") do set SRCGET=%%~a
for %%a in ("%GBC%\download.ini") do set ARCGET=%%~a
for %%a in ("%GBC%\tmp.ini") do set DWNGET=%%~a
for /f "delims=" %%a in ('type "%GBC%\src.ini"') do set /a ARCNUM+=1
echo.-------------->"%DWNGET%"
echo.ALL>>"%DWNGET%"
echo.-------------->>"%DWNGET%"
del /q "%GBC%\download.ini"
call :INIT
SET /A ARCNUM=4
goto :MAKEHSH

:INIT
set ARCNUM=0
for /f "delims=" %%a in ('type "%DWNGET%"') do echo.%%~a>>"%ARCGET%"
for /f "delims=" %%a in ('type "%SRCGET%") do (
set /A ARCNUM+=1
echo.%%~a>>"%ARCGET%"
)
exit /b

:MAKEHSH
:MAKESELECTION
SET RECURSIVE=
if "%ARCNUM%"=="0" goto :QUITOUT
if %ARCNUM% LSS 4 goto :FINISHED

%BSTRT% "%WFINS%" "RJ_GUI" "Emulators Found" /STOP /Timeout:1
"%GBC%\Wselect.exe" "%ARCGET%" "archive to download" "set NEWARCH=$item" > "%GBC%\newarch.cmd"
if %errorlevel%==0 goto :QUITOUT
call "%GBC%\newarch.cmd"
if "%NEWARCH%"=="" goto :QUITOUT
if "%NEWARCH%"==" " goto :QUITOUT
if "%NEWARCH%"=="--------------" goto :MAKESELECTION
%BSTRT% "%WBUSY%" "RJ_GUI" "Searching Local Repository" /marquee
if "%NEWARCH%"=="ALL" SET goto :ALLUPDATES

:GETPARSE
for /f "tokens=1,2 delims=:" %%a in ('type "%ARCGET%"') do (
set HSHFILE=%%~nxa
set HSHFLN=%%~na
set HSHFULL=%%~a
set MD5HSH=%%~b
call :NEWVHSHMATCH
)
call :INIT
goto :MAKEHSH

:ALLUPDATES
for /f "delims=" %%a in ('type "%SRCGET%"') do (
set NEWARCH=%%~a
set HSHFILE=%%~nxa
set HSHFLN=%%~na
set HSHFULL=%%~a
set MD5HSH=%%~b
call :NEWVHSHMATCH
)
goto :MAKEHSH

:NEWVHSHMATCH
set GETBCK=
for /f "tokens=1,2 delims=:" %%a in ("%NEWARCH%") do (
set ARCF=%%~a
set ARCFIL=%%~nxa
set ARCHSH=%%~b
)

:MKBACKUP
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%HSHFULL%*.*"') do set /A GETBCK+=1
if "%HSHFILE%"=="%ARCFIL%" rename "%GBC%\net\%HSHFULL%" "%HSHFLN%.0x0%GETBCK%"

:TRANSFORMURL
for %%a in ("%HSHFULL:\=/%") do set URIP=%%~a
for %%a in ("%%HSHFULL:%HSHFILE%=%%") do call set TRANSPATH=%%~a
for %%a in ("%GBC%\net\%TRANSPATH%") do set TRANSTMP=%%~a
for %%a in ("%TRANSTMP:~0,-1%") do set TRANSP=%%~a
:GETURL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading %ARCFIL%" /marquee
set LCLHSH=
if "%HSHFILE%"=="%ARCFIL%" %WSTRT% "%WGET%" --no-check-certificate -t 2 -N -w 1 "%MIR1%/%URIP%" -P "%TRANSP%"
if %errorlevel% GEQ 1 exit /b
"%GBC%\fart.exe" "%SRCGET%" "%ARCF%:%ARCHSH%" --remove
SET /a ARCNUM=-1

:CHKURL
for /f "tokens=1 delims=/ " %%a in ('fciv.exe "%GBC%\net\%HSHFULL%"') do if "%%~a" NEQ "File" set LCLHSH=%%~a

:UPDTREPO
for /F "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set"') do if "%%~nxa"=="%ARCFIL%" "%GBC%\fart.exe" "%GBC%\currentArchive.set" "%%~b" "%LCLHSH%"

:FINISHED
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /Stop /timeout:1
del /q "%ARCGET%"

call :INIT
goto :MAKEHSH

:QUITOUT
SET ARCNUM=0
%BSTRT% "%WFINS%" "RJ_GUI" "Done" /STOP /Timeout:1
