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
set HCROP=
if %RATIO% %RATOP% 7 set HCROP=1
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
