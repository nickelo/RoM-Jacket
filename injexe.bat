"%GBC%\fart.exe" "*.bat" "[DMT]" "REM [DMT]" 
"%GBC%\fart.exe" "*.bat" "REM [XFG]" --remove 
"%GBC%\fart.exe" "*.bat" "[XFG]" --remove 
if "%AMCEXST%" NEQ "" "%GBC%\fart.exe" "*.bat" "[XPD]" "%^%%CD%%^%\antimicro.exe"
if "%XPDEXST%" NEQ "" "%GBC%\fart.exe" "*.bat" "[XPD]" "%^%%CD%%^%\XPadder.exe"
REM if "%XPADDER%"=="DISABLED" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]" 
REM if "%XPADDER%"=="[XPD]" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]" 
REM if "%XPADDER%"=="" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]" 
REM if "%XPADDER%"=="[XPD]" "%GBC%\fart.exe" "*.bat" [XPT] --remove 
REM "%GBC%\fart.exe" "*.bat" [XPT] --remove 
if "%JOYVAL%" NEQ "XPADDER" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]"
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "*.bat" [XPLT] "1"
if "%JOYVAL%"=="XPADDER" "%GBC%\fart.exe" "*.bat" [JYZ] --remove
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "*.bat" [JYZ] --remove
"%GBC%\fart.exe" "*.bat" [XPD] --remove

REM copy /Y "%GBC%\net\%XPROF%\EMU\%CSTCONS%\*.xpadderprofile" "%CSTM%"
"%GBC%\fart.exe" "*.bat" [EMUL] "%%CD%%"
"%GBC%\fart.exe" "*.bat" [EMUL] "%%CD%%"
call "%GBC%\emuexe.bat"
"%GBC%\fart.exe" "*.bat" [EMUZ] "%EMEXE%"