set ONESYS=
pushd "%GBC%\net\%BIOS%"
del /q "%GBC%\inzip*.ini"
for /f "delims=" %%a in ('dir /b/ad "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~a"
if "%BIOSI%"=="" goto :BIOSQ
if "%BIOSFSEL%"=="" goto :BIOSFILE
goto :BIOSPROC


:BIOSFILE
set BIOSF=
%BSTRT% "%WFINS%" "RJ_GUI" "Select" /stop /timeout:1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET BIOSF=" "%GBC%\net\BIOS\*.*" "Where is the ''BIOS file''?" /noquote') do %%a
if /I "%BIOSF%"=="" goto :QUITOUT
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing" /marquee

:BIOSCOPY
copy /Y "%BIOSF%" "%GBC%\net\BIOS"
for %%a in ("%BIOSF%") do (
set BIOSET=
set BIOSN=%%~nxa
set BIOSXT=%%~xa
)
CALL :TESTARCEXT
goto :ANOTHERBIOS

:BIOSFIN
SET BIOSI=
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GBC%\net\BIOS"') do (
SET FROMDND=
SET BIOSN=%%~nxa
SET BIOSXT=%%~xa
call :DNDTEST
)
goto :EXITBIOS

:DNDTEST
for /f "delims=" %%a in ('type "%GBC%\bioslist.ini"') do if "%%~a"=="%BIOSN%" SET FROMDND=1
if "%FROMDND%"=="1" exit /b
call :TESTARCEXT
exit /b

:BIOSPROC
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files" /marquee
for /f "delims=" %%a in ('dir /b /a-d "%GBC%\net\BIOS"') do (
SET BIOSET=:7ZIN
SET BIOSN=%%~nxa
SET BIOSXT=%%~xa
call :TESTARCEXT
call :INBIOS
)
goto :FINBIOS

:FINBIOS
if "%BIOSI%"=="1" goto :BIOSFIN
goto :ANOTHERBIOS

:INBIOS
if "%BIOSN%"=="" exit /b
if exist "%GBC%\inzipz.ini" call :ZIPIN
if exist "%GBC%\inzip7.ini" call :7ZIN
if exist "%GBC%\inzipt.ini" call :TARIN
if exist "%GBC%\inzipr.ini" call :RARIN
exit /b

:ZIPIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzipz.ini"') do "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS"
call :DELEMPTY
exit /b

:TARIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzipt.ini"') do "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS"
call :DELEMPTY
exit /b
:7ZIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzip7.ini"') do "%SEVENZIP%" e -y "%%~nxa" -o"%GBC%\net\BIOS"
call :DELEMPTY
exit /b
:RARIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzipr.ini"') do "%UNRAR%" e -y -o+"%%~nxa" "%GBC%\net\BIOS"
call :DELEMPTY
exit /b

:DELEMPTY
for /f "delims=" %%d in ('dir /s /b /ad-h "%GBC%\net\%BIOS%"') do rd /q "%%d"
exit /b

:TESTARCEXT
if /I "%BIOSXT%"==".zip" call :BIOSZCONT
if /I "%BIOSXT%"==".tar" call :BIOSRCONT
if /I "%BIOSXT%"==".7z" call :BIOS7CONT
if /I "%BIOSXT%"==".rar" call :BIOSRCONT
exit /b

:BIOSZCONT
for /f "tokens=2 delims==" %%a in ('"%SEVENZIP%" l -slt "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKARC
)
"%SEVENZIP%" e -y "%BIOSN%" -o"%GBC%\net\BIOS"
set BIOSET=1
exit /b

:CHECKRAR
if "%BIOSZX%"==".zip" call :INRARZ
if "%BIOSZX%"==".rar" call :INRARR
if "%BIOSZX%"==".7z" call :INRARS
if "%BIOSZX%"==".gz" call :INRART
if "%BIOSZX%"==".tar" call :INRART
exit /b

:INRARZ
for %%a in ("%BIOSZR%:") do echo.%%~a>>"%GBC%\inzipz.ini"
exit /b
:INRARR
for %%a in ("%BIOSZR%:") do echo.%%~a>>"%GBC%\inzipr.ini"
exit /b
:INRARS
for %%a in ("%BIOSZR%:") do echo.%%~a>>"%GBC%\inzip7.ini"
exit /b
:INRART
for %%a in ("%BIOSZR%:") do echo.%%~a>>"%GBC%\inzipt.ini"
exit /b

:CHECKARC
SET BIOSZR=%BIOSZN:~1,999%
if "%BIOSZX%"==".zip" call :INRARZ
if "%BIOSZX%"==".rar" call :INRARR
if "%BIOSZX%"==".7z" call :INRARS
if "%BIOSZX%"==".tar" call :INRART
exit /b


:BIOSRCONT
md "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]ZIPs"
for /f "tokens=2 delims==" %%a in ('"%SEVENZIP%" l -slt "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKARC
)
"%SEVENZIP%" e -y "%BIOSN%" -o"%GBC%\net\BIOS"
move /y "%BIOSN%" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]ZIPs\"
set BIOSET=1
exit /b

:BIOSET
set BIOSET=1
exit /b

:BIOS7CONT
md "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]7Zs"
for /f "tokens=2 delims==" %%a in ('"%SEVENZIP%" l -slt "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKARC
)
"%SEVENZIP%" e -y "%BIOSN%" -o"%GBC%\net\BIOS"
move /y "%BIOSN%" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]7Zs\"
set BIOSET=1
exit /b

:BIOSRCONT
md "%GBG%\%ROMJ%\SORTED ARCHIVES\RARs"
for /f "delims=" %%a in ('"%UNRAR%" vb "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKRAR
)
"%UNRAR%" e -y -o+ "%BIOSN%"
move /y "%BIOSN%" "%GBG%\%ROMJ%\SORTED ARCHIVES\[BIOS]RARs\"
set BIOSET=1
exit /b

:ANOTHERBIOS
if "%ONESYS%"=="1" goto :EXITBIOS
if "%DRGND%"=="1" goto :EXITBIOS
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "^^Do you have another BIOS file you'd like to install?^^" "Yes;No"
if %ERRORLEVEL%==1 goto :BIOSQ
if %ERRORLEVEL%==2 goto :QUITOUT
goto :EXITBIOS

:EXPLAINBIOS
"%GBC%\wbox.exe" "RJ_GUI" "A BIOS is needed by some console emulators to properly function.^^You can find and install BIOS files from the web^" "Locate;BiosMenu" /AL
if %ERRORLEVEL%==1 goto :BIOSQ
if %ERRORLEVEL%==2 goto :QUITOUT
goto :EXITBIOS

:BIOSQ
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%%d"
CALL "%GBC%\getBios.bat">>"%GBC%\logs\getBios.log"
if "%BIOSCANCL%"=="1" goto :RESETBIOS
if "%BIOARC%"=="1" goto :BIOSFILE
if "%BIOSFSEL%"=="1" goto :BIOSFILE
goto :BIOSPROC

:BIOSUAUTO
mkdir "%GBC%\net\BIOS\urlget"
%WSTRT% "%WGET%" --no-check-certificate -t 2 -nc -c  -w 1 "%MIR1%/%BIOSU%" -P "%GBC%\net\BIOS\urlget"
for /f "delims=" %%a in ('dir /b "%GBC%\net\BIOS\urlget"') do (
set BIOSN=%%~nxa
set BIOSXT=%%~xa
set BIOSA=1
)
move /Y "%GBC%\net\BIOS\urlget\%BIOSN%" "%GBC%\net\BIOS"
:BIOSURLGET
if "%BIOSN%"=="" goto :EXPLAINBIOS
goto :TESTARCEXT

:EXITBIOS
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /stop /timeout:1
:RESETBIOS
set BIOSCANCL=
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /stop /timeout:1
:QUITOUT
