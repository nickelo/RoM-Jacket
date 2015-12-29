SET CEMU=%FLDR%
set FLDPCK=1
set /A EMUNUM=61
set CEMUXE=
set ACTFILE=
set CEMUFILE=

%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing %CEMU%"  /marquee
if "%ALLMETA%" NEQ "1" %BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Console Icons" /marquee
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
set CURHASH=
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%CEMU%\*.zip"') do (
set CEMUXE=%%~a
set CEMUFILE=%%~nxa
)
for /f "tokens=1 delims=/ " %%a in ('"%GBC%\fciv.exe" "%GBC%\net\%CEMUFILE%"') do if "%%~a" NEQ "File" set CURHASH=%%~a
set HASHFILE=
for %%a in ("%GBC%\updaterepo.ini") do set HASHFILE=%%~a
if not exist "%HASHFILE%" for %%a in ("%GBC%\currentArchive.set") do set HASHFILE=%%~a 
for /f "tokens=1,2 delims=:" %%a in ('type "%HASHFILE%"') do if "%%~b"=="%CURHASH%" goto :UPDATE
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%CEMU%\%CEMU%*.*"') do set /A GETBCK+=1
if exist "%GBC%\net\%CEMU%\%ACTFILE%" rename "%GBC%\net\%ACTFILE%" "%ACTNAME%.0x0%GETBCK%"
SET EMUNOTHERE=
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%CEMU%" "%MIR1%/%CEMUURL%" "%MIR2%/%CEMUURL%" "%MIR3%/%CEMUURL%" "%MIR4%/%CEMUURL%" "%MIR5%/%CEMUURL%"
pushd "%GBC%\net\%CEMU%"
for %%A in ("%GBC%\net\%CEMU%\*.zip") do set FLDRXE=%%~A
for /f "delims=" %%a in ('dir /b "%FLDRXE%"') do set FLDRFILE=%%~nxa 
if not exist "%CEMUFILE%" SET EMUNOTHERE=1
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Could not Download Console Icons" /Stop /timeout:1
if "%EMUNOTHERE%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Not Found." /Stop /timeout:1
popd

if "%EMUNOTHERE%" NEQ "1" call :UPDATE
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
exit /b

:UPDATE
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set") do if "%%~nxa"=="%CEMUFILE%" "%GBC%\fart.exe" "%GBC%\currentArchive.set" "%%~b" "%CURHASH%"
