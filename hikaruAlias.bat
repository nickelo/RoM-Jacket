cd "%GBG%\%GAM%\%CONS%\%HIKARU%"
goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%HIKARU%\%NWDIR%" & move /y "%ROM%" "%NWDIR%"
exit /b

:SORTOUT
pushd "%GBG%\%GAM%\%CONS%\%HIKARU%"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
move /y "hikaru.zip" "%GBE%\%EMUZ%\%DMUL%\roms\hikaru.zip"
move /y "mie.zip" "%GBE%\%EMUZ%\%DMUL%\roms\mie.zip"
exit /b

:"airtrix.zip"
for %%a in ("Air Trix") do set NWDIR=%%~a
call :INTO
exit /b
:"pharrier.zip"
for %%a in ("Planet Harriers") do set NWDIR=%%~a
call :INTO
exit /b
:"podrace.zip"
for %%a in ("Star Wars Pod Racer") do set NWDIR=%%~a
call :INTO
exit /b
:"sgnascar.zip"
for %%a in ("NASCAR Racing") do set NWDIR=%%~a
call :INTO
exit /b
:"braveff.zip"
for %%a in ("Brave Fire Fighters") do set NWDIR=%%~a
call :INTO
exit /b
