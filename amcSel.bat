:READD
set /a PLAYERN=1
SET Player1=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player1=" "*.amgp" "Select Player 1" /noquote') do %%a
if "%Player1%"=="" goto :OPEN
SET Player2=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player2=" "*.amgp" "Select Player 2" /noquote') do %%a
if "%Player2%"=="" goto :CONFIRMPROP
SET Player3=
set /a PLAYERN+=1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player3=" "*.amgp" "Select Player 3" /noquote') do %%a
if "%Player3%"=="" goto :CONFIRMPROP
SET Player4=
set /a PLAYERN+=1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player4=" "*.amgp" "Select Player 4" /noquote') do %%a
if "%Player4%"=="" goto :CONFIRMPROP
set /a PLAYERN+=1

:CONFIRMPROP
"%GBC%\wbox.exe" "RJ_GUI" "You have selected %PLAYERN% profiles" "Reset;Confirm" /db=2
if %ERRORLEVEL%==1 goto :OPEN
if %ERRORLEVEL%==2 goto :CONFIRMED
goto :COMPLETE

:CONFIRMED
for /f "delims=" %%a in ('dir /b/a-d-h "%SOURCES%\*.%EXTENSION%"') do echo.%%~na>>"%GBC%\sources.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating profiles" /marquee

:P1
if "%PRFX%"=="1" set PREFIX=.p1
if "%SFX%"=="1" set SUFFIX=Player 1
for /f "delims=" %%a in ('type "%GBC%\sources.ini"') do mkdir "%DESTIN%\%%~a" & copy /y "%Player1%" "%DESTIN%\%%~a\%PREFIX%%SUFFIX%%EXT1%"
if "%PLAYERN%"=="1" goto :COMPLETE
:P2
if "%PRFX%"=="1" set PREFIX=.p2
if "%SFX%"=="1" set SUFFIX=Player 2
for /f "delims=" %%a in ('type "%GBC%\sources.ini"') do copy /y "%Player2%" "%DESTIN%\%%~a\%PREFIX%%SUFFIX%%EXT2%"
if "%PLAYERN%"=="2" goto :COMPLETE
:P3
if "%PRFX%"=="1" set PREFIX=.p3
if "%SFX%"=="1" set SUFFIX=Player 3
for /f "delims=" %%a in ('type "%GBC%\sources.ini"') do copy /y "%Player3%" "%DESTIN%\%%~a\%PREFIX%%SUFFIX%%EXT3%"
if "%PLAYERN%"=="3" goto :COMPLETE
:P4
if "%PRFX%"=="1" set PREFIX=.p4
if "%SFX%"=="1" set SUFFIX=Player 4
for /f "delims=" %%a in ('type "%GBC%\sources.ini"') do copy /y "%Player4%" "%DESTIN%\%%~a\%PREFIX%%SUFFIX%%E%"
:COMPLETE
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:2
