if "%FUZZY%"=="1" goto :fuzzy
if "%FUZZY%"=="0" goto :strict

"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable fuzzy matching for your %RJCP% video migration?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :fuzzy
if %ERRORLEVEL%==2 goto :strict
goto :strict

:fuzzy
SET DLMTR=([
goto :TRANSFER

:strict
SET DLMTR= 
goto :TRANSFER

:TRANSFER
SET HYPTYP=VD
%BSTRT% "%WBUSY%" "RJ_GUI" "Migrating Hyperspin Media"  /marquee
if "%RJCP%"=="%MAME%" call "%GBC%\HyperArcade.bat" && goto :complete
if "%RJCP%"=="Sega Naomi" call "%GBC%\HyperNaomi.bat" && goto :complete
if "%RJCP%"=="Sammy Atomiswave" call "%GBC%\HyperAtomiswave.bat" && goto :complete
if "%RJCP%"=="%SEGM3%" call "%GBC%\HyperModel3.bat" && goto :complete
if "%RJCP%"=="%SEGM2%" call "%GBC%\HyperModel2.bat" && goto :complete
if "%RJCP%"=="SNK Neo Geo" call "%GBC%\HyperNeoGeo.bat" && goto :complete
if "%RJCP%"=="Capcom Play System" call "%GBC%\HyperCPS.bat" && goto :complete
if "%RJCP%"=="Capcom Play System II" call "%GBC%\HyperCPS2.bat" && goto :complete
if "%RJCP%"=="Capcom Play System III" call "%GBC%\HyperCPS3.bat" && goto :complete
for /f "tokens=1 delims=%DLMTR%" %%a in ('dir /b/a-d "%VIDLOC%\*.mp4"') do (
set HSNM=%%~na
CALL :hsnn
)
for /f "tokens=1 delims=%DLMTR%" %%a in ('dir /b/a-d "%VIDLOC%\*.flv"') do (
set HSNM=%%~na
CALL :hsnn
)
goto :complete
:hsnn
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ('dir /b /ad "%HSNM%*"') do (
set RJNM=%%~dpni
set DRJNM=%%~ni
CALL :newnames
popd
)
exit /b
:newnames
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%VIDLOC%\%HSNM%*") do copy /Y "%%~a" "%RJNM%\backdrops""
exit /b
:complete
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"   /Stop /Timeout=2