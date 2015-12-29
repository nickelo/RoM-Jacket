:BEGINCABRIO
if "%cbcancel%"=="1" goto :cbout
set CURFE=Cabrio
call :SANITIZE
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
set CURFE=
if not exist "%GBC%\curlist.ini" goto :cbout
if "%cbcancel%"=="1" goto :cbout
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuring Cabrio-FE" /marquee
CALL "%GBC%\cbAddAll.bat">>"%GBC%\logs\cbAddAll.log"
type "%GBC%\net\%CABR%\config.end.set">>"%GBC%\net\%CABR%\config.xml"
%BSTRT% "%WFINS%" "RJ_GUI" "Cabrio-FE Configured" /Stop /timeout:1
call "%GBC%\copyCabrioXml.bat">>"%GBC%\logs\copyCabrioXml.log"

:cbout
exit /b

:SANITIZE
pushd "%GBG%\%GAM%\%CONS%"
%BSTRT% "%WBUSY%" "RJ_GUI" Sanitizing Database" /marquee
for /f "delims=" %%a in ('dir /b/ad') do (
pushd "%%~a"
set NDO=%%~a
call :INDIR
rd /q "%%~a"
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Sanitized" /stop /timeout:1
popd
exit /b
:INDIR
for /f "delims=" %%a in ('dir /b/ad') do rd /q "%%~a"
popd
exit /b