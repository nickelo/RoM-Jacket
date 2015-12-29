goto :%CRCSRC%
exit /b
:9e109d42
for /f "%FLDSWTCH%" %%a in ("xformtop.opk:Tomb Raider (E3 Demo, 19960520)") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
