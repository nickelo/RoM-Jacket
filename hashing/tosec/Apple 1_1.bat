goto :%CRCSRC%
exit /b

:9486b37b
for /f "%FLDSWTCH%" %%a in ("Blackjack (19xx)(-)[Req BASIC][load at 4A.FFR800.FFFR, enter at E2B3].wav") do set ROMRNM=%%~a
exit /b
:3c87f6cd
for /f "%FLDSWTCH%" %%a in ("Lunar Lander (1976)(-)[load at 300.A00R, enter at 300].wav") do set ROMRNM=%%~a
exit /b
:50a23014
for /f "%FLDSWTCH%" %%a in ("Star Trek (1976)(-)[p][Req BASIC][load at 4A.FFR300.FFFR, enter at E2B3].wav") do set ROMRNM=%%~a
exit /b
