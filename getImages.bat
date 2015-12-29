set FNRTFILE=
set BCKDXE=
set BCKDFILE=
set BCKFAIL=
set BCKCALL=BCKDAUTO
set BCROP=
if "%DISPASPCT%"=="4x3" set BCROP=1	

pushd "%GBC%"
set urlNthL=60
if "%BCROP%"=="1" set urlNthL=105
if "%HCROP%"=="1" set urlNthL=105
set BCKDURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set BCKDURL=%%~a

:BCKDAUTO
if "%ALLMETA%" NEQ "1" %BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Backdrops" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BCKDURL%" "%MIR2%/%BCKDURL%" "%MIR3%/%BCKDURL%" "%MIR4%/%BCKDURL%" "%MIR5%/%BCKDURL%"
if "%BCROP%"=="1" goto :CROPTEST
if "%HCROP%"=="1" goto :CROPTEST
if not exist "%BACKDROP%" set BCKFAIL=1
if "%BCKFAIL%"=="1" goto :IMGFAIL
for %%A in ("%BACKDROP%") do set BCKDXE=%%~A
for /f "delims=" %%a in ('dir /b "%BCKDXE%"') do set FNRTFILE=%%~nxa
for /f "delims=" %%a in ('dir /b "%BCKDXE%"') do set BCKDFILE=%%~nxa
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :imagescomplete



:CROPTEST
if not exist "%BACKDROP%" set BCKFAIL=1
if "%BCKFAIL%"=="1" goto :IMGFAIL
for /f "delims=" %%A in ('dir /b/a-d "%BACKDEST%\*.zip"') do set BCKDXE=%%~A
for /f "delims=" %%a in ('dir /b "%BCKDXE%"') do set FNRTFILE=%%~nxa
for /f "delims=" %%a in ('dir /b "%BCKDXE%"') do set BCKDFILE=%%~nxa
if "%ALLMETA%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :imagescomplete
:IMGFAIL
%BSTRT% "%WFINS%" "RJ_GUI" "Download Failed" /Stop /timeout:2

:imagescomplete
popd
