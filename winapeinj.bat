"%GBC%\fart.exe" "WinAPE.ini" [EMUPTH] "%GBE%\%EMUZ%\%WINAPE%"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "WinAPE.ini" [REZX] "%DREZX%"
"%GBC%\fart.exe" "WinAPE.ini" [REZY] "%DREZY%"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutiontest.log"
"%GBC%\fart.exe" "WinAPE.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "WinAPE.ini" [REZY] "%REZY%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee