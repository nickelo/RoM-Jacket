if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
set SHDRON=0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
del /q "%GBC%\hlslpreset.ini"
SET TIMOUT=
if "%INDVALL%"=="1" goto :NOSHADER
"%GBC%\wbox.exe" "RJ_GUI" "Enable a shader?" "Select;Disable;Default" /DB=2 %TIMOUT%
if %ERRORLEVEL%==1 goto :shaderselect
if %ERRORLEVEL%==2 goto :NOSHADER
if %ERRORLEVEL%==3 goto :CRT
goto :QUITOUT

:NOSHADER
set SHDRON=0
goto :PREPBEGIN
:CRT
set SHDRON=1
set HLSLP=ARCADESHRP
goto :PREPBEGIN
:shaderselect
echo ARCADEMON>"%GBC%\hlslpreset.ini"
echo ARCADEBLUR>>"%GBC%\hlslpreset.ini"
echo ARCADESHRP>>"%GBC%\hlslpreset.ini"
echo BROKENMON>>"%GBC%\hlslpreset.ini"
echo FLATPANEL>>"%GBC%\hlslpreset.ini"
echo SIMPLECRT>>"%GBC%\hlslpreset.ini"
set SHDRON=1
"%GBC%\wselect.exe" "%GBC%\hlslpreset.ini" "Select a HLSL Preset" "set HLSLP=$item" > "%GBC%\hlslp.cmd"
if %errorlevel% == 0 goto :NOSHADER
call "%GBC%\hlslp.cmd"

:PREPBEGIN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Cheats?" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :CHEATON
if %errorlevel%==2 goto :CHEATOFF
goto :QUITOUT

:CHEATON
set CHEAT=1
goto :MAMECOMPL
:CHEATOFF
set CHEAT=0
goto :MAMECOMPL

:MAMECOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1