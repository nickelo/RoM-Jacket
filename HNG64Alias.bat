goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%HNG64%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
mklink "%GBG%\%GAM%\%CONS%\%HNG64%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%HNG64%\SOURCE\%ROM%"
exit /b
:WINLEG
"%GBC%\linkd.exe" "%GBG%\%GAM%\%CONS%\%HNG64%\SOURCE\%ROM%" "%GBG%\%GAM%\%CONS%\%HNG64%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%HNG64%\SOURCE"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
SET ROM=%%~nxa
call :"%%~a"
)
popd
exit /b


:"bbust2.zip"
for %%a in ("Beast Busters 2nd Nightmare") do set NWDIR=%%~a
call :INTO
exit /b
:"buriki.zip"
for %%a in ("Buriki One (rev.B)") do set NWDIR=%%~a
call :INTO
exit /b
:"fatfurwa.zip"
for %%a in ("Fatal Fury- Wild Ambition (rev.A)") do set NWDIR=%%~a
call :INTO
exit /b
:"roadedge.zip"
for %%a in ("Roads Edge  - Round Trip (rev.B)") do set NWDIR=%%~a
call :INTO
exit /b
:"sams64.zip"
for %%a in ("Samurai Shodown 64  - Samurai Spirits 64") do set NWDIR=%%~a
call :INTO
exit /b
:"sams64_2.zip"
for %%a in ("Samurai Shodown- Warrior's Rage  - Samurai Spirits 2- Asura Zanmaden") do set NWDIR=%%~a
call :INTO
exit /b
:"xrally.zip"
for %%a in ("XtremeRally/OffBeatRacer!") do set NWDIR=%%~a
call :INTO
exit /b