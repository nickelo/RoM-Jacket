if "%CEMU%"=="%NESTP%" "%GBC%\fart.exe" "%NESTP%.xml" [ROM] "%ROMF%"
if "%CEMU%"=="%NESTP%" "%GBC%\fart.exe" "%NESTP%.xml" [ROMPTH] "%GBG%\%GAM%\%CONS%\%NES%\%CSTM%"
if "%CEMU%"=="%VNES%" "%GBC%\fart.exe" "%VNES%.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%NES%\%CSTM%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [ROMPTH] "%GBG%\%GAM%\%CONS%\%NES%\%CSTM%"
