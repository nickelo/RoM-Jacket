set CEMUXE=
set CEMUFILE=
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing %CEMU%"  /marquee
set urlNthL=%EMUNUM%
set CEMUURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set CEMUURL=%%~a
popd

:CEMUAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%CEMU%" "%MIR1%/%CEMUURL%" "%MIR2%/%CEMUURL%" "%MIR3%/%CEMUURL%" "%MIR4%/%CEMUURL%" "%MIR5%/%CEMUURL%"
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%CEMU%\*.7z"') do (
set CEMUXE=%%~a
set CEMUFILE=%%~nxa
)

if not exist "%GBC%\net\%CEMU%\%CEMUFILE%" SET EMUNOTHERE=1
if not exist "%GBC%\net\%CEMU%\%CEMUFILE%" echo %CEMU%>>"%GBE%\%EMUZ%\notfound.ini"
if "%EMUNOTHERE%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Not Found." /Stop /sound /timeout:1
