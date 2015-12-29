if "%P1JOYTYPE%"=="JOY" set P1JOY=3
if "%P1JOYTYPE%"=="KB" set P1JOY=1
if "%P2JOYTYPE%"=="JOY" SET P2JOY=3
if "%P2JOYTYPE%"=="JOY" call :P1JOYCHK
if "%P2JOYTYPE%"=="KB" set P2JOY=1
goto :ININJECT

:P1JOYCHK
if "%P1JOYTYPE%"=="JOY" set P2JOY=4
exit /b

:ININJECT
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
if "%P1JOY%"=="1" "%GBC%\fart.exe" "%FMUNZ%.ini" [PAD1] 1
if "%P2JOY%"=="1" "%GBC%\fart.exe" "%FMUNZ%.ini" [PAD2] 1
if "%P1JOY%"=="3" "%GBC%\fart.exe" "%FMUNZ%.ini" [PAD1] 3
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "%FMUNZ%.ini" [PAD2] %P2JOY%
if "%P1JOYTYPE%"=="JOY" call "%GBC%\%FMTOWNS%joy1.bat">>"%GBC%\logs\%FMTOWNS%joy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\%FMTOWNS%joy2.bat">>"%GBC%\logs\%FMTOWNS%joy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\%FMTOWNS%kb1.bat">>"%GBC%\logs\%FMTOWNS%kb1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\%FMTOWNS%kb2.bat">>"%GBC%\logs\%FMTOWNS%kb2.log"
set CFGFILE=%FMUNZ%*.ini
call "%GBC%\cfgFileInj.bat">>"%GBC%\logs\cfgFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
