:ININJECT
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Default.Spincfg" [JOYTYPE] "2"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "Default.Spincfg" [JOYTYPE] "7"

if "%P1JOYTYPE%"=="KB" goto :INKB
if "%P1JOYTYPE%"=="JOY" goto :INJOY

:INKB

:INJOY
"%GBC%\fart.exe" -C "Default.spincfg" [P1SET1BUT1] "48"
"%GBC%\fart.exe" -C "Default.spincfg" [P1SET1ANLLYU] "57"
"%GBC%\fart.exe" -C "Default.spincfg" [P1SET1ANLLYD] "56"
"%GBC%\fart.exe" -C "Default.spincfg" [P1SET1ANLLXL] "54"
"%GBC%\fart.exe" -C "Default.spincfg" [P1SET1ANLLXR] "55"
