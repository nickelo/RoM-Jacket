goto :%CRCSRC%
exit /b

:47312fa6
for /f "%FLDSWTCH%" %%a in ("Pigamend.exe") do set ROMRNM=%%~a
exit /b
:d9cf6f7d
for /f "%FLDSWTCH%" %%a in ("Pigamend.mus") do set ROMRNM=%%~a
exit /b
:632a7240
for /f "%FLDSWTCH%" %%a in ("Readme.pig") do set ROMRNM=%%~a
exit /b
:a919cae1
for /f "%FLDSWTCH%" %%a in ("Mine-0.bin") do set ROMRNM=%%~a
exit /b
:5c743f2c
for /f "%FLDSWTCH%" %%a in ("Mine-0.doc") do set ROMRNM=%%~a
exit /b
:f094ab7d
for /f "%FLDSWTCH%" %%a in ("pjanic.bas") do set ROMRNM=%%~a
exit /b
:8624f8d2
for /f "%FLDSWTCH%" %%a in ("pjanic.cod") do set ROMRNM=%%~a
exit /b
