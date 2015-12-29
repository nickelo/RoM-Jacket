set DWNPRFX=http://archive.org/download
del /q "%GBC%\net\%ARCORG%\*.html" 
del /q "%GBC%\net\%ARCORG%\*.ini" 
set ARCORG=ARCORG
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\hashing\scrape\*.bat"') do (
set CSTCONS=%%~na
call :SITEPARSE
)
exit /b


:SITEPARSE
set SHRTN=
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
if "%SHRTN%"=="" exit /b

set SUBNUM=
set ARCLNK=
set SUBLOC=
set SUB1=
set SUB2=
set SUB3=
set SUB4=
set SUB5=
set SUB6=
set SUB7=
set SUB8=
set SUB9=
set SUB10=
set SUB11=
set SUB12=
set SUB13=
set SUB14=

call "%GBC%\arcSUB.bat">>"%GBC%\logs\arcSUB.log"
if "%ARCLNK%"=="" exit /b

if "%SUB1%" NEQ "" goto :SUBTXT

set COMPCON=
set SUBNUM=
set SUBLOC=
set COMPKO=
for /f "delims=" %%a in ("%ARCLNK%") do (
set ARCLNK=%%~a
call :CSTHTML
)
set SUBNUM=
goto :COMPKO

:SUBTXT
set COMPCON=
set SUBNUM=
set SUBLOC=
set COMPKO=
for %%a in ("%SUB1%" "%SUB2%" "%SUB3%" "%SUB4%" "%SUB5%" "%SUB6%" "%SUB7%" "%SUB8%" "%SUB9%" "%SUB10%" "%SUB11%" "%SUB12%" "%SUB13%" "%SUB14%") do (
if "%%~a" NEQ "" set SUBLOC=/%%~a
if "%%~a" NEQ "" set /a SUBNUM+=1
if "%%~a" NEQ "" call :CSTHTML
)
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%ARCORG%\%CSTCONS%*.ini"') do (
SET COMPCOM=%%~a
call :COMPCOM
)
exit /b

:COMPCOM
for /f "delims=" %%a in ('type "%GBC%\net\%ARCORG%\%COMPCON%"') do echo."%%~a">>"%GBC%\net\%ARCORG%\%CSTCONS%_complete.ini"
"%GBC%\fart.exe" "%GBC%\net\%ARCORG%\%CSTCONS%_complete.ini" "\"" --remove
exit /b

:INIOUT
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%ARCORG%\%CSTCONS%_*.ini"') do (
set COMPKO=%%~a
call :COMPKO
)
exit /b

:COMPKO
for /f "delims=" %%a in ('type "%GBC%\net\%ARCORG%\%COMPKO%"') do echo."%%~a">>"%GBC%\net\%ARCORG%\%CSTCONS%_complete.ini"
exit /b

:CSTHTML
if "%SUBLOC%"=="/" exit /b
if "%SUBNUM%" NEQ "" set SUBCNT=_%SUBNUM%
for /f "delims=" %%a in ("%ARCLNK%%SUBLOC%") do %WSTRT% "%ARIA2C%" --check-integrity=true --seed-time=0 --connect-timeout=10 --file-allocation=none --conditional-get=true --out="%CSTCONS%_%SUBNUM%.html" --dir="%GBC%\net\%ARCORG%" "%%~a"
if not exist "%GBC%\net\%ARCORG%\%CSTCONS%%SUBCNT%.html" exit /b
call :PARSEHTML
exit /b

:PARSEHTML
for /f "tokens=1,4 delims=><" %%a in ('type "%GBC%\net\%ARCORG%\%CSTCONS%_%SUBNUM%.html"') do (
set LINE=%%~a
set LINK=%%~b
if "%%~a"=="tr" call :PARSE
)
"%GBC%\fart.exe" "%GBC%\net\%ARCORG%\%CSTCONS%_%SUBNUM%.ini" "\"" --remove
exit /b

:PARSE
if "%LINK%"=="th" exit /b
if "%LINK%"=="td" exit /b
echo."%LINK%">>"%GBC%\net\%ARCORG%\%CSTCONS%%SUBCNT%.ini"
exit /b