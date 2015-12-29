set EMUNOTHERE=
set CEMUXE=
set ACTFILE=
set CEMUFILE=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing %CEMU%"  /marquee
set urlNthL=%EMUNUM%
set CEMUURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set CEMUURL=%%~a
popd
for /f "delims=" %%a in ("%CEMUURL%") do (
set ACTNAME=%%~na
set ACTFILE=%%~a
)

:CEMUAUTO
if "%EMUINST%" NEQ "Manual" goto :GETFILE
if "%PREVERROR%" NEQ "13" goto :GETFILE
if "%EMUNUM%" NEQ "%PREVNUM%" goto :GETFILE
set GETBCK=
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%CEMU%\%CEMU%*.*"') do set /A GETBCK+=1
for /f "tokens=1,2 delims=/" %%a in ("%ACTFILE%") do (
set ACTPTH=%%~a
set ACTGET=%%~b
)
SET EMUNOTHERE=
if exist "%GBC%\net\%CEMU%\%ACTGET%" rename "%GBC%\net\%CEMU%\%ACTGET%" "%ACTNAME%.0x0%GETBCK%"

:GETFILE
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --auto-file-renaming=false --conditional-get=true --dir="%GBC%\net\%CEMU%" "%MIR1%/%CEMUURL%" "%MIR2%/%CEMUURL%" "%MIR3%/%CEMUURL%" "%MIR4%/%CEMUURL%" "%MIR5%/%CEMUURL%"
set PREVERROR=%errorlevel%
if "%PREVERROR%"=="13" for /f "delims=" %%a in ("%EMUNUM%") do set PREVNUM=%%~a

:HAVEARC
set CURHASH=
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%CEMU%\*.7z"') do (
set CEMUXE=%%~a
set CEMUFILE=%%~nxa
)
for /f "tokens=1 delims=/ " %%a in ('"%GBC%\fciv.exe" "%GBC%\net\%CEMUFILE%"') do if "%%~a" NEQ "File" set CURHASH=%%~a
set HASHFILE=
for %%a in ("%GBC%\updaterepo.ini") do set HASHFILE=%%~a
if not exist "%HASHFILE%" for %%a in ("%GBC%\currentArchive.set") do set HASHFILE=%%~a 
for /f "tokens=1,2 delims=:" %%a in ('type "%HASHFILE%"') do if "%%~b"=="%CURHASH%" goto :UPDATE

pushd "%GBC%\net\%CEMU%"
if not exist "%CEMUFILE%" SET EMUNOTHERE=1
if "%EMUNOTHERE%"=="" popd && exit /b
%BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Not Found." /Stop /sound /timeout:1
popd

:UPDATE
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set") do if "%%~nxa"=="%CEMUFILE%" "%GBC%\fart.exe" "%GBC%\currentArchive.set" "%%~b" "%CURHASH%"