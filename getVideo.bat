if "%METYP%"=="VID" goto :DYNTHEME
if "%METYP%"=="ALL" goto :DYNTHEME
del /q "%GBC%\conExist.ini"
pushd "%GBC%"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\conExist.ini"
"%GBC%\fart.exe" "%GBC%\conExist.ini" "\"" --remove
IF "%ALLMETA%"=="1" goto :agetVideodrops
"%GBC%\wbox.exe" "RJ_GUI" "^######NOTE######^^These are 10mgs+ each^" "Okay" /DB=1 
if %ERRORLEVEL%==1 goto :agetVideodrops

:DYNTHEME
del /q "%GBC%\conExist.ini"
pushd "%GBC%"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\conExist.ini"
"%GBC%\fart.exe" "%GBC%\conExist.ini" "\"" --remove

:agetVideodrops
for /f "delims=" %%a in ('type "%GBC%\custCons.set"') do if "%%~a" NEQ "--------------------------" echo."%%~a">>"%GBC%\conExist.ini"
"%GBC%\fart.exe" "%GBC%\conExist.ini" "\"" --remove
SET ALLMETA=1

:getVideodrops
set urlNthL=79
set VIDEURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set VIDEURL=%%~a

:VIDEAUTO
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
mkdir "%GBG%\%GAM%\%CONS%\%%~a\backdrops"
ATTRIB +H "%GBG%\%GAM%\%CONS%\%%~a\backdrops"
)

:GETDROPS
del /q "%GBC%\cursel.ini"
"%GBC%\multisel.exe" "%GBC%\conExist.ini" "%GBC%\cursel.ini"
if not exist "%GBC%\cursel.ini" goto :videoscomplete
:existingCon
for /f "delims=" %%a in ('type "%GBC%\cursel.ini"') do (
SET VIDN=%%~a
CALL :getVideodrops
)
IF "%ALLMETA%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :videoscomplete

:getVideodrops
mkdir "%GBC%\net\%VIDE%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading %VIDN% Video" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 --split=4 --file-allocation=none --conditional-get=true --dir="%GBC%\net\%VIDE%" "%MIR7%/%VIDE%/%VIDN%/%VIDN%.mp4"  "%MIR8%/%VIDE%/%VIDN%/%VIDN%.mp4" "%MIR9%/%VIDE%/%VIDN%/%VIDN%.mp4" "%MIR10%/%VIDE%/%VIDN%/%VIDN%.mp4"
if not exist "%GBC%\net\%VIDE%\%VIDN%.mp4" %BSTRT% "%WFINS%" "RJ_GUI" "%VIDN% Video Not Found" /Stop /timeout:1
exit /b
goto :GETDROPS

:videoscomplete
SET ALLMETA=
popd
