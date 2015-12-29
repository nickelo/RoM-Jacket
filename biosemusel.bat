oset BIOSFSEL=
:LISTSEL
echo.---------->"%GBC%\sys.ini"
echo.FILE>>"%GBC%\sys.ini"
echo.---------->>"%GBC%\sys.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do (
set KVAREMU=%%~a
if exist "%GBC%\net\CRC\%%~a.set" call :EKOIN
)
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /stop /timeout:1
"%GBC%\wselect.exe" "%GBC%\sys.ini" "Select Type" "set CVAREMU=$item" > "%GBC%\sys.cmd"
if %errorlevel% == 0 goto :EOF
call "%GBC%\sys.cmd"
if "%CVAREMU%"=="----------" goto :LISTSEL
if "%CVAREMU%"=="FILE" goto :BIOSFILE
set ONESYS=1
exit /b
:EKOIN
echo.%KVAREMU%>>"%GBC%\sys.ini"
exit /b
:BIOSFILE
set BIOSFSEL=1