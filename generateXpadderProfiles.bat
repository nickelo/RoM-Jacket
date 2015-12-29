:XPDGLOBAL
if "%XPDG%"=="1" goto :XPDBEGIN
if "%XPDG%"=="0" goto :xpdkep

if "%JOYOV%"=="1" goto :XPDBEGIN
"%GBC%\wbox.exe" "RJ_GUI" "Overwrite existing xpadder profiles?" "Yes;No" /DB=1 /TM=20
if %ERRORLEVEL%==1 goto :XPDBEGIN
if %ERRORLEVEL%==2 goto :xpdkep
goto :cpexit


:xpdkep
SET XPDKP=1

:XPDBEGIN
%BSTRT% "%WBUSY%" "RJ_GUI" "Creating Joystick Profiles" /marquee	
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET XPTMP=%%a
CALL :RNTMP
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
goto :cpexit

:RNTMP
if not exist "%GBG%\%GAM%\%CONS%\%XPTMP%" goto :cpexit
if "%XPD1EF%"=="1" copy /Y "%GBC%\net\%XPROF%\%XPTMP%\Player1.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPD1BLNK%"=="1" copy /Y "%GBC%\net\%XPROF%\Blank\Player1.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPD1EMU%"=="1" copy /Y "%GBC%\net\%XPROF%\EMU\%XPTMP%\Player1.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPD2EF%"=="1" copy /Y "%GBC%\net\%XPROF%\%XPTMP%\Player2.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPD2BLNK%"=="1" copy /Y "%GBC%\net\%XPROF%\Blank\Player2.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPD2EMU%"=="1" copy /Y "%GBC%\net\%XPROF%\EMU\%XPTMP%\Player2.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPTMP%"') do (
SET XPDDIR=%%~a
CALL :COPYOVER
)
exit /b

:COPYOVER
SET XPDEXIST=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%XPTMP%\*.xpadderprofile"') do (
SET XPDEXIST=%%~a
CALL :COPYXPD
)
exit /b

:COPYXPD
if "%XPDEXIST%" NEQ "" goto :xpdchk
goto :xpdcpy
:xpdchk
if "%XPDKP%"=="1" goto :cpexit
:xpdcpy
copy /Y "%GBG%\%GAM%\%CONS%\%XPTMP%\Player*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%\%XPDDIR%"
:cpexit
