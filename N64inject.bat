if "%CEMU%"=="%MUPEN%" goto :MUPEN
"%GBC%\fart.exe" "Project64.cfg" "[ROM]" "%ROMNM%"
"%GBC%\fart.exe" "Project64.cfg" "[ROMPTH]" "%GBG%\%GAM%\%CONS%\%N64%\%CSTM%"
"%GBC%\fart.exe" "NRage.ini" "[ROMDIR]" "%GBG%\%GAM%\%CONS%\%N64%\%CSTM%"
exit /b
:MUPEN
"%GBC%\fart.exe" "mupen64plus.cfg" "[ROMPTH]" "%GBG%\%GAM%\%CONS%\%N64%\%CSTM%"
