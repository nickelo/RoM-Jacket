for /f "delims=" %%a in ('dir /b/a-d-h/s %LISTED%') do (
set ROMNAME=%%~nxa
set ROMFULL=%%~a
set ROMEXT=%%~xa
call :CRCCHK
)
popd

pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\hashlist.ini" "\"" --remove
popd
exit /b

:CRCCHK
pushd "%GBC%"
for /f "tokens=2 delims=:" %%a in ('crc.exe "%ROMFULL%"') do (
set CRCTMP=%%~a
call :RECHO
)
exit /b

:RECHO
set ROMRNM=
set CRCSRC=
for %%a in ("%CRCTMP:~1,11%") do set CRCSRC=%%~a
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\%CSTCONS%_*.cmd"') do call "%GBC%\hashing\%%~a">>"%GBC%\logs\%%~a.log"
call "%GBC%\hashing\%SHRTN%.bat">>"%GBC%\logs\%SHRTN%hash.log"
if "%ROMRNM%"=="" goto :UNKNOWN
if "%SRTMV%"=="" rename "%ROMFULL%" "%ROMRNM%%ROMEXT%" || echo."%ROMFULL%">>"%GBC%\hashlist.ini"
if "%SRTMV%"=="1" move /y "%ROMRNM%%ROMEXT%" "%GBG%\%GAM%\%CONS%\%CSTCONS%" || echo."%ROMRNM%%ROMEXT%">>"%GBC%\hashlist.ini"
popd
exit /b

:UNKNOWN
echo."%ROMFULL%":%CRCTMP%:%ROMEXT%>>"%GBC%\hashlist.ini"
popd
exit /b
