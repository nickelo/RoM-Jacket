:AMCGLOBAL
if "%AMCG%"=="1" goto :AMCBEGIN
if "%AMCG%"=="0" goto :amckep

if "%JOYOV%"=="1" goto :AMCBEGIN
"%GBC%\wbox.exe" "RJ_GUI" "Overwrite existing antimicro profiles?" "Yes;No" /DB=1 /TM=20
if %ERRORLEVEL%==1 goto :AMCBEGIN
if %ERRORLEVEL%==2 goto :amckep
goto :cpexit

:amckep
SET AMCKP=1

:AMCBEGIN
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Joystick Profiles" /marquee	

for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET AMTMP=%%a
CALL :RNTMP
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :cpexit

:RNTMP
if not exist "%GBG%\%GAM%\%CONS%\%AMTMP%" goto :cpexit
if "%AMC1EF%"=="1" copy /Y "%GBC%\net\%APROF%\%AMTMP%\Player1.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%"
if "%AMC1BLNK%"=="1" copy /Y "%GBC%\net\%APROF%\Blank\Player1.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%"
if "%AMC1EMU%"=="1" copy /Y "%GBC%\net\%APROF%\EMU\%AMTMP%\Player1.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%"
if "%AMC2EF%"=="1" copy /Y "%GBC%\net\%APROF%\%AMTMP%\Player2.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%"
if "%AMC2BLNK%"=="1" copy /Y "%GBC%\net\%APROF%\Blank\Player2.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%"
if "%AMC2EMU%"=="1" copy /Y "%GBC%\net\%APROF%\EMU\%AMTMP%\Player2.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMTMP%"') do (
SET AMCDIR=%%~a
CALL :COPYOVER
)
exit /b

:COPYOVER
SET AMCEXIST=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%AMTMP%\*.amgp"') do (
SET AMCEXIST=%%~a
CALL :COPYAMC
)
exit /b

:COPYAMC
if "%AMCEXIST%" NEQ "" goto :amcchk
goto :amccpy
:amcchk
if "%AMCKP%"=="1" goto :cpexit
:amccpy
copy /Y "%GBG%\%GAM%\%CONS%\%AMTMP%\Player*.amgp" "%GBG%\%GAM%\%CONS%\%AMTMP%\%AMCDIR%"
:cpexit
