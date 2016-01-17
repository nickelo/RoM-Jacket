set CFGFILE=blueMSX Default.config

if "%P1JOYTYPE%"=="JOY" call "%GBC%\bmsxJoy1.bat">>"%GBC%\logs\bmsxJoy1.log"
REM if "%P2JOYTYPE%"=="JOY" call "%GBC%\bmsxJoy2.bat">>"%GBC%\logs\bmsxJoy2.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\bmsxkb1.bat">>"%GBC%\logs\bmsxkb1.log"
REM if "%P2JOYTYPE%"=="KB" call "%GBC%\bmsxkb2.bat">>"%GBC%\logs\bmsxkb2.log"
call "%GBC%\cfgfileinj.bat">>"%GBC%\logs\cfgfileinj.log"
if "%PRVST%"=="1" goto :PRESETS

:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "%BMSX%.ini" [REZX] "%DREZX%"
"%GBC%\fart.exe" "%BMSX%.ini" [REZY] "%DREZY%"
"%GBC%\fart.exe" "%BMSX%.ini" [HERTZ] "%HERTZ%"
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "no"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "25"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutiontest.log"
"%GBC%\fart.exe" "%BMSX%.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "%BMSX%.ini" [REZY] "%REZY%"

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Select the scanline intensity" "OFF;10;25;50;75;100" /DB=1
if %ERRORLEVEL%==1 goto :NOSCAN 
if %ERRORLEVEL%==2 goto :10SCAN
if %ERRORLEVEL%==3 goto :25SCAN
if %ERRORLEVEL%==4 goto :50SCAN
if %ERRORLEVEL%==5 goto :75SCAN
if %ERRORLEVEL%==6 goto :100SCAN
goto :QUITOUT

:NOSCAN
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "no"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "25"
echo."no">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BMSXCOMPL
:10SCAN
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "yes"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "10"
echo."yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BMSXCOMPL
:25SCAN
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "yes"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "25"
echo."yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."25">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BMSXCOMPL
:50SCAN
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "yes"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "50"
echo."yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BMSXCOMPL
:75SCAN
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "yes"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "75"
echo."yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."75">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BMSXCOMPL
:100SCAN
"%GBC%\fart.exe" "%BMSX%.ini" [SCAN] "yes"
"%GBC%\fart.exe" "%BMSX%.ini" [SCANI] "100"
echo."yes">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BMSXCOMPL

:BMSXCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1