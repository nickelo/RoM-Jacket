%BSTRT% "%WBUSY%" "RJ_GUI" "Aliasing Mirrors" /marquee
del /q "%GBC%\litcon.ini"
if not exist "%MIRLOC%\%GLBL%" mkdir "%MIRLOC%\%GLBL%"
mkdir "%MIRLOC%\%GLBL%\Home"
mkdir "%MIRLOC%\%GLBL%\Handheld"
mkdir "%MIRLOC%\%GLBL%\Computer"
mkdir "%MIRLOC%\%GLBL%\Arcade"

for /f "delims=" %%a in ('dir /b/ad-h "%MIRLOC%\%MIRDN%"') do (
set ABSOL=
set PARNAM=%%~a
call :GETXSTAT
)
for /f "delims=" %%a in ('type "%GBC%\arcd.set"') do copy /y "%MIRLOC%\%MIRDN%\%%~a\*" "%MIRLOC%\%GLBL%\Arcade\%%~a"
for /f "delims=" %%a in ('type "%GBC%\hand.set"') do copy /y "%MIRLOC%\%MIRDN%\%%~a\*" "%MIRLOC%\%GLBL%\Handheld\%%~a"
for /f "delims=" %%a in ('type "%GBC%\home.set"') do copy /y "%MIRLOC%\%MIRDN%\%%~a\*" "%MIRLOC%\%GLBL%\Home\%%~a"
for /f "delims=" %%a in ('type "%GBC%\comp.set"') do copy /y "%MIRLOC%\%MIRDN%\%%~a\*" "%MIRLOC%\%GLBL%\Computer\%%~a"
for /f "delims=" %%a in ('dir  /b /ad-h "%MIRLOC%\%GLBL%"') do rd "%MIRLOC%\%GLBL%\%%~a"
popd

del /q "%GBC%\otherlist.ini"
del /q "%GBC%\mirlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%MIRLOC%\%MIRDN%"') do echo.%%~a>>"%GBC%\mirlist.ini"
for /f "delims=" %%a in ('type "%GBC%\mirlist.ini"') do (
set CURVCON=%%~a
call :PARTS
)

if not exist "%GBC%\otherlist.ini" goto :QUITOUT

mkdir "%MIRLOC%\%GLBL%\Other"
for /f "delims=" %%a in ('type "%GBC%\otherlist.ini"') do mkdir "%MIRLOC%\%GLBL%\%%~a" & copy /y "%MIRLOC%\%MIRDN%\%%~a\*" "%MIRLOC%\%GLBL%\Other\%%~a"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b


:PARTS
set PVREC=
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do if /i "%%~a"=="%CURVCON%" set PVREC=1
if "%PVREC%"=="1" exit /b
echo.%CURVCON%>>"%GBC%\otherlist.ini"
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1