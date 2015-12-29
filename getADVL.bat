set CEMU=%ADVL%
set /A EMUNUM=44
set CEMUXE=
set ACTFILE=
set CEMUFILE=

%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing %CEMU%"  /marquee
set urlNthL=%EMUNUM%
set ADVLURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set ADVLURL=%%~a
popd
for /f "delims=" %%a in ("%ADVLURL%") do (
set ACTNAME=%%~na
set ACTFILE=%%~a
)


:CEMUAUTO
set CURHASH=
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%XBMC%\%ADVL%\*.zip"') do (
set CEMUXE=%%~a
set CEMUFILE=%%~nxa
)
for /f "tokens=1 delims=/ " %%a in ('"%GBC%\fciv.exe" "%GBC%\net\%XBMC%\%ADVL%\%ADVLURL%"') do if "%%~a" NEQ "File" set CURHASH=%%~a
set HASHFILE=
for %%a in ("%GBC%\updaterepo.ini") do set HASHFILE=%%~a
if not exist "%HASHFILE%" for %%a in ("%GBC%\currentArchive.set") do set HASHFILE=%%~a 
for /f "tokens=1,2 delims=:" %%a in ('type "%HASHFILE%"') do if "%%~b"=="%CURHASH%" goto :UPDATE
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%XBMC%\%ADVL%\%ADVL%*.*"') do set /A GETBCK+=1
if exist "%GBC%\net\%XBMC%\%ADVL%\%ACTFILE%" rename "%GBC%\net\%XBMC%\%ADVL%\%ACTFILE%" "%ACTNAME%.0x0%GETBCK%"
SET EMUNOTHERE=
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XBMC%\%ADVL%" "%MIR1%/%ADVLURL%" "%MIR2%/%ADVLURL%" "%MIR3%/%ADVLURL%" "%MIR4%/%ADVLURL%" "%MIR5%/%ADVLURL%"
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%XBMC%\%ADVL%\*.zip"') do (
set ADVLXE=%%~a
set ADVLFILE=%%~nxa
)


pushd "%GBC%\net\%XBMC%\%ADVL%"
if not exist "%CEMUFILE%" SET EMUNOTHERE=1
if "%EMUNOTHERE%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Not Found." /Stop /sound /timeout:1
popd
if "%EMUNOTHERE%" NEQ "1" call :UPDATE
exit /b

:UPDATE
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set") do if "%%~nxa"=="%CEMUFILE%" "%GBC%\fart.exe" "%GBC%\currentArchive.set" "%%~b" "%CURHASH%"

:no_ADVL
