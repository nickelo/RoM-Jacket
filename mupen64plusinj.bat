if "%P1JOYTYPE%"=="JOY" call "%GBC%\mupen64plusJoy1.bat">>"%GBC%\logs\mupen64plusJoy1.log"
if "%P1JOYTYPE%"=="KB" call "%GBC%\mupen64plusKB1.bat">>"%GBC%\logs\mupen64plusKB1.log"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\mupen64plusJOY2.bat">>"%GBC%\logs\mupen64plusJOY2.log"
if "%P2JOYTYPE%"=="KB" call "%GBC%\mupen64plusKB2.bat">>"%GBC%\logs\mupen64plusKB2.log"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "mupen64plus.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "mupen64plus.cfg" [REZY] %DREZY% 		
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "mupen64plus.cfg" [REZX] %REZX%
"%GBC%\fart.exe" "mupen64plus.cfg" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee