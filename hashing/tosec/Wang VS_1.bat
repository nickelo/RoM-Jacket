goto :%CRCSRC%
exit /b

:41db9abf
for /f "%FLDSWTCH%" %%a in ("PAKMAN.EMP") do set ROMRNM=%%~a
exit /b
:77539ae1
for /f "%FLDSWTCH%" %%a in ("PATIENCE.EMP") do set ROMRNM=%%~a
exit /b
:470bab69
for /f "%FLDSWTCH%" %%a in ("TETRIS.EMP") do set ROMRNM=%%~a
exit /b
