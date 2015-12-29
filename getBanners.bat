
pushd "%GBC%"
:getBanners
set FLDPCK=1
set urlNthL=58
set BANNURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set BANNURL=%%~a


:BANNAUTO
if "%ALLMETA%" NEQ "1" %BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Console Banners" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%BANN%" "%MIR1%/%BANNURL%" "%MIR2%/%BANNURL%" "%MIR3%/%BANNURL%" "%MIR4%/%BANNURL%" "%MIR5%/%BANNURL%"
for %%A in ("%GBC%\net\%BANN%\*.zip") do set BANNXE=%%~A
if not exist "%BANNXE%" goto :nothere
for /f "delims=" %%a in ('dir /b "%BANNXE%"') do set BANNFILE=%%~nxa
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
:Bannerscomplete
popd
exit /b

:nothere
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Could not Download Console Banners" /Stop /timeout:1
popd
