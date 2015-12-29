"%GBC%\CHKCPU32.exe" /V>"%GBC%\ssetype.ini"
set urlNthL=17
set SSEERSURL=
SET GETVAL=
set /A counter=0
for /F "delims=" %%a in ('type "%GBC%\ssetype.ini"') do (
  set /A counter+=1
SET GETVAL=%%~a
call :GETVAL
)
goto :SSEERSCONT

:GETVAL
if %counter% equ %urlNthL% call :SETVAL
exit /b
:SETVAL
for %%a in ("%GETVAL%") do set SSEERSURL=%%~a
exit /b

:SSEERSCONT
for /f "tokens=2 delims=:" %%A in ("%SSEERSURL%") do set SSEERS=%%~A
for /f "tokens=1 delims=, " %%A in ("%SSEERS%") do set MMX=%%~A
for /f "tokens=2 delims=, " %%A in ("%SSEERS%") do set SSE=%%~A
for /f "tokens=3 delims=, " %%A in ("%SSEERS%") do set SSE2=%%~A
for /f "tokens=4 delims=, " %%A in ("%SSEERS%") do set SSE3=%%~A
for /f "tokens=5 delims=, " %%A in ("%SSEERS%") do set SSSE3=%%~A
for /f "tokens=6 delims=, " %%A in ("%SSEERS%") do set SSE4=%%~A
