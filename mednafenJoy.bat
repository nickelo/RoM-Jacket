:ININJECT
if "%SHRTN%"=="" goto :GENJOY
if "%SHRTN%"=="NGBA" goto :GENJOY
goto :INJECT

:GENJOY
for %%a in ("ps1") do set SHRTN=%%~a

:INJECT
if "%P1JOYTYPE%"=="JOY" call "%GBC%\%SHRTN%joy1.bat">>"%GBC%\logs\%CSTCONS%joy1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\%SHRTN%kb1.bat">>"%GBC%\logs\%CSTCONS%kb1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\%SHRTN%joy2.bat">>"%GBC%\logs\%CSTCONS%joy2.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\%SHRTN%kb2.bat">>"%GBC%\logs\%CSTCONS%kb2.log"
set CFGFILE=%MEDN%*.cfg
%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\CFGFileInj.bat">>"%GBC%\logs\CFGFileInj.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1

