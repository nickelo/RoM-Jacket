set CEMU=OblyTile
SET /A EMUNUM=70
call "%GBC%\getEmu.bat">>"%GBC%\logs\getEmu.log"

if "%EMUNOTHERE%"=="1" goto :no_OBLYT

for %%A in ("%GBC%\net\%CEMU%\*.7z") do set OBLYTZ=%%~A
for /f "delims=" %%a in ('dir /b "%OBLYTZ%"') do set OBLYTFILE=%%~nxa
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :completeOBL

:no_OBLYT
SET OBLYINST=1
goto :EOF

:completeOBL
for /f "delims=" %%a in ('Wfolder.exe "SET OBLD=" "%GBE%\%EMUZ%" "Install OblyTile to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
if "%OBLD%"=="" goto :CANCELLED
for %%A in ("%OBLD:*:=%") do set OBLDdrv-ltr=%%~A
for %%A in ("%OBLD:~0,2%\") do set OBLYDIR=%%~A

:INSTALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing OblyTile" /marquee
if "%OBLYDdrv-ltr%"=="\" do set OBLYP=%OBLD:~0,2%
for %%A in ("%OBLD%\%OBLYT%") do set OBLY=%%~A

"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMUFILE%" -o"%OBLY%"
for /f "delims=" %%a in ('dir /b/a-d-h "%OBLY%\%OBLYT%*.exe"') do set OBLYXE=%%~nxa
if not exist "%OBLY%\%OBLYXE%" goto :no_OBLYT
%BSTRT% "%WFINS%" "RJ_GUI" "OblyTile Installed." /Stop /timeout:1
SET OBLYINST=1
goto :installed
:CANCELLED
SET OBLYINST=
:installed
