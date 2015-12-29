%BSTRT% "%WBUSY%" "RJ_GUI" "Aliasing Machines" /marquee
del /q "%GBC%\litcon.ini"
if not exist "%GBG%\%GAM%\%GLBL%" mkdir "%GBG%\%GAM%\%GLBL%"
mkdir "%GBG%\%GAM%\%GLBL%\Home"
mkdir "%GBG%\%GAM%\%GLBL%\Handheld"
mkdir "%GBG%\%GAM%\%GLBL%\Computer"
mkdir "%GBG%\%GAM%\%GLBL%\Arcade"

for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set ABSOL=
set PARNAM=%%~a
call :GETXSTAT
)
for /f "delims=" %%a in ('type "%GBC%\arcd.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Arcade\%%~a" "%GBG%\%GAM%\%CONS%\%%~a"
for /f "delims=" %%a in ('type "%GBC%\hand.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Handheld\%%~a" "%GBG%\%GAM%\%CONS%\%%~a"
for /f "delims=" %%a in ('type "%GBC%\home.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Home\%%~a" "%GBG%\%GAM%\%CONS%\%%~a"
for /f "delims=" %%a in ('type "%GBC%\comp.set"') do if /i exist "%GBG%\%GAM%\%CONS%\%%~a" mklink /d "%GBG%\%GAM%\%GLBL%\Computer\%%~a" "%GBG%\%GAM%\%CONS%\%%~a"
copy /y "%GBC%\net\%BCKD%\HANDSYS.jpg" "%MIRLOC%\%GLBL%\Handheld\Backdrop.jpg"
copy /y "%GBC%\net\%FLDR%\HANDSYS.png" "%MIRLOC%\%GLBL%\Handheld\Folder.png"
copy /y "%GBC%\net\%BCKD%\HOMESYS.jpg" "%MIRLOC%\%GLBL%\Home\Backdrop.jpg"
copy /y "%GBC%\net\%FLDR%\HOMESYS.png" "%MIRLOC%\%GLBL%\Home\Folder.png"
copy /y "%GBC%\net\%BCKD%\COMPSYS.jpg" "%MIRLOC%\%GLBL%\Computer\Backdrop.jpg"
copy /y "%GBC%\net\%FLDR%\COMPSYS.png" "%MIRLOC%\%GLBL%\Computer\Folder.png"
copy /y "%GBC%\net\%BCKD%\ARCDSYS.jpg" "%MIRLOC%\%GLBL%\Arcade\Backdrop.jpg"
copy /y "%GBC%\net\%FLDR%\ARCDSYS.png" "%MIRLOC%\%GLBL%\Arcade\Folder.png"
for /f "delims=" %%d in ('dir  /b /ad-h "%GBG%\%GAM%\%GLBL%"') do rd /q "%GBG%\%GAM%\%GLBL%\%%~d"
popd

del /q "%GBC%\otherlist.ini"
del /q "%GBC%\mirlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\mirlist.ini"
for /f "delims=" %%a in ('type "%GBC%\mirlist.ini"') do (
set CURVCON=%%~a
call :PARTS
)

if not exist "%GBC%\otherlist.ini" goto :QUITOUT

mkdir "%GBG%\%GAM%\%GLBL%\Other"
for /f "delims=" %%a in ('type "%GBC%\otherlist.ini"') do (
mklink /d "%GBG%\%GAM%\%GLBL%\Other\%%~a" "%GBG%\%GAM%\%CONS%\%%~a"
set CSTCONS=%%~a
)
set REZX=1920
set REZY=1080	
if "%DISPASPCT%"=="Widescreen" set REZX=1920
if "%DISPASPCT%"=="Widescreen" set REZY=1080
"%GBC%\nconvert.exe" -resize %REZX% %REZY% -out jpeg -o "%GBG%\%GAM%\%GLBL%\Other\Backdrop.jpg" "%BACKDEST%\Hyperspin.%BACKEXTN%"
copy /y "%GBC%\net\%FLDR%\Daphne.png" "%GBG%\%GAM%\%GLBL%\Other\Folder.png"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b


:PARTS
set PVREC=
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do if /i "%%~a"=="%CURVCON%" set PVREC=1
if "%PVREC%"=="1" exit /b
echo.%CURVCON%>>"%GBC%\otherlist.ini"
exit /b

:GETXSTAT
pushd "%GBG%\%GAM%\%CONS%\%PARNAM%"
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
exit /b
:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1