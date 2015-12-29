if "%P1JOYTYPE%"=="JOY" (
call "%GBC%\cpsjoy1.bat">>"%GBC%\logs\cpsjoy1.log") ELSE (call "%GBC%\cpskb1.bat">>"%GBC%\logs\cpskb1.log"
)
set JNMBR=1

if "%P1JOYTYPE%"=="KB" SET JNMBR=0
if "%P2JOYTYPE%"=="JOY" (
call "%GBC%\cpsjoy2.bat">>"%GBC%\logs\cpsjoy2.log") ELSE (call "%GBC%\cpskb2.bat">>"%GBC%\logs\cpskb2.log"
)
set CFGFILE=Game.ini

%BSTRT% "%WBUSY%" "RJ_GUI" "Injecting Joystick Configurations" /marquee
call "%GBC%\CFGFileInj.bat">>"%GBC%\logs\CFGFileInj.log"
"%GBC%\fart.exe" "%CFGFILE%" "[PADDLE1]" "%PADDLE2%"
"%GBC%\fart.exe" "%CFGFILE%" "[PADDLE2]" "%PADDLE2%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
if "%PRVST%"=="1" goto :PRESETS

:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "fba*.ini" [BLITN] 0
"%GBC%\fart.exe" "fba*.ini" [BLIT0V] 0
"%GBC%\fart.exe" "fba*.ini" [BLIT1V] 0
"%GBC%\fart.exe" "fba*.ini" [BLIT2V] 0
"%GBC%\fart.exe" "fba*.ini" [BLIT3V] 0
"%GBC%\fart.exe" "fba*.ini" [BLIT4V] 0
"%GBC%\fart.exe" "fba*.ini" [SCAN] 0
"%GBC%\fart.exe" "fba*.ini" [SCANV] 0
"%GBC%\fart.exe" "fba*.ini" [GAMMA] 0
"%GBC%\fart.exe" "fba*.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "fba*.ini" [REZY] %DREZY%
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
:JOYSELECT
if "%P1JOYTYPE%"=="JOY" (
call "%GBC%\cpsjoy1.bat">>"%GBC%\logs\cpsjoy1.log") ELSE (call "%GBC%\cpskb1.bat">>"%GBC%\logs\cpskb1.bat"
)
if "%P2JOYTYPE%"=="JOY" (
call "%GBC%\cpsjoy2.bat">>"%GBC%\logs\cpsjoy2.log") ELSE (call "%GBC%\cpskb2.bat">>"%GBC%\logs\cpskb2.log"
)
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "fba*.ini" [REZX] %REZX%
"%GBC%\fart.exe" "fba*.ini" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

if "%BCROP%"=="1" "%GBC%\fart.exe" "fba*.ini" [MONASPX] 3
if "%BCROP%"=="1" echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%BCROP%"=="1" "%GBC%\fart.exe" "fba*.ini" [MONASPY] 4
if "%BCROP%"=="1" echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%BCROP%"=="" "%GBC%\fart.exe" "fba*.ini" [MONASPX] 16
if "%BCROP%"=="" echo."16">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%BCROP%"=="" "%GBC%\fart.exe" "fba*.ini" [MONASPY] 9
if "%BCROP%"=="" echo."9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Use Filtering?" "Filter;Off" /DB=2
if %ERRORLEVEL%==1 goto :FULLS
if %ERRORLEVEL%==2 goto :NOINJ
goto :QUITOUT

:FULLS
"%GBC%\fart.exe" "fba*.ini" [FILT] 1 
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:NOINJ
"%GBC%\fart.exe" "fba*.ini" [FILT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to turn on Brightness?" "Brighten;OFF"
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR0
goto :QUITOUT

:SHDR1
"%GBC%\fart.exe" "fba*.ini" [BRIGHT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:SHDR0
"%GBC%\fart.exe" "fba*.ini" [BRIGHT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:BLIT
"%GBC%\wbox.exe" "RJ_GUI" "Select a Blitter Method." "Basic;Soft;Enhanced;Alt;OFF" /DB=3
if %ERRORLEVEL%==1 goto :BLITLOW
if %ERRORLEVEL%==2 goto :BLITMID
if %ERRORLEVEL%==3 goto :BLITON
if %ERRORLEVEL%==4 goto :BLITDX
if %ERRORLEVEL%==5 goto :BLITOFF
goto :QUITOUT

:BLITDX
"%GBC%\fart.exe" "fba*.ini" [BLITN] 4
"%GBC%\fart.exe" "fba*.ini" [BLIT4V] 1
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITON
"%GBC%\fart.exe" "fba*.ini" [BLITN] 3
"%GBC%\fart.exe" "fba*.ini" [BLIT3V] 1
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITMID
"%GBC%\fart.exe" "fba*.ini" [BLITN] 2
"%GBC%\fart.exe" "fba*.ini" [BLIT2V] 1
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITLOW
"%GBC%\fart.exe" "fba*.ini" [BLITN] 1
"%GBC%\fart.exe" "fba*.ini" [BLIT1V] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:BLITOFF
"%GBC%\fart.exe" "fba*.ini" [BLITN] 2
"%GBC%\fart.exe" "fba*.ini" [BLITV] 1
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Turn on scanlines?" "Low;Medium;High;OFF" /DB=3
if %ERRORLEVEL%==1 goto :SCANLOW
if %ERRORLEVEL%==2 goto :SCANMID
if %ERRORLEVEL%==3 goto :SCANON
if %ERRORLEVEL%==4 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "fba*.ini" [SCAN] 1
"%GBC%\fart.exe" "fba*.ini" [SCANV] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0>>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA
:SCANMID
"%GBC%\fart.exe" "fba*.ini" [SCAN] 1
"%GBC%\fart.exe" "fba*.ini" [SCANV] 140
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."140>>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA
:SCANLOW
"%GBC%\fart.exe" "fba*.ini" [SCAN] 1
"%GBC%\fart.exe" "fba*.ini" [SCANV] 190
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."190>>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA
:SCANOFF
"%GBC%\fart.exe" "fba*.ini" [SCAN] 0
"%GBC%\fart.exe" "fba*.ini" [SCANV] 255
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."255>>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GAMMA

:GAMMA
"%GBC%\wbox.exe" "RJ_GUI" "Enable Gamma Correction?" "On;OFF" /DB=1
if %ERRORLEVEL%==1 goto :GAMON
if %ERRORLEVEL%==2 goto :GAMOFF
goto :QUITOUT
:GAMON
"%GBC%\fart.exe" "fba*.ini" [GAMMA] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FBACOMP
:GAMOFF
"%GBC%\fart.exe" "fba*.ini" [GAMMA] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FBACOMP

:FBACOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1