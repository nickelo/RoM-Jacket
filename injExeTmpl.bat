echo.%userprofile%>"%CD%\user.ini"
FOR /F "delims=" %%a in ('type "%CD%\user.ini"') DO SET CURSR=%%~a
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
echo.%DESKTOPDIR%>"%CD%\desk.ini"
if "%REALWINDOWS%"=="0" for %%a in ("%USERPROFILE%\Desktop") do set DESKTOPDIR=%%~a

FOR /F "delims=" %%a in ('type "%CD%\desk.ini"') DO SET USKDP=%%~a

FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
echo.%DESKTOPDIR%>"%CD%\desk.ini"
