call "injExeTmpl.bat"
SET INSTL=1
for /f "delims=" %%a in ('Wfolder.exe "SET DESTNZ=" "" "Destination for %ROMN% Library" /noquote') do %%a
for %%A in ("%DESTNZ%") do set DESTB=%%~nA
for /f "delims=" %%A in ("%DESTNZ%") do set DESTP=%%~dpA
for %%A in ("%DESTNZ%") do set DESTD=%DESTNZ:~0,2%
for %%A in ("%DESTNZ%") do set DESTJ=%DESTNZ:~0,-1%
if "%DESTNZ%"=="%DESTD%\" set DESTN=%DESTD%
for /f "delims=" %%a in ("%DESTNZ%") do if "%%~nxa"=="%CSTCONS%" set CSTCONS=
if "%DESTNZ%"=="" goto :CANCELLED
if "%IMPRT%"=="X" goto :IMPRT
goto :INST

:IMPRT
for /f "delims=" %%a in ('type inclRoms.ini.bak') do (
wbusy "copying" "Copying" /marquee
set COPYROM=%%~nxa
call :TOLIB
)
wbusy "copying" "Imported" /STOP /TIMEOUT:1
wbox "Imported" "You should now process the %ROMN% library." "Finished" /TM=1
set CANCL=1
exit /b

:TOLIB
mkdir "%DESTNZ%\%CSTCONS%"
copy /y "%COPYROM%" "%DESTNZ%\%CSTCONS%"
exit /b

:INST
wbusy "copying" "Copying" /marquee
mkdir "%DESTNZ%\%ROMN%"
for /f "delims=" %%a in ('dir /b /a-d "%CD%"') do (
copy /y "%%~a" "%DESTNZ%\%ROMN%\%%~a"
)
wbusy "copying" "Complete" /STOP /TIMEOUT:1

for /f "delims=" %%a in ("%CD%\Folder.ico") do set ICONFLDR=%%~a
if exist "%ICONFLDR%" goto :ICONSET
for /f "delims=" %%a in ("%CD%\Folder.ico") do set ICONFLDR=%%~a


:ICONSET
if "%DESTNZ%"=="" xxmklink.exe "%CD%\%ROMN%.lnk" "%CD%\%ROMN%.bat" "" "%CD%" GameExecutable 7 "%CD%\Folder.ico"

if "%DESTNZ%" NEQ "" xxmklink.exe "%DESKTOPDIR%\%ROMN%\%ROMN%.lnk" "%DESTNZ%\%ROMN%\%ROMN%.bat" "" "%DESTNZ%\%ROMN%" GameExecutable 7 "%DESTNZ%\%ROMN%\Folder.ico"

exit /b

:CANCELLED
set CANCL=1
