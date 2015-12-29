if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "SimCoupe.cfg" [JOY1] "Controller (XBOX 360 For Windows)"
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "SimCoupe.cfg" [JOY2] "Controller (XBOX 360 For Windows)"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "No"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "75"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "FULL;75;HALF;25;LIGHT;OFF" /DB=6
if %errorlevel%==1 goto :FULLSCAN
if %errorlevel%==2 goto :MOSTSCAN
if %errorlevel%==3 goto :HALFSCAN
if %errorlevel%==4 goto :QUARTERSCAN
if %errorlevel%==5 goto :LIGHTSCAN
if %errorlevel%==6 goto :NOSCAN
goto :QUITOUT

:FULLSCAN
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "Yes"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "100"
echo."Yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SIMCCOMPL
:MOSTSCAN
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "Yes"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "75"
echo."Yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."75">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SIMCCOMPL
:HALFSCAN
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "Yes"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "50"
echo."Yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :SIMCCOMPL
:QUARTERSCAN
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "Yes"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "25"
echo."Yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."25">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :SIMCCOMPL
:LIGHTSCAN
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "Yes"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "10"
echo."Yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :SIMCCOMPL
:NOSCAN
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANL] "No"
"%GBC%\fart.exe" "SimCoupe.cfg" [SCANLVL] "0"
echo."No">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :SIMCCOMPL


:SIMCCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1
