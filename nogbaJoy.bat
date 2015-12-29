:ININJECT
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "NO$GBA.ini" [JOYTYPE] -enabled
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "NO$GBA.ini" [JOYTYPE] Disabled (fast)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1