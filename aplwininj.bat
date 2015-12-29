%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
if "%ALLCONSOLES%"=="" goto :QUERY
if "%P1JOYTYPE%" NEQ "JOY" "%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 0
"%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 1
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 1
"%GBC%\fart.exe" "PREPREF.cmd" [SCANL] 0
exit /b
:QUERY
if "%P1JOYTYPE%" NEQ "JOY" goto :JOY1OFF
"%GBC%\wbox.exe" "RJ_GUI" "Joystick Player 1 Mode" "Disable;Joystick;Cursors;Numpad;Mouse" /DB=2
if %ERRORLEVEL%==1 goto :JOY1OFF
if %ERRORLEVEL%==2 goto :JOY1ON
if %ERRORLEVEL%==3 goto :JOY1CURS
if %ERRORLEVEL%==4 goto :JOY1NUMP
if %ERRORLEVEL%==5 goto :JOY1MOUS
goto :QUITOUT

:JOY1OFF
"%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 0
goto :P2TST

:JOY1ON
"%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 1
goto :P2TST

:JOY1CURS
"%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 2
goto :P2TST

:JOY1NUMP
"%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 3
goto :P2TST

:JOY1MOUS
"%GBC%\fart.exe" "PREPREF.cmd" [JOY1TYPE] 4
goto :P2TST


:P2TST
if "%P2JOYTYPE%" NEQ "JOY" goto :JOY2OFF
"%GBC%\wbox.exe" "RJ_GUI" "Joystick Player 2 Mode" "Disable;Joystick;Cursors;Numpad;Mouse" /DB=2
if %ERRORLEVEL%==1 goto :JOY2OFF
if %ERRORLEVEL%==2 goto :JOY2ON
if %ERRORLEVEL%==3 goto :JOY2CURS
if %ERRORLEVEL%==4 goto :JOY2NUMP
if %ERRORLEVEL%==5 goto :JOY2MOUS
goto :QUITOUT

:JOY2OFF
"%GBC%\fart.exe" "PREPREF.cmd" [JOY2TYPE] 0
goto :VIDEOSET

:JOY2ON
"%GBC%\fart.exe" "PREPREF.cmd" [JOY2TYPE] 1
goto :VIDEOSET

:JOY2CURS
"%GBC%\fart.exe" "PREPREF.cmd" [JOY2TYPE] 2
goto :VIDEOSET

:JOY2NUMP
"%GBC%\fart.exe" "PREPREF.cmd" [JOY2TYPE] 3
goto :VIDEOSET


:JOY2MOUS
"%GBC%\fart.exe" "PREPREF.cmd" [JOY2TYPE] 4
goto :VIDEOSET


:VIDEOSET
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :SCANON
if %ERRORLEVEL%==2 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "PREPREF.cmd" [SCANL] 1
goto :VIDEOTYPE

:SCANOFF
"%GBC%\fart.exe" "PREPREF.cmd" [SCANL] 0
goto :VIDEOTYPE

:VIDEOTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Set Video Output Type?" "Monochrome;Color;ColorText;TV;Amber;Green;White" /DB=4
if %ERRORLEVEL%==1 goto :MONO
if %ERRORLEVEL%==2 goto :COLOR
if %ERRORLEVEL%==3 goto :TXT
if %ERRORLEVEL%==4 goto :TV
if %ERRORLEVEL%==5 goto :AMBER
if %ERRORLEVEL%==6 goto :GREEN
if %ERRORLEVEL%==7 goto :WHITE
goto :QUITOUT

:MONO
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 0
goto :APLWINCOMPL

:COLOR
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 1
goto :APLWINCOMPL

:TXT
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 2
goto :APLWINCOMPL

:TV
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 3
goto :APLWINCOMPL

:AMBER
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 4
goto :APLWINCOMPL

:GREEN
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 5
goto :APLWINCOMPL

:WHITE
"%GBC%\fart.exe" "PREPREF.cmd" [VIDEO] 6
goto :APLWINCOMPL

:APLWINCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1