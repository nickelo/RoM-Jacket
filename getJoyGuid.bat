del /q "%GBC%\dit.ini"
"%GBC%\dit.exe"
set /a JOYDN=0
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\dit.ini"') do (
if "%%~a" NEQ "ProductName " call :JOYCHK
set DITNAME=%%~b
)
exit /b
:JOYCHK
if /i "%DITNAME%"=="%DITNAME:Joy=%" (
call :DITCHK
) ELSE (
exit /b
)

:DITCHK
if "%DITNAME%"==" vJoy Device" exit /b
SET /a JOYDN+=1
SET DITLIN=%DITNUM%+2

set urlNthL=%DITNUM%
set GUIDINST=
for /f "delims=" %%a in ('Readline.exe "%GBC%\dit.ini" /L:%urlNthL%') do set GUIDINST=%%~a

:DITLAUTO
for /f "delims=" %%a in ("%GUIDINST%") do set JOY%JOYDN%GUID=%%~a
