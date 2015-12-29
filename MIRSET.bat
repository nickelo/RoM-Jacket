goto :MIRROR

:NEWVAL
set urlNthL=%NEWVAL%
set /A counter=0
for /F "delims=" %%a in ('type "%GBC%\mirrors.set"') do (
  set /A counter+=1
SET GETVAL=%%~a
call :GETVAL
)
exit /b

:GETVAL
if %counter% equ %urlNthL% call :SETVAL
exit /b
:SETVAL
for %%a in ("%GETVAL%") do set MIR%NEWVAL%=%%~a
exit /b


:MIRROR
for %%a in ("1" "2" "3" "4" "5" "6" "7" "8" "9" "10") do (
set NEWVAL=%%~a
call :NEWVAL
)
