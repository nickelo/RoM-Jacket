TITLE INIT
set REALWINDOWS=1
for /f "tokens=2 delims=," %%a in ('wmic os get caption /format:csv') do SET WINGET=%%~a
for /f "tokens=3 delims= " %%a in ("%WINGET%") do set WINVER=%%~a
if exist "Z:\bin\sh" set REALWINDOWS=0
set LINKR=WINV
set KILLTSK=taskkill
set KILLOPT=/f /im
set KILLPID=/F /PID
if "%WINVER%"=="XP" set LINKR=WINLEG
if "%WINVER%"=="XP" set KILLTSK=tskill
if "%WINVER%"=="XP" set KILLOPT=
if "%WINVER%"=="XP" set KILLPID=
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO %KILLTSK% %KILLPID% %%A

%KILLTSK% %KILLOPT% BEGIN.exe
%KILLTSK% %KILLOPT% Wbox.exe
%KILLTSK% %KILLOPT% Wbusy.exe
%KILLTSK% %KILLOPT% Wselect.exe
%KILLTSK% %KILLOPT% Wfile.exe
%KILLTSK% %KILLOPT% Wfolder.exe
%KILLTSK% %KILLOPT% winput.exe
%KILLTSK% %KILLOPT% wget.exe
%KILLTSK% %KILLOPT% aria.exe
%KILLTSK% %KILLOPT% dxdiag.exe

FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)

FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
if "%REALWINDOWS%"=="0" for %%a in ("%USERPROFILE%\Desktop") do set DESKTOPDIR=%%~a

pushd "%~dp0"
pushd "RomJacket"
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do SET GBC=%%~A
del /q "%USERPROFILE%\Links\~RJ-Sort-Folder~.lnk"
del /q "%USERPROFILE%\Links\~Emulators~.lnk"
del /q "%USERPROFILE%\Links\~Consoles~.lnk"
del /q "logs\*.log"
del /q "*.ini"
del /q "*.cmd"
del /q "custEmu.bat"
del /q "%DESKTOPDIR%\RJ-Sort-Folder.lnk"
del /q "%DESKTOPDIR%\RJ-Configurator.lnk"
del /q "%DESKTOPDIR%\RJ-Bios-Folder.lnk"
mkdir "logs"
copy /y "dnd.prt" "BEGIN.vbs"
"fart.exe" "BEGIN.vbs" [BAT] "BEGIN.bat"
"fart.exe" "BEGIN.vbs" [GBC] "%GBC%"
"fart.exe" "BEGIN.vbs" [INI] "copy.ini"
xxmklink.exe "Configure.lnk" "%CD%\BEGIN.bat" ">\"%CD%\logs\BEGIN.log"\" "%CD%" Configure-Rom-Jacket 7 "%CD%\RomJacket.ico"
xxmklink.exe "Initialize-Rom-Jacket.lnk" "%CD%\INTL.bat" " " "%CD%" Initialize-Rom-Jacket 7 "%CD%\restart.ico"
move /Y Initialize-Rom-Jacket.lnk "%CD%\..\"
move /Y Configure.lnk "%CD%\..\"
wbox.exe "RoM-Jacket" "Program Initialized." "INITIALIZED" /BW=100 /TM=2 
if "%REALWINDOWS%"=="0" call "%GBC%\BEGIN.bat">"%GBC%\logs\BEGIN.log"
exit /b
