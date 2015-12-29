pushd "%GBC%"
for %%A in ("%GBC%\unrar.exe") do set UNRAR=%%~A
"%GBC%\fart.exe" "locset.ini" "[RAR]" "%UNRAR%"

for %%A in ("%GBC%\7za.exe") do set SEVENZIP=%%~A
"%GBC%\fart.exe" "locset.ini" "[SVZ]" "%SEVENZIP%"
goto :mb_tst

:mb_tst
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1

:gb_tst
if exist "%PROGRAMDATA%\%MBRWS%\%PLGN%\%GBRWS%.dll" SET GBR=1

:EXTRACTST
if "%REALWINDOWS%"=="0" goto :WINE

:VARCHK
if "%WINVER%"=="XP" goto :XP
set WSTRT=start /min /w ""
set BSTRT=start ""
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
for %%a in ("%GBC%\aria2c.exe") do set ARIA2C=%%~a
for %%a in ("findstr") do set FNDSTR=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
set ROBOCPY=robocopy
goto :resolution

:XP
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
goto :resolution
:WINE
for %%a in ("%GBC%\findstr.exe") do set FNDSTR=%%a
set WSTRT=start /w
set BSTRT=start
for %%a in ("%GBC%\wbusy.exe") do set WBUSY=%%~a
for %%a in ("%GBC%\wbusy.exe") do set WFINS=%%~a
for %%a in ("%GBC%\robocopy.exe") do set ROBOCPY=%%a
for %%a in ("%GBC%\aria2c.exe") do set ARIA2C=%%~a
for %%a in ("%GBC%\wget.exe") do set WGET=%%~a
goto :resolution

:resolution
call "%GBC%\defaultres.bat"
"%GBC%\fart.exe" "locset.ini" [REX] %DREZX%
"%GBC%\fart.exe" "locset.ini" [REY] %DREZY%
popd
