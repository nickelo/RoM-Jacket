for /f "tokens=2 delims=@" %%a in ('"%GBC%\Qres.exe" /S') do set THERZ=%%~a
for %%a in ("%THERZ:~1, -4%") do set HERTZ=%%~a

if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "vice.ini" [DEV1] "2"
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "vice.ini" [DEV1] "4"
:INJ1
if "%P1JOYTYPE%"=="JOY" goto :INJ2
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "vice.ini" [DEV2] "4"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "vice.ini" [DEV2] "3"

:INJ2
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "vice.ini" [DEV2] "5"
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "vice.ini" [DEV2] "3"

if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY

"%GBC%\fart.exe" "vice.ini" [REZX] "%DREZX%"
"%GBC%\fart.exe" "vice.ini" [REZY] "%DREZY%"
"%GBC%\fart.exe" "vice.ini" [HERTZ] "%HERTZ%"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b


:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutiontest.log"
"%GBC%\fart.exe" "vice.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "vice.ini" [REZY] "%REZY%"
"%GBC%\fart.exe" "vice.ini" [HERTZ] "%HERTZ%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee