set EMUNUM=51
set CEMU=%DAEMNT%
call "%GBC%\getEmu.bat"
if "%EMUNOTHERE%"=="1" goto :Eno_daemonT
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%DAEMNT%\*.7z"') do set DAEMNTSZ=%%~a
if "%DAEMNTSZ%"=="" goto :Eno_daemonT
for %%a in ("%GBC%\net\%DAEMNT%\%DAEMNTSZ%") do set DAEMNTSP=%%~a
"%SEVENZIP%" x -y "%DAEMNTSP%" -o"%GBC%\net\%DAEMNT%"
for %%A in ("%GBC%\net\%DAEMNT%\*.exe") do set DAEMNTXE=%%~A
if "%DAEMNTXE%"=="" goto :Eno_daemonT
%BSTRT% "%WFINS%" "RJ_GUI" "%CEMU% Downloaded." /Stop /sound /timeout:1
for /f "delims=" %%a in ('dir /b /a-d "%DAEMNTXE%"') do set DAEMNTFILE=%%~nxa
exit /b
:Eno_daemonT
set DAEMNTFILE=