if "%P1JOYTYPE%"=="JOY" call "%GBC%\mameJoy1.bat">>"%GBC%\logs\mameJoy1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\mameJoy2.bat">>"%GBC%\logs\mameJoy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\mameKb1.bat">>"%GBC%\logs\mameKb1.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\mameKb2.bat">>"%GBC%\logs\mameKb2.log"
set CFGFILE=*t.cfg
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\mameCfgFileInj.bat">>"%GBC%\logs\mameCfgFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
