:HYPERSPINGLOBAL
SET HYPSET=Locate
if "%HPN%" NEQ "[HPN]" SET HYPSET=Reset
SET HYPDWN=Download
if exist "%GBC%\net\%HYPS%\%HYPS%.7z" SET HYPDWN=Install
SET HYPNUM=2
if "%HYPSET%"=="Reset" set HYPNUM=1
"%GBC%\wbox.exe" "RJ_GUI" "%HYPSET% the Hyperspin Directory?" "%HYPSET%;%HYPDWN%;MainMenu" /DB=%HYPNUM%
if %ERRORLEVEL%==1 goto :locatehs
if %ERRORLEVEL%==2 goto :%HYPDWN%HS
if %ERRORLEVEL%==3 goto :complete
goto :complete

:locatehs
set HPN=[HPN]
for /f "delims=" %%a in ('Wfolder.exe "SET HPN=" "%GBE%\%EMUZ%" "Where is the Hyperspin Folder:? " /noquote') do %%a
if "%HPN%"=="" goto :HYPERSPINGLOBAL
if exist "%HPN%\%HYPS%" call :HPNT
if not exist "%HPN%\HyperSpin.exe" goto :NOHSFOUND
goto :SETHSCHOICE

:HPNT
for %%a in ("%HPN%\%HYPS%") do set HPN=%%~a
exit /b

:NOHSFOUND
"%GBC%\wbox.exe" "RJ_GUI" "Hyperspin.exe was not found in %HPN%.^Continue anyway?" "Locate;Download;Quit" /DB=2
if %ERRORLEVEL%==1 goto :locatehs
if %ERRORLEVEL%==2 goto :DownloadHS
if %ERRORLEVEL%==3 goto :complete
goto :locatehs

:DownloadHS
CALL "%GBC%\getHyperspin.bat">>"%GBC%\logs\getHyperspin.log"
goto :InstallHS

:HSCONCONV
for /f "delims=" %%a in ('dir /s /b/a-d-h "%HPN%\Media\Favorites\Images\Letters\*.png"') do nconvert.exe -resize 75%% 100%% -overwrite "%%~a"
for /f "delims=" %%a in ('dir /s /b/a-d-h "%HPN%\Media\Favorites\Images\Special\*.png"') do nconvert.exe -resize 75%% 100%% -overwrite "%%~a"
for /f "delims=" %%a in ('dir /s /b/a-d-h "%HPN%\Media\Favorites\Images\Other\*.png"') do nconvert.exe -resize 75%% 100%% -overwrite "%%~a"
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Media\Frontend\Images\*.png"') do nconvert.exe -resize 75%% 100%% -overwrite "%HPN%\Media\Frontend\Images\%%~nxa"
for /f "delims=" %%a in ('dir /s/b/a-d-h "%HPN%\Media\Frontend\Images\*.wid"') do copy /y "%%~dpnxa" "%%~dpna.png"
exit /b

:InstallHS
if not exist "%GBC%\net\%HYPS%\%HYPS%.7z" goto :NOHSFOUND
%GBD%
cd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET HPND=" "%GBE%\%EMUZ%" "Install hyperspin to:? " /noquote') do %%a
if "%HPND%"=="" goto :RESOLUTION
for %%A in ("%HPND:*:=%") do set HPNdrv-ltr=%%~A
for %%A in ("%HPND:~0,2%\") do set HYPDIR=%%~A

:INSTALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Hyperspin" /marquee
if "%HPNdrv-ltr%"=="\" do set HSP=%HPND:~0,2%
for %%A in ("%HPND%\%HYPS%") do set HPN=%%~A
"%SEVENZIP%" x -y "%GBC%\net\%HYPS%\%HYPSFILE%" -o"%HPN%"
if not exist "%HPN%\%HYPS%.exe" goto :NOHSFOUND
if "%HCROP%"=="" call :HSCONCONV
set HYPINS=reinstall

:SETHSCHOICE
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
"%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\Hyperspin.lnk" /A:C /W:"%HPN%" /T:"%HPN%\%HYPS%.exe"
"%GBC%\fart.exe" "%HPN%\Settings\Main Menu.ini" [HYPS] "%HPN%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Hyperspin has been installed" "Okay" /DB=1 /TM=1
if %ERRORLEVEL%==1 goto :RESOLUTION

:RESOLUTION
set HYPTRZ=
set REZX=
set REZY=
for /f "tokens=2 delims==" %%a in ('inifile.exe "%HPN%\Settings\Settings.ini" [Resolution] Width') do set REZX=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%HPN%\Settings\Settings.ini" [Resolution] Height') do set REZY=%%~a
if "%REZX%" NEQ "[REZX]" goto :REZHYP
for /f "tokens=1,2 delims=,x" %%a in ('"%GBC%\qres.exe" /v /s') do echo.%%~ax%%~b>"%GBC%\rez.ini"
if not exist "%HPN%\Settings\Settings.ini" goto :REZHYP
goto :INJREZ

:REZHYP
echo.%REZX%x%REZY%>"%GBC%\rez.ini"

:INJREZ
for /f "tokens=1,2 delims=x" %%a in ('type "%GBC%\rez.ini"') do (
set REZX=%%a
set REZY=%%b
)
call :GETREZ
goto :INJSET

:GETREZ
SET HCROP=
call "%GBC%\ratio.bat">>"%GBC%\logs\ratio.log"
for /f "tokens=1,2 delims=.," %%a in ('cscript //nologo "%GBC%\ratio.vbs" %REZY% %REZX%') do (
set LONG=%%~a
set CROP=%%~b
call :CROP
)
set HCROP=
if %RATIO% %RATOP% 7 set HCROP=1
goto :INJSET

:CROP
set RATOP=GEQ
if %LONG% GEQ 1 set RATOP=LEQ
for %%a in ("%CROP:~0,2%") do (
if "%%~a"=="" set /a CROP=%CROP%0
if %%~a GEQ 5 set /a CROP+=1
)
for %%a in ("%CROP:~0,1%") do set RATIO=%%~a
IF "%RATIO%"=="" set RATIO=0
exit /b

:INJSET
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" "[P1 Controls]" Exit=8
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Width=%REZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Height=%REZY%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "x"=%REZX5%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "y"=%REZY9%
set set HYPTRZ=
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to reset the current resolution of Hyperspin?^%REZX% x %REZY%^" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :resetrez
if %ERRORLEVEL%==2 goto :continueres
goto :continueres

:resetrez
set HYPTRZ=1
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
CALL "%GBC%\HYPRES.bat">>"%GBC%\logs\HYPRES.log"
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Width=%REZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Height=%REZY%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "x"=%REZX5%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "y"=%REZY9%

:continueres
for /f "tokens=1,2 delims=x" %%a in ('type "%GBC%\rez.ini"') do (
set REZX=%%a
set REZY=%%b
)

"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Width=%REZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Height=%REZY%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "x"=%HREZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "y"=%HREZY%

:complete