%GBD%
cd "%GBC%\net\%XBMC%\%ADVL%"
del /s /q "launchers.xml"
del /s /q "*.prt"
copy /Y "%LNCH%.xml.set" "%LNCH%.xml.prt"
type "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml.Begin.set" >"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml" [GAMPTH] "%GBG%\%GAM%\%CONS%"
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml" [IMAGE] "Folder.png"
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
goto :ADDSYS
:INDIR
for /f "delims=" %%a in ('dir /b/ad') do rd /q "%%~a"
popd
exit /b
:ADDSYS
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :finshalbuild

REM call "%GBC%\feSysAdd.bat">>"%GBC%\logs\feSysAdd.log"
REM if "%cbcancel%"=="1" goto :finishalbuild

:BUILD
%BSTRT% "%WBUSY%" "RJ_GUI" "Building the Advanced Launcher Library" /marquee

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
SET NWCON=%%~a
REM call "%GBC%\rndID.bat"
call :RNDNUM
CALL :RNDGET
)
goto :launchcomplete


:RNDNUM
for /f "tokens=1,2,3,4,5 delims=-" %%a in ('"%GBC%\uuidgen.exe"') do set RNDVAR=%%~a%%~b%%~c%%~d%%~e
echo %RNDVAR% >"%GBC%\randnum.ini"
exit /b


:RNDGET
if /i "%NWCON%"==":::::::" goto exit /b
if /i "%NWCON%"=="ALL SYSTEMS" exit /b
FOR /F "delims=" %%a IN ('type "%GBC%\randnum.ini"') DO SET RNDVAR=%%a
mkdir "%GBC%\net\%XBMC%\%ADVL%\%NWCON%"
copy /Y "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml.prt" "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWCON%.xml.prt"
copy /Y "%GBC%\net\%XBMC%\%ADVL%\roms.xml.set" "%GBC%\net\%XBMC%\%ADVL%\roms.xml.prt"
pushd "%GBC%\net\%XBMC%\%ADVL%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [RNDNUM] %RNDVAR%
popd
CALL "%GBC%\alAdd.bat"
exit /b

:launchcomplete
type "%GBC%\net\%XBMC%\%ADVL%\launchers.xml.End.set">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
if "%ADV%"=="0" goto :builtalxml

for %%a in ("%XBAPDTA%") do set XBAPDTA=%%~a
if "%WINVER%"=="XP" for %%a in ("%APPDATA%\XBMC") do set XBAPDTA=%%~a
if exist "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml.orig" goto :createalxml
mkdir "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher"
if exist "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml" copy /Y "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml" "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml.orig"

:createalxml
copy /Y "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml" "%XBAPDTA%\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml"

:metaRename
CALL "%GBC%\metaRen.bat"
goto :builtalxml

:builtalxml
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Advanced Launcher has been configured." "Continue" /TM=5
if %ERRORLEVEL%==1 goto :finishalbuild
goto :finishalbuild
:finishalbuild