if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "XM6.ini" [DEV1] 2
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "XM6.ini" [DEV2] 3
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "XM6.ini" [DEV1] 1
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "XM6.ini" [DEV2] 1
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "XM6.ini" [JOYKEY] 1
if "%P2JOYTYPE%"=="KB" "%GBC%\fart.exe" "XM6.ini" [JOYKEY] 1
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "XM6.ini" [JOYKEY] 0
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "XM6.ini" [JOYKEY] 0
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 7
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 7
"%GBC%\fart.exe" "XM6.ini" [SCANL] 0
"%GBC%\fart.exe" "XM6.ini" [STRETCH] 0
"%GBC%\fart.exe" "XM6.ini" [VSYNC] 0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

	
:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
:STICK1
"%GBC%\wbox.exe" "RJ_GUI" "Set Joy1 stick type" "ArariSTD;AtariS-S;Cyber(analog);Cyber(digital);Genesis(3);Genesis(6);CPS(SFC);CPS(MD);MagicalPad;XPD-1LR;Pacland(3);BM68(6)" /DB=7 /BW=100
if %errorlevel%==1 goto :JT1
if %errorlevel%==2 goto :JT2
if %errorlevel%==3 goto :JT3
if %errorlevel%==4 goto :JT4
if %errorlevel%==5 goto :JT5
if %errorlevel%==6 goto :JT6
if %errorlevel%==7 goto :JT7
if %errorlevel%==8 goto :JT8
if %errorlevel%==9 goto :JT9
if %errorlevel%==10 goto :JT10
if %errorlevel%==11 goto :JT11
if %errorlevel%==12 goto :JT12
goto :QUITOUT

:JT1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 1
goto :STICK2
:JT2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 2
goto :STICK2
:JT3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 3
goto :STICK2
:JT4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 4
goto :STICK2
:JT5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 5
goto :STICK2
:JT6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 6
goto :STICK2
:JT7
echo."7">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 7
goto :STICK2
:JT8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 8
goto :STICK2
:JT9
echo."9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 9
goto :STICK2
:JT10
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 10
goto :STICK2
:JT11
echo."11">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 11
goto :STICK2
:JT12
echo."12">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK1TYPE] 12
goto :STICK2

:STICK2
"%GBC%\wbox.exe" "RJ_GUI" "Set Joy2 stick type" "ArariSTD;AtariS+S;Cyberstick(analog);Cyber(digital);Genesis(3);Genesis(6);CPS(SFC);CPS(MD);MagicalPad;XPD-1LR;Pacland(3);BM68(6)" /DB=7 /BW=100
if %errorlevel%==1 goto :JS1
if %errorlevel%==2 goto :JS2
if %errorlevel%==3 goto :JS3
if %errorlevel%==4 goto :JS4
if %errorlevel%==5 goto :JS5
if %errorlevel%==6 goto :JS6
if %errorlevel%==7 goto :JS7
if %errorlevel%==8 goto :JS8
if %errorlevel%==9 goto :JS9
if %errorlevel%==10 goto :JS10
if %errorlevel%==11 goto :JS11
if %errorlevel%==12 goto :JS12
goto :QUITOUT

:JS1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 1
goto :STRETCH
:JS2
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 2
goto :STRETCH
:JS3
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 3
goto :STRETCH
:JS4
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 4
goto :STRETCH
:JS5
echo."5">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 5
goto :STRETCH
:JS6
echo."6">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 6
goto :STRETCH
:JS7
echo."7">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 7
goto :STRETCH
:JS8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 8
goto :STRETCH
:JS9
echo."9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 9
goto :STRETCH
:JS10
echo."10">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 10
goto :STRETCH
:JS11
echo."11">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 11
goto :STRETCH
:JS12
echo."12">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STICK2TYPE] 12
goto :STRETCH


:STRETCH
"%GBC%\wbox.exe" "RJ_GUI" "Enable Stretching?" "Enable;Disable" /DB=2
if %errorlevel%==1 goto :STRETCHON
if %errorlevel%==2 goto :STRETCHOFF
goto :QUITOUT

:STRETCHON
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STRETCH] 1
goto :SCANL

:STRETCHOFF
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [STRETCH] 0
goto :SCANL

:SCANL
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines?" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :SCANON
if %errorlevel%==2 goto :SCANOFF
goto :QUITOUT

:SCANON
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [SCANL] 1
goto :VSYNC
:SCANOFF
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [SCANL] 0
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable v-sync?" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :VON
if %errorlevel%==2 goto :VOFF
goto :QUITOUT

:VON
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [VSYNC] 1
goto :XM6COMPL

:VOFF
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "XM6.ini" [VSYNC] 0
goto :XM6COMPL

:XM6COMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1