set CEMU=XBMC
SET /A EMUNUM=48
set CEMUXE=
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
set CURHASH=
for /f "tokens=1 delims=/ " %%a in ('"%GBC%\fciv.exe" "%GBC%\net\%CEMUFILE%"') do if "%%~a" NEQ "File" set CURHASH=%%~a
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\updateRepo.ini"') do if "%%~b"=="%CURHASH%" goto :UPDATE
SET EMUNOTHERE=
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XBMC%" "%MIR1%/%XBMCURL%"
echo %ERRORLEVEL% >>"%GBC%\arialog.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Download Complete" /Stop /timeout:1
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%XBMC%\*.7z"') do (
set CEMUXE=%%~a
set CEMUFILE=%%~nxa
)
if "%CEMUXE%" NEQ "" set DWNSTAT=downloaded
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%CEMUXE%" -o"%GBC%\net\%XBMC%"
pushd "%GBC%\net\%CEMU%"
set DWNSTAT=not downloaded
if not exist "%CEMUFILE%" SET EMUNOTHERE=1
if not exist "%CEMUFILE%" set DWNSTAT=downloaded
if not exist "%CEMUFILE%" echo %CEMU%>>"%GBE%\%EMUZ%\notfound.ini"
if "%EMUNOTHERE%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Not Found." /Stop /sound /timeout:1
popd

if "%EMUNOTHERE%" NEQ "1" "%GBC%\fart.exe" call :UPDATE

exit /b

:UPDATE
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\currentArchive.set") do if "%%~nxa"=="%CEMUFILE%" "%GBC%\fart.exe" "%GBC%\currentArchive.set" "%%~b" "%CURHASH%"
