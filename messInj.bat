del /q "%GBC%\hlslpreset.ini"
del /q "%GBC%\hlslp.cmd"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY

if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Mess.ini" [LIGHTGUN] "joystick"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "Mess.ini" [LIGHTGUN] "mouse"
"%GBC%\fart.exe" "Mess.ini" [EMUL] "%GBE%\%EMUZ%\%MESS%"
"%GBC%\fart.exe" "Mess.ini" [REZX] "%DREZX%"
"%GBC%\fart.exe" "Mess.ini" [REZY] "%DREZY%"
"%GBC%\fart.exe" "Mess.ini" [RESOLUTION] "auto"
"%GBC%\fart.exe" "Mess.ini" [VIDEO] "d3d"
set SHDRON=0
SET HLSLP=NOSHADER
call "%GBC%\hlslp.cmd"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [MASK] %DREZY%
CALL "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
"%GBC%\fart.exe" "Mess.ini" [VSYNC] "0"
"%GBC%\fart.exe" "Mess.ini" [AUDIOLAT] "2"
"%GBC%\fart.exe" "Mess.ini" [TRIPLEBUFFER] "0"
"%GBC%\fart.exe" "Mess.ini" [SWITCHRES] "0"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
if "%INDVALL%"=="1" goto :NOSHADER
if "%ARBITRARY%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "%CSTCONS% directory prepared" /Stop /timeout:1
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "Mess.ini" [LIGHTGUN] "joystick"
if "%P1JOYTYPE%"=="JOY" echo."joystick">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%P1JOYTYPE%"=="KB" "%GBC%\fart.exe" "Mess.ini" [LIGHTGUN] "mouse"
if "%P1JOYTYPE%"=="KB" echo."mouse">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "Mess.ini" [EMUL] "%GBE%\%EMUZ%\%MESS%"
:RESOLUTION
"%GBC%\wbox.exe" "RJ_GUI" "Set the resolution" "Auto;Select" /DB=1
if %errorlevel%==1 goto :AUTORES
if %errorlevel%==2 goto :SELECT
goto :QUITOUT

:SELECT
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutiontest.log"
"%GBC%\fart.exe" "Mess.ini" [REZX] "%REZX%"
"%GBC%\fart.exe" "Mess.ini" [REZY] "%REZY%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "Mess.ini" [RESOLUTION] "%RESX%x%REZY%@%HERTZ%"
echo."%RESX%x%REZY%@%HERTZ%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DISPLAY

:AUTORES
"%GBC%\fart.exe" "Mess.ini" [REZX] "%REZX%"
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "Mess.ini" [REZY] "%REZY%"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
"%GBC%\fart.exe" "Mess.ini" [RESOLUTION] "auto"
echo."auto">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DISPLAY

:DISPLAY
"%GBC%\wbox.exe" "RJ_GUI" "QUERY" "Direct3D;GDI;DirectDraw" /DB=1
if %errorlevel%==1 goto :D3D
if %errorlevel%==2 goto :GDI
if %errorlevel%==3 goto :DDRAW
goto :QUITOUT

:D3D
"%GBC%\fart.exe" "Mess.ini" [VIDEO] "d3d"
echo."d3d">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADERQ
:GDI
"%GBC%\fart.exe" "Mess.ini" [VIDEO] "gdi"
echo."gdi">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADERQ
:DDRAW
"%GBC%\fart.exe" "Mess.ini" [VIDEO] "ddraw"
echo."ddraw">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SHADERQ

:SHADERQ
"%GBC%\wbox.exe" "RJ_GUI" "Enable a shader?" "Select;Disable;Default" /DB=2
if %ERRORLEVEL%==1 goto :shaderselect
if %ERRORLEVEL%==2 goto :NOSHADER
if %ERRORLEVEL%==3 goto :CRT
goto :QUITOUT

:shaderselect
set SHDRON=1
echo ARCADEMON>"%GBC%\hlslpreset.ini"
echo ARCADEBLUR>>"%GBC%\hlslpreset.ini"
echo ARCADESHRP>>"%GBC%\hlslpreset.ini"
echo BROKENMON>>"%GBC%\hlslpreset.ini"
echo FLATPANEL>>"%GBC%\hlslpreset.ini"
echo SIMPLECRT>>"%GBC%\hlslpreset.ini"
set SHDRON=1
"%GBC%\wselect.exe" "%GBC%\hlslpreset.ini" "Select a HLSL Preset" "set HLSLP=$item" > "%GBC%\hlslp.cmd"
echo."%HLSLP%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

goto :INJSHADER

:NOSHADER
set SHDRON=0
SET HLSLP=NOSHADER
goto :INJSHADER

:CRT
set SHDRON=1
set HLSLP=ARCADESHRP
goto :INJSHADER

:INJSHADER
call "%GBC%\hlslp.cmd"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" echo."%DREZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" echo."%DREZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mess.ini" [MASK] %DREZY%
if "%SHDRON%"=="1" echo."%DREZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
CALL "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
goto :VSYNC

:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable V-Sync?" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :VSYNCON
if %errorlevel%==2 goto :VSYNCOFF
goto :QUITOUT

:VSYNCON
"%GBC%\fart.exe" "Mess.ini" [VSYNC] "1"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SWITCHRES
:VSYNCOFF
"%GBC%\fart.exe" "Mess.ini" [VSYNC] "0"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SWITCHRES

:SWITCHRES
"%GBC%\wbox.exe" "RJ_GUI" "Enable resolution switching?" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :NOSWITCH
if %errorlevel%==2 goto :SWITCHON
goto :QUITOUT
:NOSWITCH
"%GBC%\fart.exe" "Mess.ini" [SWITCHRES] "0"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEBUFFER
:SWITCHON
"%GBC%\fart.exe" "Mess.ini" [SWITCHRES] "1"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TRIPLEBUFFER
:TRIPLEBUFFER
"%GBC%\wbox.exe" "RJ_GUI" "Enable triple buffering?" "Disable;Enable" /DB=1
if %errorlevel%==1 goto :TRIPLEOFF
if %errorlevel%==2 goto :TRIPLEON
goto :QUITOUT
:TRIPLEON
"%GBC%\fart.exe" "Mess.ini" [TRIPLEBUFFER] "1"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO
:TRIPLEOFF
"%GBC%\fart.exe" "Mess.ini" [TRIPLEBUFFER] "0"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :AUDIO

REM call "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
:AUDIO
"%GBC%\wbox.exe" "RJ_GUI" "Audio Latency" "0;1;2;3" /DB=3
if %errorlevel%==1 goto :NOLAT
if %errorlevel%==2 goto :LOWLAT
if %errorlevel%==3 goto :DEFLAT
if %errorlevel%==4 goto :HILAT
goto :QUITOUT

:NOLAT
"%GBC%\fart.exe" "Mess.ini" [AUDIOLAT] "0"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PREPBEGIN

:LOWLAT
"%GBC%\fart.exe" "Mess.ini" [AUDIOLAT] "1"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PREPBEGIN

:DEFLAT
"%GBC%\fart.exe" "Mess.ini" [AUDIOLAT] "2"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PREPBEGIN

:HILAT
"%GBC%\fart.exe" "Mess.ini" [AUDIOLAT] "3"
echo."3">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PREPBEGIN

:PREPBEGIN
%BSTRT% "%WFINS%" "RJ_GUI" "%CSTCONS% directory prepared" /Stop /timeout:1
:quitalias
exit /b
:QUITOUT
set CANCELLED=1