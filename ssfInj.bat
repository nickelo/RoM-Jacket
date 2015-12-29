"%GBC%\fart.exe" "SSF.ini" [YEAR] "%CURDATE%"
for /f "tokens=3 delims=/" %%a in ('date /t') do set CURDATE=%%~a
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\inifile.exe" "SSF.ini" [Input] PadType0_0="0"
"%GBC%\inifile.exe" "SSF.ini" [Input] PadType1_0="0"
if "%P1JOYTYPE%"=="JOY" call :P1JOY
if "%P1JOYTYPE%"=="KB" call :P1KB
if "%P2JOYTYPE%"=="JOY" call :P2JOY
if "%P2JOYTYPE%"=="KB" call :P2KB
"%GBC%\fart.exe" "SSF.ini" [DRVNUM] "%SATNUM%"
"%GBC%\fart.exe" "SSF.ini" [WIDESCREEN] 0
"%GBC%\fart.exe" "SSF.ini" [SCAN] 0
"%GBC%\fart.exe" "SSF.ini" [SCANS] 0
"%GBC%\fart.exe" "SSF.ini" [ASPCT] 1
"%GBC%\fart.exe" "SSF.ini" [VSYNC] 0
"%GBC%\fart.exe" "SSF.ini" [FIXFS] 0
"%GBC%\fart.exe" "SSF.ini" [BFILT] 0
"%GBC%\fart.exe" "SSF.ini" [STRETCH] 1
"%GBC%\fart.exe" "SSF.ini" [FSD] 0
"%GBC%\fart.exe" "Setting.ini" [WIDESCREEN] 0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:SAT1JOY
set P1PR=1
"%GBC%\wbox.exe" "RJ_GUI" "Select a Joy Type for Player 1" "Pad;MultiJoy;MissionStick" /DB=%P1PR%
if %ERRORLEVEL%==1 goto :P1PAD
if %ERRORLEVEL%==2 goto :P1MULTI
if %ERRORLEVEL%==3 goto :P1STICK
goto :QUITOUT

:P1PAD
set PAD1TYPE=0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P1INJ

:P1MULTI
set PAD1TYPE=3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P1INJ

:P1STICK
set PAD1TYPE=1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P1INJ

:P1INJ
"%GBC%\inifile.exe" "SSF.ini" [Input] PadType0_0="%PAD1TYPE%"
if "%P1JOYTYPE%"=="JOY" call :P1JOY
if "%P1JOYTYPE%"=="KB" call :P1KB
goto :SAT2JOY
:P1JOY
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad0_0_0="1/100358/1/100359/1/100360/1/100361/1/65536/1/65792/1/66048/1/66304/1/66560/1/66816/1/98818/1/98817/1/67328/0/0/0/0/0/0/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad0_0_1="0/0/0/0/0/0/0/0/0/65536/0/65792/0/66048/0/66304/0/66560/0/66816/0/98818/0/98817/1/67328/1/98307/1/98563/1/99075/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad0_0_3="1/100358/1/100359/1/100360/1/100361/1/65536/1/65792/1/66048/1/66304/1/66560/1/66816/0/0/0/0/1/67328/1/98307/1/98563/0/0/1/98821/1/98820/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
exit /b
:P1KB
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad0_0_0="2/200/2/208/2/203/2/205/2/44/2/45/2/46/2/31/2/32/2/33/2/30/2/34/2/28/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad0_0_1="0/0/0/0/0/0/0/0/2/44/2/45/2/46/2/31/2/32/2/33/2/30/2/34/2/28/0/3/0/3/0/3/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad0_0_3="2/200/2/208/2/203/2/205/2/44/2/45/2/46/2/31/2/32/2/33/0/0/0/0/2/28/0/3/0/3/0/0/0/5/0/5/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0"
exit /b
:SAT2JOY
set P1PR=1
"%GBC%\wbox.exe" "RJ_GUI" "Select a Joy Type for Player 2" "Pad;MultiJoy;MissionStick" /DB=%P1PR%
if %ERRORLEVEL%==1 goto :P2PAD
if %ERRORLEVEL%==2 goto :P2MULTI
if %ERRORLEVEL%==3 goto :P2STICK
goto :QUITOUT

:P2PAD
set PAD2TYPE=0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P2INJ

:P2MULTI
set PAD2TYPE=3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P2INJ

:P2STICK
set PAD2TYPE=1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :P2INJ

:P2INJ
"%GBC%\inifile.exe" "SSF.ini" [Input] PadType1_0="%PAD2TYPE%"
if "%P2JOYTYPE%"=="JOY" call :P2JOY
if "%P2JOYTYPE%"=="KB" call :P2KB
goto :SCREENTYPE
:P2JOY
if "%P1JOYTYPE%"=="KB" goto :P2JOYJOY
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_0="1/34822/1/34823/1/34824/1/34825/1/0/1/256/1/512/1/768/1/1024/1/1280/1/33282/1/33281/1/1792/0/0/0/0/0/0/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
echo."1/34822/1/34823/1/34824/1/34825/1/0/1/256/1/512/1/768/1/1024/1/1280/1/33282/1/33281/1/1792/0/0/0/0/0/0/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_1="0/0/0/0/0/0/0/0/1/0/1/256/1/512/1/768/1/1024/1/1280/1/33282/1/33281/1/1792/1/32771/1/33027/1/33539/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
echo."0/0/0/0/0/0/0/0/1/0/1/256/1/512/1/768/1/1024/1/1280/1/33282/1/33281/1/1792/1/32771/1/33027/1/33539/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_3="1/34822/1/34823/1/34824/1/34825/1/0/1/256/1/512/1/768/1/1024/1/1280/0/0/0/0/1/1792/1/32771/1/33027/0/0/1/33285/1/33284/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
echo."1/34822/1/34823/1/34824/1/34825/1/0/1/256/1/512/1/768/1/1024/1/1280/0/0/0/0/1/1792/1/32771/1/33027/0/0/1/33285/1/33284/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b
:P2JOYJOY
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_0="1/100358/1/100359/1/100360/1/100361/1/65536/1/65792/1/66048/1/66304/1/66560/1/66816/1/98818/1/98817/1/67328/0/0/0/0/0/0/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
echo."1/100358/1/100359/1/100360/1/100361/1/65536/1/65792/1/66048/1/66304/1/66560/1/66816/1/98818/1/98817/1/67328/0/0/0/0/0/0/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_1="0/0/0/0/0/0/0/0/0/65536/0/65792/0/66048/0/66304/0/66560/0/66816/0/98818/0/98817/1/67328/1/98307/1/98563/1/99075/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
echo."0/0/0/0/0/0/0/0/0/65536/0/65792/0/66048/0/66304/0/66560/0/66816/0/98818/0/98817/1/67328/1/98307/1/98563/1/99075/0/0/0/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_3="1/100358/1/100359/1/100360/1/100361/1/65536/1/65792/1/66048/1/66304/1/66560/1/66816/0/0/0/0/1/67328/1/98307/1/98563/0/0/1/98821/1/98820/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0"
echo."1/100358/1/100359/1/100360/1/100361/1/65536/1/65792/1/66048/1/66304/1/66560/1/66816/0/0/0/0/1/67328/1/98307/1/98563/0/0/1/98821/1/98820/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0/1/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b
:P2KB
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_0="2/23/2/37/2/36/2/38/2/48/2/49/2/50/2/20/2/21/2/22/2/24/2/25/2/19/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0"
echo."2/23/2/37/2/36/2/38/2/48/2/49/2/50/2/20/2/21/2/22/2/24/2/25/2/19/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_1="0/0/0/0/0/0/0/0/2/48/2/49/2/50/2/20/2/21/2/22/2/24/2/25/2/19/0/3/0/3/0/3/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0"
echo."0/0/0/0/0/0/0/0/2/48/2/49/2/50/2/20/2/21/2/22/2/24/2/25/2/19/0/3/0/3/0/3/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\inifile.exe" "SSF.ini" [Input] Pad1_0_3="2/23/2/37/2/36/2/38/2/48/2/49/2/50/2/20/2/21/2/22/0/0/0/0/2/19/0/3/0/3/0/0/0/5/0/5/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0"
echo."2/23/2/37/2/36/2/38/2/48/2/49/2/50/2/20/2/21/2/22/0/0/0/0/2/19/0/3/0/3/0/0/0/5/0/5/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0/0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b

:SCREENTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Enable widescreen?" "Widescreen;Standard" /DB=2
if %ERRORLEVEL%==1 goto :EWIDE
if %ERRORLEVEL%==2 goto :STAND
goto :QUITOUT
:STAND
"%GBC%\fart.exe" "*.ini" [WIDESCREEN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:EWIDE
"%GBC%\fart.exe" "*.ini" [WIDESCREEN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Enable scanlines?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :ESCAN
if %ERRORLEVEL%==2 goto :DSCAN
goto :QUITOUT
:ESCAN
"%GBC%\fart.exe" "SSF.ini" [SCAN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCANTYPE
:DSCAN
"%GBC%\fart.exe" "SSF.ini" [SCAN] 0
"%GBC%\fart.exe" "SSF.ini" [SCANS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPECT
:SCANTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Select a scanline strength" "Light;Medium;Full"
if %ERRORLEVEL%==1 goto :LIGHTS
if %ERRORLEVEL%==2 goto :MEDS
if %ERRORLEVEL%==3 goto :FULLS
goto :QUITOUT

:LIGHTS
"%GBC%\fart.exe" "SSF.ini" [SCANS] 20
echo."20">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPECT
:MEDS
"%GBC%\fart.exe" "SSF.ini" [SCANS] 70
echo."70">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPECT
:FULLS
"%GBC%\fart.exe" "SSF.ini" [SCANS] 100
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPECT

:ASPECT
"%GBC%\wbox.exe" "RJ_GUI" "Enforce the aspect ratio?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :FASP
if %ERRORLEVEL%==2 goto :NASP
goto :QUITOUT

:FASP
"%GBC%\fart.exe" "SSF.ini" [ASPCT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:NASP
"%GBC%\fart.exe" "SSF.ini" [ASPCT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :EVSYNC
if %ERRORLEVEL%==2 goto :NVSYNC
goto :QUITOUT

:EVSYNC
"%GBC%\fart.exe" "SSF.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FXFS
:NVSYNC
"%GBC%\fart.exe" "SSF.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FXFS

:FXFS
"%GBC%\wbox.exe" "RJ_GUI" "Enable Fixed-Fullscreen resolution?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :FIXED
if %ERRORLEVEL%==2 goto :UNFX
goto :QUITOUT

:FIXED
"%GBC%\fart.exe" "SSF.ini" [FIXFS] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFILT
:UNFX
"%GBC%\fart.exe" "SSF.ini" [FIXFS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BFILT

:BFILT
"%GBC%\wbox.exe" "RJ_GUI" "Enable bilinear filtertering?" "Enable;Disable" /DB=2
if %ERRORLEVEL%==1 goto :FILTON
if %ERRORLEVEL%==2 goto :FILTOFF
goto :QUITOUT

:FILTON
"%GBC%\fart.exe" "SSF.ini" [BFILT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STRETCH
:FILTOFF
"%GBC%\fart.exe" "SSF.ini" [BFILT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :STRETCH

:STRETCH
"%GBC%\wbox.exe" "RJ_GUI" "Enable screen-stretching?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :ESTR
if %ERRORLEVEL%==2 goto :NSTR
goto :QUITOUT

:ESTR
"%GBC%\fart.exe" "SSF.ini" [STRETCH] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FULLSIZE
:NSTR
"%GBC%\fart.exe" "SSF.ini" [STRETCH] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :FULLSIZE

:FULLSIZE
"%GBC%\wbox.exe" "RJ_GUI" "Fullscreen display?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :FSD
if %ERRORLEVEL%==2 goto :NSD
goto :QUITOUT

:FSD
"%GBC%\fart.exe" "SSF.ini" [FSD] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REGION
:NSD
"%GBC%\fart.exe" "SSF.ini" [FSD] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REGION

:REGION
"%GBC%\wbox.exe" "RJ_GUI" "Select a region for your games.^If you have multiple regions or don't know, choose ''Guess''." "Japan;Asian;Americas;European;Guess" /DB=5
if %ERRORLEVEL%==1 goto :JPN
if %ERRORLEVEL%==2 goto :ASN
if %ERRORLEVEL%==3 goto :USA
if %ERRORLEVEL%==4 goto :EUR
if %ERRORLEVEL%==5 goto :GUE
goto :QUITOUT

:JPN
"%GBC%\fart.exe" "*.ini" [AREACODE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SSFCOMPL
:ASN
"%GBC%\fart.exe" "*.ini" [AREACODE] 2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SSFCOMPL
:USA
"%GBC%\fart.exe" "*.ini" [AREACODE] 4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SSFCOMPL
:EUR
"%GBC%\fart.exe" "*.ini" [AREACODE] c
echo."c">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SSFCOMPL
:GUE
:SSFCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1