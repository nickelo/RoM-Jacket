SET amcskp=1
for /f "delims=" %%a in ('type "%GBC%\custEmu.ini"') do (
CALL "%GBC%\custEmu.bat"
copy /Y "%GBC%\net\%APROF%\Other\Player*.amgp" "%CUSTCONSPTH%"
CALL :custInjBegin
goto :EOF
)
goto :CSTEND

:custInjBegin
cd "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b /ad"') do (
SET CSTR=%%a
CALL :CSTAPROFS
goto :EOF
)

:CSTAPROFS
if "%AMCKP%"=="" copy /Y "%CD%\Player*.amgp" "%CD%\%CSTR%"
:CSTEND