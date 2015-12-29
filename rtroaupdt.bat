:UPDATERA
copy /y "%GBC%\RAind.set" "%GBC%\ARC.ini"
if "%ARPOP%"=="64" "%GBC%\fart.exe" "ARC.ini" [BIT] "win-x86_64"
if "%ARPOP%"=="32" "%GBC%\fart.exe" "ARC.ini" [BIT] "win-x86"
for /f "delims=" %%a in ('type "%GBC%\ARC.ini"') do set RAMIR=%%~a
echo.Update All>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
for /f "tokens=1 delims=." %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%RTROA%\cores\*.dll"') do (
set CORENAME=%%~a
call :ECKO
)
copy /y "%GBC%\corelist.ini" "%GBC%\coreupdt.ini"
copy /y "%GBC%\corelist.set" "%GBC%\coreget.ini"
for /f "delims=" %%a in ('type "%GBC%\corelist.ini"') do "%GBC%\fart.exe" "%GBC%\coreget.ini" "%%~a" --remove
echo.-------->>"%GBC%\corelist.ini"
echo.-=Available Cores=->>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
echo.Download All>>"%GBC%\corelist.ini"
echo.-------->>"%GBC%\corelist.ini"
goto :SELECT

:ECKO
echo.%CORENAME%>>"%GBC%\corelist.ini"
exit /b

:ECHOALL
echo.%CORENAME%>>"%GBC%\corelist.ini"
exit /b

:SELECT
for /f "delims=" %%a in ('type "%GBC%\coreget.ini"') do (
set CORENAME=%%~a
call :ECHOALL
)

set CORENAME=
:SELCORE
set RAUPDT=
set CORECNT=
"%GBC%\wselect.exe" "%GBC%\corelist.ini" "Select a Core" "set CORENAME=$item" > "%GBC%\corelist.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\corelist.cmd"
if "%CORENAME%"=="" goto :QUITOUT
if "%CORENAME%"=="" goto :UPDATERA
if "%CORENAME%"=="--------" goto :SELCORE
if "%CORENAME%"=="-=Available Cores=-" goto :SELCORE
if "%CORENAME%"=="Update All" goto :UPDTALL
if "%CORENAME%"=="Download All" goto :DWNALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading %CORENAME%" /marquee
"%GBC%\wget.exe" -c -N --waitretry=3 --tries=3 "%RAMIR%/%CORENAME%.dll.zip" -P "%GBC%\net\%RTROA%\cores"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing %CORENAME%" /marquee
if exist "%GBC%\net\%RTROA%\cores\%CORENAME%.dll.zip" "%SEVENZIP%" e -y "%GBC%\net\%RTROA%\cores\%CORENAME%.dll.zip" -o"%GBE%\%EMUZ%\%RTROA%\cores"
"%GBC%\fart.exe" "%GBC%\corelist.ini" "%CORENAME%" --remove
if "%RAUPDT%"=="1" exit /b
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :SELCORE

:DWNALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading all cores" /marquee
set RAUPDT=1
for /f "delims=" %%a in ('type "%GBC%\corelist.ini"') do (
set CORENAME=%%~a
call :GETCORE
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :QUITOUT


:UPDTALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Updating all cores" /marquee
set RAUPDT=1
for /f "delims=" %%a in ('type "%GBC%\coreupdt.ini"') do (
set CORENAME=%%~a
call :GETCORE
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :QUITOUT

:GETCORE
set UPDT=
if "%CORECNT%"=="5" set /A UPDT=5
if "%CORECNT%"=="10" set /A UPDT=10
if "%CORECNT%"=="15" set /A UPDT=15
if "%CORECNT%"=="20" set /A UPDT=20
if "%CORECNT%"=="25" set /A UPDT=25
if "%CORECNT%"=="30" set /A UPDT=30
if "%CORECNT%"=="35" set /A UPDT=35
if "%CORECNT%"=="40" set /A UPDT=40
if "%CORECNT%"=="45" set /A UPDT=45
if "%CORECNT%"=="50" set /A UPDT=50
if "%CORECNT%"=="55" set /A UPDT=55
if "%CORECNT%"=="60" set /A UPDT=60
if "%CORECNT%"=="65" set /A UPDT=65
if "%CORENAME%"=="--------" exit /b
if "%CORENAME%"=="Available Cores" exit /b
if "%CORENAME%"=="Download All" exit /b
if "%CORENAME%"=="Update All" exit /b
set /A CORECNT+=1
if "%UPDT%" NEQ "" %BSTRT% "%WBUSY%" "RJ_GUI" "%UPDT% cores downloaded" /marquee
"%GBC%\wget.exe" -c -N --waitretry=3 --tries=3 "%RAMIR%/%CORENAME%.dll.zip" -P "%GBC%\net\%RTROA%\cores"
if exist "%GBC%\net\%RTROA%\cores\%CORENAME%.dll.zip" "%SEVENZIP%" e -y "%GBC%\net\%RTROA%\cores\%CORENAME%.dll.zip" -o"%GBE%\%EMUZ%\%RTROA%\cores"
"%GBC%\fart.exe" "%GBC%\corelist.ini" "%CORENAME%" --remove
if "%RAUPDT%"=="1" exit /b
goto :SELCORE
:QUITOUT
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to redownload or download additional cores?" "Download;Menu" /DB=1
if %errorlevel%==1 goto :UPDATERA
if %errorlevel%==2 exit /b
exit /b