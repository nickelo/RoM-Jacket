:ININJECT
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
REM if "%P1JOYTYPE%"=="JOY" call "%GBC%\steemjoy1.bat">>"%GBC%\logs\steemjoy1.log"
REM if "%P2JOYTYPE%"=="JOY" call "%GBC%\steemjoy2.bat">>"%GBC%\logs\steemjoy2.log"
REM if "%P1JOYTYPE%"=="KB" call "%GBC%\steemkb1.bat">>"%GBC%\logs\steemkb1.log"
REM if "%P1JOYTYPE%"=="KB" call "%GBC%\steemkb2.bat">>"%GBC%\logs\steemkb2.log"

call "%GBC%\steemkb1.bat">>"%GBC%\logs\steemkb1.log"
call "%GBC%\steemkb2.bat">>"%GBC%\logs\steemkb2.log"


set CFGFILE=steem.ini
call "%GBC%\CFGFileInj.bat">>"%GBC%\logs\CFGFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
"%GBC%\fart.exe" "%CFGFILE%" [P1SET1PADUPR] "%P1SET1PADUPR%"
"%GBC%\fart.exe" "%CFGFILE%" [P1SET1PADDOWNR] "%P1SET1PADDOWNR%"
"%GBC%\fart.exe" "%CFGFILE%" [P1SET1PADUPL] "%P1SET1PADUPL%"
"%GBC%\fart.exe" "%CFGFILE%" [P1SET1PADDOWNL] "%P1SET1PADDOWNL%"
