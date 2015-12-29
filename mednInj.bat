"%GBC%\fart.exe" "%MEDN%*.cfg" [PSXBIOSEU] "%EUBIOS%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [PSXBIOSJP] "%JPBIOS%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [PSXBIOSUS] "%USBIOS%"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "%MEDN%*.cfg" [ASPC] aspect_int
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADR] none
"%GBC%\fart.exe" "%MEDN%*.cfg" [NOGL] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [SCAN] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADG] none
"%GBC%\fart.exe" "%MEDN%*.cfg" [INTERP] 1
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLUR] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [ACCUMBLUR] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLURLVL] 50
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "What aspect ratio would you prefer?" "Fullscreen;Fill Aspect;Closest Integer" /DB=2
if %ERRORLEVEL%==1 goto :FULLS
if %ERRORLEVEL%==2 goto :FILS
if %ERRORLEVEL%==3 goto :NOINJ
goto :QUITOUT

:FULLS
"%GBC%\fart.exe" "%MEDN%*.cfg" [ASPC] full 
echo."full">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:FILS
"%GBC%\fart.exe" "%MEDN%*.cfg" [ASPC] aspect
echo."aspect">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:NOINJ
"%GBC%\fart.exe" "%MEDN%*.cfg" [ASPC] aspect_int
echo."aspect_int">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADER

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to try a filtering preset?" "Post Proc;Scale;OFF"
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR2
if %ERRORLEVEL%==3 goto :SHDR0
goto :QUITOUT

:SHDR1
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADR] ipsharper
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADG] none
"%GBC%\fart.exe" "%MEDN%*.cfg" [NOGL] 1
echo."ipsharper">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."none">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SHDR2
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADR] none
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADG] nn3x
"%GBC%\fart.exe" "%MEDN%*.cfg" [NOGL] 0
echo."none">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."nn3x">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SHDR0
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADR] none
"%GBC%\fart.exe" "%MEDN%*.cfg" [SHADG] none
"%GBC%\fart.exe" "%MEDN%*.cfg" [NOGL] 0
echo."none">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."none">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Turn on scanlines?" "Low;Medium;High;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SCANLOW
if %ERRORLEVEL%==2 goto :SCANMID
if %ERRORLEVEL%==3 goto :SCANON
if %ERRORLEVEL%==4 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "%MEDN%*.cfg" [SCAN] 89
echo."89">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INTERP
:SCANMID
"%GBC%\fart.exe" "%MEDN%*.cfg" [SCAN] 20
echo."20">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INTERP
:SCANLOW
"%GBC%\fart.exe" "%MEDN%*.cfg" [SCAN] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INTERP
:SCANOFF
"%GBC%\fart.exe" "%MEDN%*.cfg" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :INTERP

:INTERP
"%GBC%\wbox.exe" "RJ_GUI" "Enable Bilinear Interpolation?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :INTON
if %ERRORLEVEL%==2 goto :NOINT
goto :QUITOUT
:INTON
"%GBC%\fart.exe" "%MEDN%*.cfg" [INTERP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLUR
:NOINT
"%GBC%\fart.exe" "%MEDN%*.cfg" [INTERP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLUR

:BLUR
"%GBC%\wbox.exe" "RJ_GUI" "Enable Blur?" "Enable;EnableColor;Disable" /DB=3
if %ERRORLEVEL%==1 goto :EBLUR
if %ERRORLEVEL%==2 goto :CBLUR
if %ERRORLEVEL%==3 goto :NOBLUR
goto :QUITOUT

:EBLUR
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLUR] 1
"%GBC%\fart.exe" "%MEDN%*.cfg" [ACCUMBLUR] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLURLVL] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLURLVL
:CBLUR
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLUR] 1
"%GBC%\fart.exe" "%MEDN%*.cfg" [ACCUMBLUR] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLURLVL
:NOBLUR
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLUR] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [ACCUMBLUR] 0
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLURLVL] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEDNCOMPL
:BLURLVL
"%GBC%\wbox.exe" "RJ_GUI" "Set the color accumulation level" "Little;Half;Lots" /DB=2
if %ERRORLEVEL%==1 goto :LBLUR
if %ERRORLEVEL%==2 goto :MBLUR
if %ERRORLEVEL%==3 goto :FBLUR
goto :QUITOUT
:LBLUR
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLURLVL] 10
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEDNCOMPL
:MBLUR
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLURLVL] 50
echo."50">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEDNCOMPL
:FBLUR
"%GBC%\fart.exe" "%MEDN%*.cfg" [BLURLVL] 75
echo."75">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MEDNCOMPL

:MEDNCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
set CANCELLED=1