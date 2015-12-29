goto :%CRCSRC%
exit /b

:eb760f47
for /f "%FLDSWTCH%" %%a in ("Amsoft - Software And Peripherals Catalogue Winter 1984-85 (1984)(Amstrad Consumer Electronics).pdf") do set ROMRNM=%%~a
exit /b
:c1443b82
for /f "%FLDSWTCH%" %%a in ("Titres Amstrad 1988-1989 (1988)(Ocean)(FR).pdf") do set ROMRNM=%%~a
exit /b

:61a448a4
for /f "%FLDSWTCH%" %%a in ("Burning Rubber (1990)(Ocean).cpr") do set ROMRNM=%%~a
exit /b
:c60f0297
for /f "%FLDSWTCH%" %%a in ("Copter 271 (1991)(Loriciels).cpr") do set ROMRNM=%%~a
exit /b
