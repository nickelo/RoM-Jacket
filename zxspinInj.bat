if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "%CFGFILE%" [REZX] "%DREZX%"
"%GBC%\fart.exe" "%CFGFILE%" [REZY] "%DREZY%"
"%GBC%\fart.exe" "%CFGFILE%" "[DISPLAY]" "3"
"%GBC%\fart.exe" "%CFGFILE%" [SCAN] 0
"%GBC%\fart.exe" "%CFGFILE%" [FRMSK] 0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1	
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutiontest.log"
"%GBC%\fart.exe" "%CFGFILE%" [REZX] "%REZX%"
"%GBC%\fart.exe" "%CFGFILE%" [REZY] "%REZY%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:DISPLAY
"%GBC%\wbox.exe" "RJ_GUI" "Select a display driver" "DirectX;OGL;DirectDraw;GDI" /DB=4
if %errorlevel%==1 goto :DX
if %errorlevel%==2 goto :OGL
if %errorlevel%==3 goto :DD
if %errorlevel%==4 goto :GDI
goto :QUITOUT

:DX
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" "[DISPLAY]" "0"
goto :SCANLINES

:OGL
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" "[DISPLAY]" "1"
goto :SCANLINES

:DD
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" "[DISPLAY]" "2"
goto :SCANLINES

:GDI
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" "[DISPLAY]" "3"
goto :SCANLINES

:SCANLINES
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :SCANON
if %ERRORLEVEL%==2 goto :SCANOFF
goto :QUITOUT

:SCANON
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" [SCAN] 1
goto :FRAMESKIP
:SCANOFF
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" [SCAN] 0
goto :FRAMESKIP

:FRAMESKIP
"%GBC%\wbox.exe" "RJ_GUI" "Enable frameskip??" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :FRAMEON
if %ERRORLEVEL%==2 goto :FRAMEOFF
goto :QUITOUT

:FRAMEON
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" [FRMSK] 1
goto :ZXSPINCOMPL
:FRAMEOFF
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "%CFGFILE%" [FRMSK] 0
goto :ZXPINCOMPL
:ZXSPINCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1