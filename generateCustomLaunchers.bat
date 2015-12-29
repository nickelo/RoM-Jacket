for /f "delims=" %%a in ('type "%GBC%\custEmu.ini"') do (
CALL "%GBC%\custEmu.bat"
copy /Y "%GBC%\custEmu.set" "%CUSTCONSPTH%\zz.bat"
if "%COPYTYPE%"=="copy /y" del /s /q "%CUSTCONSPTH%\*.bat"
CALL :custInjBegin
goto :EOF
)

:custInjBegin
%GAMDRV%
cd "%CUSTCONSPTH%
for /f "delims=" %%a in ('dir /b /ad"') do (
SET CSTR=%%a
CALL :CSTROMS
goto :EOF
)

:CSTROMS
set MOVETYPE=copy /y
if "%COPYTYPE%"=="echo n|copy /-y" for %%a in ("%COPYTYPE%") do set MOVETYPE=%%~a
%MOVETYPE% "%CD%\zz.bat" "%CD%\%CSTR%"
%MOVETYPE% "%CD%\%CSTR%\zz.bat" "%CD%\%CSTR%\%CSTR%.bat"