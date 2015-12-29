SET xpdskp=1
for /f "delims=" %%a in ('type "%GBC%\custEmu.ini"') do (
CALL "%GBC%\custEmu.bat"
copy /Y "%GBC%\net\%XPROF%\Other\Player*.xpaderprofile" "%CUSTCONSPTH%"
CALL :custInjBegin
goto :EOF
)
goto :CSTEND

:custInjBegin
cd "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b /ad"') do (
SET CSTR=%%a
CALL :CSTXPROFS
goto :EOF
)

:CSTXPROFS
if "%XPDKP%"=="" copy /Y "%CD%\Player*.xpadderprofile" "%CD%\%CSTR%"
:CSTEND