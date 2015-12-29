:e7f29a98
for /f "%FLDSWTCH%" %%a in ("cpm22wmb.imd:CP-M 2.2") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:358fa850
for /f "%FLDSWTCH%" %%a in ("wmb_org.imd:CP-M 3.0") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:9e010803
for /f "%FLDSWTCH%" %%a in ("wmate3_1024_5s_80t.imd:CP-M 3.0 (alt 1)") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
:8086198c
for /f "%FLDSWTCH%" %%a in ("wmate4_1024_5s_80t.imd:CP-M 3.0 (alt 2)") do (SET ROMRNM=%%~a&SET ROMFLDR=%%~b)
exit /b
