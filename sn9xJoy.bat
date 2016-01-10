:ININJECT
if "%P1JOYTYPE%"=="JOY" call "%GBC%\sn9xjoy1.bat">>"%GBC%\logs\%CSTCONS%joy1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\sn9xkb1.bat">>"%GBC%\logs\%CSTCONS%kb1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\sn9xjoy2.bat">>"%GBC%\logs\%CSTCONS%joy2.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\sn9xkb2.bat">>"%GBC%\logs\%CSTCONS%kb2.log"
set CFGFILE=%SN9X%.conf
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\CFGFileInj.bat">>"%GBC%\logs\CFGFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1

