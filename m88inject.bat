if "%ALLCONSOLES%"=="" goto :QUERY
if "%JOY1TYPE%"=="JOY" "%GBC%\fart.exe" "XM6.ini" [FLAGS] 46301320
if "%JOY1TYPE%"=="KB" "%GBC%\fart.exe" "XM6.ini" [FLAGS] 46301312
exit /b
:QUERY
if "%JOY1TYPE%"=="JOY" "%GBC%\fart.exe" "XM6.ini" [FLAGS] 46301320
if "%JOY1TYPE%"=="KB" "%GBC%\fart.exe" "XM6.ini" [FLAGS] 46301312
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:XM6COMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1
