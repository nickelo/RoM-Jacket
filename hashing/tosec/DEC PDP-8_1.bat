goto :%CRCSRC%
exit /b

:e4839532
for /f "%FLDSWTCH%" %%a in ("Baird Games (19xx)(-).rx1") do set ROMRNM=%%~a
exit /b

:c73a6c62
for /f "%FLDSWTCH%" %%a in ("Spacewar (19xx)(-).bin") do set ROMRNM=%%~a
exit /b

:ddb237d9
for /f "%FLDSWTCH%" %%a in ("Chekmo (19xx)(-).tu6") do set ROMRNM=%%~a
exit /b
:30bddd12
for /f "%FLDSWTCH%" %%a in ("Chekmo II (19xx)(Comeau, John E.).tu6") do set ROMRNM=%%~a
exit /b
