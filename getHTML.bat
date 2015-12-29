:GETINDEX
%BSTRT% "%WBUSY%" "RJ_GUI" "Getting ROM list for selected system." /marquee
if "%NOINDX%"=="1" for /f "tokens=1,2 delims=/" %%a in ("%PRFX%") do set URLPRFX=%%~a//%%~b
for /f "tokens=1,2* delims=:" %%a in ('type "%GBC%\%COMLIST%"') do set URLPRFX=%%~c

%WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBC%\net\%ROMDPT%" "%URLPRFX%%RDCONS%%REGION%"

if not exist "%GBC%\net\%ROMDPT%\index.html" goto :RESETFAIL
rename "%GBC%\net\%ROMDPT%\index.html" "%CSTCONS%%RGN%.html"

%BSTRT% "%WBUSY%" "RJ_GUI" "Converting list for RoM-Jacket" /marquee
"%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\%CSTCONS%%RGN%.html" " data-href=" "::"

for /f "tokens=* delims= " %%a in ('type "%GBC%\net\%ROMDPT%\%CSTCONS%%RGN%.html"') do (
set ARB=%%~a
call :ARB
)
"%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\%CSTCONS%%RGN%.ini" "\"" --remove
if exist "%GBC%\net\%ROMDPT%\consoles.ini" "%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\consoles.ini" "[Game Manuals]" --remove
if exist "%GBC%\net\%ROMDPT%\consoles.ini" "%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\consoles.ini" "[Hacks]" --remove
if exist "%GBC%\net\%ROMDPT%\consoles.ini" "%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\consoles.ini" "[Homebrew]" --remove
if exist "%GBC%\net\%ROMDPT%\consoles.ini" "%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\consoles.ini" "[Pending Approval]" --remove
if exist "%GBC%\net\%ROMDPT%\consoles.ini" set NOINDX=2
if "%CSTCONS%%RGN%"=="consoles" echo.-------->>"%GBC%\net\%ROMDPT%\consoles.ini"
if "%CSTCONS%%RGN%"=="consoles" echo.-SEARCH->>"%GBC%\net\%ROMDPT%\consoles.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "List converted." /stop /timeout:1
exit /b

:ARB
if "%ARB:~0,1%"=="~0,1" exit /b
for %%a in ("%ARB:~1,4%") do set ROMD=%%~a
if "%ROMD%" NEQ "li d" exit /b
call :GETSOME
exit /b

:GETSOME
for /f "tokens=1,2 delims=:" %%a in ("%ARB:~15,-2%") do (
set FB=%%~a
set FN=%%~b
)
for %%a in ("%FB:~0,-1%") do set FB=%%~a
if "%FB%"==".." exit /b
if "%CSTCONS%"=="consoles" goto :CONEXP
echo."%FB%":"%FN%">>"%GBC%\net\%ROMDPT%\%CSTCONS%%RGN%.ini"
exit /b

:CONEXP
echo."%FB%">>"%GBC%\net\%ROMDPT%\consoles.ini"
exit /b

:RESETFAIL
set CANCELLED=1