:SETUP
set GCLOUDB=
set OCLOUDB=
set DCLOUDB=
set GCLOUDV=
set OCLOUDV=
set DCLOUDV=
set CLDEXIST=
set GDRIVED=
set ONEDRIVED=
set DROPBOXD=

if exist "%USERPROFILE%\Google Drive" for %%a in ("%USERPROFILE%\Google Drive\%ROMJ%") do (
SET GDRIVED=%%~a
set GCLOUDB=;GDrive
set GCLOUDV=Google Drive has been found
)

if exist "%USERPROFILE%\OneDrive" for %%a in ("%USERPROFILE%\OneDrive\%ROMJ%") do (
set OCLOUDB=;OneDrive
SET ONEDRIVED=%%~a
set OCLOUDV=OneDrive has been found
)

if exist "%USERPROFILE%\Dropbox" for %%a in ("%USERPROFILE%\Dropbox\%ROMJ%") do (
set DCLOUDB=;Dropbox
SET DROPBOXD=%%~a
set DCLOUDV=Dropbox has been found
)


if "%GDRIVED%" NEQ "" set /A CLDEXIST+=1
if "%ONEDRIVELOC%" NEQ "" set /A CLDEXIST+=1
if "%DROPBOXLOC%" NEQ "" set /A CLDEXIST+=1
if %CLDEXIST% GEQ 1 goto :CLOUDSET
if "%CLDEXIST%"=="" goto :RRGETLOC

:CLOUDSET
"%GBC%\wbox.exe" "RJ_GUI" "#############^%GCLOUDV%^%OCLOUDV%^%DCLOUDV%^#############^^Select a Cloud Storage to use^All consoles will be mirrored into a folder called RoM-Jacket^" "Other%GCLOUDB%%OCLOUDB%%DCLOUDB%" /DB=1
if %errorlevel%==1 goto :GETLOC
if %errorlevel%==2 goto :GDRIVESET
if %errorlevel%==3 goto :ODRIVESET
if %errorlevel%==4 goto :DROPBSET
goto :QUITOUT

:GDRIVESET
set CLOUDCHOICE=Google Drive
if not exist "%GDRIVED%\%ROMJ%" call :
for %%a in ("%GDRIVED%") do set RJCLOUD=%%~a
goto :INVSET
:ODRIVESET
set CLOUDCHOICE=Microsoft OneDrive
for %%a in ("%ONEDRIVED%") do set RJCLOUD=%%~a
goto :INVSET

:DROPBSET
set CLOUDCHOICE=Dropbox
for %%a in ("%DROPBOXD%") do set RJCLOUD=%%~a
goto :INVSET


:RRGETLOC
set RJCLOUD=
:GETLOC
set NOPTH=
pushd "%GBC%"
SET CLOUDCHOICE=User Selected Location
for /f "delims=" %%a in ('Wfolder.exe "SET CLOUDLOC=" "%USERPROFILE%" "Locate Cloud Folder Destination" /noquote') do %%a
if "%CLOUDLOC%"=="" goto :QUERYLOC
if %errorlevel%==1 goto :QUERYLOC
for %%a in ("%CLOUDLOC:~-10,99%") do if "%%~a"=="%ROMJ%" set NOPTH=1
if "%NOPTH%"=="1" goto :USET
for %%a in ("%CLOUDLOC%\%ROMJ%") do set RJCLOUD=%%~a

:INVSET
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
call "%GBC%\varloc.bat">>"%GBC%\logs\varloc.log"
goto :SETLOC

:USET
for %%a in ("%CLOUDLOC%") do SET RJCLOUD=%%~a
goto :INVSET

:QUERYLOC
"%GBC%\wbox.exe" "RJ_GUI" "No Cloud Drive location found" "Retry;Quit" /DB=1
if %errorlevel%==1 goto :SETUP
if %errorlevel%==2 goto :QUITOUT
goto :QUITOUT

:SETLOC
"%GBC%\wbox.exe" "RJ_GUI" "^^########CLOUD DRIVE LOCATION#######^^%CLOUDCHOICE%^^################^^#######Mirror########^Mirror a library's game-saves and quicksaves into the cloud#########Locate#########^Reset the cloud mirror directory^" "Mirror;Locate" /DB=1 /BW=200
if %errorlevel%==1 goto :LINK
if %errorlevel%==2 goto :RGETLOC
goto :QUITOUT

:LINK
call "%GBC%\feSysAdd.bat">>"%GBC%\logs\feSysAdd.log"
if not exist "%GBC%\curlist.ini" goto :QUITOUT

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CONSDBPTH=%GBG%\%GAM%\%CONS%\%%~a
set CSTCONS=%%~a
set CONSDB=%%~a
CALL :ESCA
)

:ESCA
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
set CSTM=%%~a
call :LINKDIR
)
exit /b

:LINKDIR
REM if exist "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%" goto :UPDATE
goto :%LINKR%

:UPDATE
call "%GBC%\updtmem.bat">>"%GBC%\logs\updtmem.log"
call "%GBC%\updtstate.bat">>"%GBC%\logs\updtstate.log"
exit /b

:WINV
mkdir "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%"
mklink /J "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%\.Mem" "%CONSDBPTH%\%CSTM%\.Mem"
mklink /J "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%\.sstates" "%CONSDBPTH%\%CSTM%\.sstates"
exit /b

:WINLEG
mkdir "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%"
"%GBC%\linkd.exe" "%CONSDBPTH%\%CSTM%\.Mem" "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%\.Mem"
"%GBC%\linkd.exe" "%CONSDBPTH%\%CSTM%\.sstates" "%RJCLOUD%\%CONS%\%CSTCONS%\%CSTM%\.sstates"
exit /b

:QUITOUT
