if exist "%GBC%\rez.ini" goto :INJREZ
if "%HYPTRZ%"=="1" goto :resetrez
goto :resetrez

:INJREZ
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to CHANGE the resolution?^%DREZX% x %DREZY%^" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :resetrez
if %ERRORLEVEL%==2 goto :resvar
goto :resetrez

:resvar
for /f "tokens=1,2 delims=x," %%a in ('"%GBC%\QRES.exe" /v/s') do (
set REZX=%%a
set REZY=%%b
)
goto :rescomplete

:resetrez
del /q "%GBC%\reztmp.ini"
for /f "tokens=1-4 delims=x,@" %%a in ('"%GBC%\qres.exe" /v/l') do (
set XREZ=%%~a
set YREZ=%%~b
set BITS=%%~c
set HERS=%%~d
call :REZCHK
)
goto :SETRES

:REZCHK
for /f "tokens=1 delims= " %%a in ("%BITS%") do set BITZ=%%~a
if "%BITZ%" NEQ "32" exit /b
for /f "tokens=1 delims= " %%a in ("%HERS%") do set HERZ=%%~a

for %%a in ("%XREZ%x%YREZ%x%HERZ%") do set CURRENTREZ=%%~a
set INTHERE=

for /f "delims=" %%a in ('type "%GBC%\reztmp.ini"') do if "%%~a"=="%CURRENTREZ%" set INTHERE=1
if "%INTHERE%"=="" (echo %CURRENTREZ%>>"%GBC%\reztmp.ini")
exit /b
:SETRES
del /q "%GBC%\resolution.ini"
for /f "tokens=1,2,3 delims=x" %%a in ('type "%GBC%\reztmp.ini"') do echo %%~ax%%~b@%%~c>>"%GBC%\resolution.ini"
"%GBC%\Wselect.exe" "%GBC%\resolution.ini" "Select A Resolution" "set RESOLUTION=$item">"%GBC%\resolution.cmd"
if %errorlevel%==0 GOTO :EOF
CALL "%GBC%\resolution.cmd"
for /f "tokens=1,2,3 delims=x@" %%a in ("%RESOLUTION%") do (
set REZX=%%a
set REZY=%%b
set HERTZ=%%c
)

:GETREZ
call "%GBC%\ratio.bat">>"%GBC%\logs\ratio.log"
for /f "tokens=1,2 delims=.," %%a in ('cscript //nologo "%GBC%\ratio.vbs" %REZY% %REZX%') do (
set LONG=%%~a
set CROP=%%~b
call :CROP
)
set BCROP=
if %RATIO% %RATOP% 7 set BCROP=1
if "%BCROP%"=="" SET DISPASPCT=widescreen
if "%BCROP%"=="1" SET DISPASPCT=4x3
goto :INJSET

:CROP
set RATOP=GEQ
if %LONG% GEQ 1 set RATOP=LEQ
for %%a in ("%CROP:~0,2%") do (
if "%%~a"=="" set /a CROP=%CROP%0
if %%~a GEQ 5 set /a CROP+=1
)
for %%a in ("%CROP:~0,1%") do set RATIO=%%~a
IF "%RATIO%"=="" set RATIO=0
exit /b

:INJSET
echo %REZX%x%REZY%>"%GBC%\rez.ini"
set /A HREZX=%REZX% / 2
set /A HREZY=%REZY% - 70

:rescomplete
