del /q "%GBC%\litcon.ini"
set LINKQUERY=
for %%a in ("%GBG%\%GAM%\%CONS%") do set LINKQUERY=%%~a
if "%RFESUBG%"=="1" for %%a in ("%MIRLOC%\%MIRDN%") do set LINKQUERY=%%~a
if not exist "%GBG%\%GAM%\%GLBL%" mkdir "%GBG%\%GAM%\%GLBL%"
mkdir "%GBG%\%GAM%\%GLBL%\Home"
mkdir "%GBG%\%GAM%\%GLBL%\Handheld"
mkdir "%GBG%\%GAM%\%GLBL%\Computer"
mkdir "%GBG%\%GAM%\%GLBL%\Arcade"
for %%a in ("%GBG%\%GAM%\%CONS%") do set LINKQUERY=%%~a
if "%RFESUBG%"=="" goto :STIXOUT

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set ABSOL=
set FLDRCH=
set PARNAM=%%~a
call :GETXSTAT
)
for /f "delims=" %%a in ('type "%GBC%\arcd.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Arcade\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\ARCDSYS.jpg" "%GBG%\%GAM%\%GLBL%\Arcade\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\ARCDSYS.png" "%GBG%\%GAM%\%GLBL%\Arcade\Folder.png" & set FLDRCH=1
for /f "delims=" %%a in ('type "%GBC%\hand.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Handheld\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\HANDSYS.jpg" "%GBG%\%GAM%\%GLBL%\Handheld\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\HANDSYS.png" "%GBG%\%GAM%\%GLBL%\Handheld\Folder.png" & set FLDRCH=1
for /f "delims=" %%a in ('type "%GBC%\home.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Home\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\HOMESYS.jpg" "%GBG%\%GAM%\%GLBL%\Home\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\HOMESYS.png" "%GBG%\%GAM%\%GLBL%\Home\Folder.png" & set FLDRCH=1
for /f "delims=" %%a in ('type "%GBC%\comp.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Computer\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\COMPSYS.jpg" "%GBG%\%GAM%\%GLBL%\Computer\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\COMPSYS.png" "%GBG%\%GAM%\%GLBL%\Computer\Folder.png" & set FLDRCH=1
for /f "delims=" %%d in ('dir  /b /ad-h "%GBG%\%GAM%\%GLBL%"%WSRT%') do rd "%GBG%\%GAM%\%GLBL%\%%~d"
popd
exit /b

:STIXOUT
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set ABSOL=
set PARNAM=%%~a
call :GETXSTAT
)
for /f "delims=" %%a in ('type "%GBC%\arcd.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Arcade\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\ARCDSYS.jpg" "%GBG%\%GAM%\%GLBL%\Arcade\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\ARCDSYS.png" "%GBG%\%GAM%\%GLBL%\Arcade\Folder.png"
for /f "delims=" %%a in ('type "%GBC%\hand.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Handheld\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\HANDSYS.jpg" "%GBG%\%GAM%\%GLBL%\Handheld\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\HANDSYS.png" "%GBG%\%GAM%\%GLBL%\Handheld\Folder.png"
for /f "delims=" %%a in ('type "%GBC%\home.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Home\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\HOMESYS.jpg" "%GBG%\%GAM%\%GLBL%\Home\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\HOMESYS.png" "%GBG%\%GAM%\%GLBL%\Home\Folder.png"
for /f "delims=" %%a in ('type "%GBC%\comp.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Computer\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" & copy /y "%GBC%\net\%BCKD%\COMPSYS.jpg" "%GBG%\%GAM%\%GLBL%\Computer\Backdrop.jpg" & copy /y "%GBC%\net\%FLDR%\COMPSYS.png" "%GBG%\%GAM%\%GLBL%\Computer\Folder.png"
for /f "delims=" %%d in ('dir  /b /ad-h "%GBG%\%GAM%\%GLBL%"%WSRT%') do rd "%GBG%\%GAM%\%GLBL%\%%~d"
popd
exit /b

:QUERYCON
if /i "%%~a"=="

:GETXSTAT
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
set CONCHK=%%~a
call :QUERYCON
)

pushd "%LINKQUERY%\%PARNAM%"
for /f "delims=" %%a in ('dir /b/a-h') do (
set OBJX=%%~a
set OBJN=%%~nxa
call :CHKS 
)
popd
if "%ABSOL%" NEQ "1" echo.%PARNAM%>>"%GBC%\litcon.ini"
exit /b
:CHKS
if /i "%OBJX%"==".jpg" exit /b
if /i "%OBJX%"==".png" exit /b
if /i "%OBJX%"==".xml" exit /b
if /i "%OBJX%"==".nfo" exit /b
set ABSOL=1