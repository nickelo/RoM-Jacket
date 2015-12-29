if "%ARPOP%"=="64" call :setopt
if "%RARCH%"=="64" call :setopt
goto :dxchk
:setopt
for %%A in ("/64bit") do set OPT64=%%~A
exit /b
:dxchk
if exist "%GBC%\dxdiag.ini" goto :DXSET

pushd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Detecting Hardware"  /marquee
%LAUNCH% dxdiag %OPT64% /dontskip /whql:off /tdxdiag.txt
rename "%GBC%\dxdiag.txt" "dxdiag.ini"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
:DXSET
set urlNthL=16
set DXVERSURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\dxdiag.ini" /L:%urlNthL%') do set DXVERSURL=%%~a

:DXVERSCONT
for /f "tokens=2 delims=:" %%A in ("%DXVERSURL%") do set DXVERS=%%~A
for /f "tokens=2 delims= " %%A in ("%DXVERS%") do set DXVR=%%~A
for /f "delims=" %%A in ("%DXVR:~0,3%") do set DXV=%%~A
