:f581ce62
for /f "%FLDSWTCH%" %%a in ("demo.td0:Demo") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:be80a5ca
for /f "%FLDSWTCH%" %%a in ("system10.td0:System disk v1.0") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:4c6ba75f
for /f "%FLDSWTCH%" %%a in ("fd2_dgen.imd:Dosgen") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:a741ad5d
for /f "%FLDSWTCH%" %%a in ("fd2_bifak.imd:Kundregister") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:a741ad5d
for /f "%FLDSWTCH%" %%a in ("fd2_bifak.imd:Kundregister") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
