SET AMIGTVHDD=
SET AMIGTVDSK=
for /f "delims=" %%a in ('dir /b/a-d-h "*.hdf"') do set AMIGTVHDD=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.cue"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.iso"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.bin"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.img"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.cdi"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.nrg"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
for /f "delims=" %%a in ('dir /b/a-d-h "*.mdf"') do set AMIGTVDSK=%%~a
CALL :injecAMIGTVs
goto :AMIGTVend

:injecAMIGTVs
if "%AMIGTVHDD%"=="" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%AMIGTV%\Config.fs-uae" [HDD] --remove
if "%AMIGTVDSK%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%AMIGTV%\Config.fs-uae"  [CDROM] "%AMIGTVDSK%"
if "%AMIGTVHDD%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%AMIGTV%\Config.fs-uae" [HDD] "%AMIGTVHDD%"
exit /b

:AMIGTVend
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%AMIGTV%\Config.fs-uae" [ROMPTH] "[ROMPTH]"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%AMIGTV%\Config.fs-uae" \ \\
