cd "%GBG%\%GAM%\%CONS%\%GALCO%"
goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%GALCO%\%NWDIR%" & move /y "%ROM%" "%NWDIR%"
exit /b

:SORTOUT
pushd "%GBG%\%GAM%\%CONS%\%GALCO%"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
move /y "awbios.zip" "%GBE%\%EMUZ%\%DMUL%"
exit /b

:"atvtrack.zip"
for %%a in ("ATV Track (set 1)") do set NWDIR=%%~a
call :INTO
exit /b
:"atvtracka.zip"
for %%a in ("ATV Track (set 2)") do set NWDIR=%%~a
call :INTO
exit /b
:"smshdrv.zip"
for %%a in ("Smashing Drive") do set NWDIR=%%~a
call :INTO
exit /b
