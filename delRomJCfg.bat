if "%CFGALLG%"=="1" goto :GLOBALINJ
SET JOYOV=
SET BATOV=
SET CFGOV=
goto :DELOPTIONS
:GLOBALINJ
%BSTRT% "%WBUSY%" "RJ_GUI" "Resetting Rom-Jacket Library Components." /marquee
if "%CFGOV%"=="1" call "%GBC%\delcfgs.bat"
call :DELBATS
call :DELXPDS
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :delcomp

:DELOPTIONS
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to reset existing RoM-Jacket Library components?^^Launchers^Launchers will be deleted^^Config^Emulator-Configuration files will be deleted.^^Joy^Joystick-profiles will be deleted.^^ALL^Launchers, Joystick-Profiles, Emulator-Configuration files will be deleted.^^None^Nothing will be deleted." "Launchers;Config;Joy;ALL;None" /DB=5 /BW=75
if %ERRORLEVEL%==1 goto :BATS
if %ERRORLEVEL%==2 goto :CFGS
if %ERRORLEVEL%==3 goto :JOYS
if %ERRORLEVEL%==4 goto :ALL
if %ERRORLEVEL%==5 goto :NONE
goto :delcomp

:BATS
SET BATOV=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Resetting Launchers" /marquee
call :DELBATS
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :DELOPTIONS

:DELBATS
for /f "delims=" %%a in ('type "%GBC%\conselect.ini"') do del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.bat"
exit /b
:DELXPDS
for /f "delims=" %%a in ('type "%GBC%\conselect.ini"') do del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.xpadderprofile"
for /f "delims=" %%a in ('type "%GBC%\conselect.ini"') do del /s /q "%GBG%\%GAM%\%CONS%\%%~a\*.amgp"
exit /b

:CFGS
SET CFGOV=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Resetting Emulator Configurations" /marquee
call "%GBC%\delcfgs.bat"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :DELOPTIONS

:JOYS
SET JOYOV=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Resetting Jostick-Profiles" /marquee
CALL "%GBC%\delcfgs.bat"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :DELOPTIONS

:ALL
SET JOYOV=1
SET BATOV=1
SET CFGOV=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Resetting Rom-Jacket Library Components." /marquee
call :DELBATS
del /s /q "%GBG%\%GAM%\%CONS%\*.bat"
CALL "%GBC%\delcfgs.bat"
call :DELXPDS
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1

:NONE
:delcomp