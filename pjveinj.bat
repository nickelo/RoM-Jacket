if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "config.tmp" [CTRLR] "false"
"%GBC%\fart.exe" "config.tmp" [AA] "true"
"%GBC%\fart.exe" "config.tmp" [BRIGHT] "100"
"%GBC%\fart.exe" "config.tmp" [GAM] ".9"
"%GBC%\fart.exe" "config.tmp" [REZX] "640"
"%GBC%\fart.exe" "config.tmp" [REZY] "800"
"%GBC%\fart.exe" "config.tmp" [WOBBLE] "true"
"%GBC%\fart.exe" "config.tmp" [WOBN] "0.125"
"%GBC%\fart.exe" "config.tmp" [SCREEN] "true"
"%GBC%\fart.exe" "config.tmp" [GLOW] "true"
"%GBC%\fart.exe" "config.tmp" [GLOWP] "3"
"%GBC%\fart.exe" "config.tmp" [LINE] "1.0"
"%GBC%\fart.exe" "config.tmp" [PTS] "2.5"
"%GBC%\fart.exe" "config.tmp" [BUFFER] "false"
"%GBC%\fart.exe" "config.tmp" [FACT] "1.0"
"%GBC%\fart.exe" "config.tmp" [FLICK] "true"
"%GBC%\fart.exe" "config.tmp" [ATT] "true"
"%GBC%\fart.exe" "config.tmp" [ATTN] "6"
"%GBC%\fart.exe" "config.tmp" [BGAIN] "true"
"%GBC%\fart.exe" "config.tmp" [ADD] "true"
"%GBC%\fart.exe" "config.tmp" [PERS] "true"
"%GBC%\fart.exe" "endcfg.tmp" [JOY1] "JOYSTICK"
"%GBC%\fart.exe" "endcfg.tmp" [JOY2] "JOYSTICK"
REM if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "configuration.xml" [JOY1] "JOYSTICK"
REM if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "configuration.xml" [JOY2] "JOYSTICK"
REM if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "configuration.xml" [JOY1] "CONTROLLER\" controller=\""
REM if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "configuration.xml" [JOY2] "CONTROLLER\" controller=\""
REM copy /b config.tmp + ctrl1id.tmp +ctrl2id.tmp + endctrl.tmp + endcfg.tmp configuration.tmp
copy /b config.tmp + endcfg.tmp configuration.xml
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\fart.exe" "config.tmp" [CTRLR] "false"
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [AA] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [BRIGHT] "100"
echo."100">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [GAM] ".9"
echo."9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [REZX] "640"
echo."640">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [REZY] "800"
echo."800">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [WOBBLE] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [WOBN] "0.125"
echo."0.125">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [SCREEN] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [GLOW] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [GLOWP] "3"
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [LINE] "1.0"
echo."1.0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [PTS] "2.5"
echo."2.5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [BUFFER] "false"
echo."false">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [FACT] "1.0"
echo."1.0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [FLICK] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [ATT] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [ATTN] "6"
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [BGAIN] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [ADD] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "config.tmp" [PERS] "true"
echo."true">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "endcfg.tmp" [JOY1] "JOYSTICK"
echo."JOYSTICK">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "endcfg.tmp" [JOY2] "JOYSTICK"
echo."JOYSTICK">>"%GBC%\%CEMU%_%CSTCONS%.ini"
REM if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "configuration.xml" [JOY1] "JOYSTICK"
REM if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "configuration.xml" [JOY2] "JOYSTICK"
REM if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "configuration.xml" [JOY1] "CONTROLLER\" controller=\""
REM if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "configuration.xml" [JOY2] "CONTROLLER\" controller=\""
REM copy /b config.tmp + ctrl1id.tmp +ctrl2id.tmp + endctrl.tmp + endcfg.tmp configuration.tmp
copy /b config.tmp + endcfg.tmp configuration.xml

:PJVECCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1
