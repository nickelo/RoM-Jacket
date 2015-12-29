if "%P1JOYTYPE%"=="JOY" call "%GBC%\messJoy1.bat">>"%GBC%\logs\messJoy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\messJoy2.bat">>"%GBC%\logs\messJoy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\messKb1.bat">>"%GBC%\logs\messKb1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\messKb2.bat">>"%GBC%\logs\messKb2.log"
set CFGFILE=*t.cfg
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\messCfgFileInj.bat">>"%GBC%\logs\messCfgFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
