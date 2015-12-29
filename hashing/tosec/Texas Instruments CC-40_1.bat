goto :%CRCSRC%
exit /b

:83f3ceb2
for /f "%FLDSWTCH%" %%a in ("Blackjak.pgm") do set ROMRNM=%%~a
exit /b
