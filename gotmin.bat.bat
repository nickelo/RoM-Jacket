SET GOTMIN=1
echo.%userprofile%>"user.ini"
FOR /F "delims=" %%a in ('type "%CD%\user.ini"') DO SET CURSR=%%~a
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
echo.%DESKTOPDIR%>"desk.ini"

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto :UACPrompt
) else ( goto :gotAdmin )

:UACQUERY
for /f "tokens=3 delims= " %%a in ('REG QUERY HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v EnableLUA') do set UACMODE=%%~a
if "%UACMODE%"=="0x0" goto :RESUMEUAC
wbox.exe "RoM-Jacket" "Would you like to Disable UAC and restart Windows?^RJ works best with UAC disabled." "Disable;Skip" /db=2 /TM=10
if %ERRORLEVEL%==1 goto :uacoff
if %ERRORLEVEL%==2 goto :skipuac
goto :uacoff

:uacoff
set UACON=1
goto :RESUMEUAC

:UACPrompt
echo. Set UAC = CreateObject^("Shell.Application"^) > "%temp%\disableUAC.vbs"
echo. Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params = %*:"=""
goto :UACQUERY

:RESUMEUAC
echo UAC.ShellExecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
echo. Dim WshShell >> "%temp%\disableUAC.vbs"
echo. Set WshShell = WScript.CreateObject("WScript.Shell") >> "%temp%\disableUAC.vbs"
echo. UAC.ShellExecute "%windir%\System32\reg.exe", "ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f", "", "runas", 1 >> "%temp%\disableUAC.vbs"
echo. WshShell.run "shutdown -r" >> "%temp%\disableUAC.vbs"
if "%UACON%"=="1" "%temp%\disableUAC.vbs"
"%temp%\getadmin.vbs"
set UACOFF=1
exit /b

:skipuac
SET UACON=
REM cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
goto :RESUMEUAC


:gotAdmin
set UACOFF=1
if exist "%temp%\disableUAC.vbs" ( del "%temp%\disableUAC.vbs" )
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
exit /b
