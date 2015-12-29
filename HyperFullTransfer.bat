"%GBC%\wbox.exe" "RJ_GUI" "Update: Files will be created but existing files will not be overwritten^Overwrite: All files will be copied and existing files will be overwritten." "Update;Overwrite" /DB=1
if %ERRORLEVEL%==1 goto :CPYTYPE
if %ERRORLEVEL%==2 goto :OVRTYPE
goto :metaout

:CPYTYPE
for /f "delims=" %%a in ("echo n|copy /-y") do set CPTYP=%%~a
goto :TYPE

:OVRTYPE
set CPTYP=copy /y
goto :TYPE

:TYPE
if "%FUZZY%"=="1" goto :fuzzy
if "%FUZZY%"=="0" goto :strict

"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable fuzzy matching for your artwork migration?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :fuzzy
if %ERRORLEVEL%==2 goto :strict
goto :strict

:fuzzy
SET DLMTR=1
goto :TRANSFER

:strict
SET DLMTR=
goto :TRANSFER

:TRANSFER
%BSTRT% "%WBUSY%" "RJ_GUI" "Migrating Hyperspin Media for %HSCHOICE%"  /marquee
if "%DLMTR%"=="1" goto :fuzmtch

:realmatch
if "%LOTYPE%"=="" goto :VID
:BANNER
for /f "delims=" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Images\Wheel\*.png"') do (
set HSNM=%%~na
CALL :hsna
)

:VID
if "%VDTYPE%"=="" goto :BOX
for /f "delims=" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Video\*.mp4"') do (
set HSNM=%%~na
CALL :hsva
)
for /f "delims=" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Video\*.flv"') do (
set HSNM=%%~na
CALL :hsva
)

:BOX
if "%BATYPE%"=="" goto :complete
for /f "delims=" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Images\%ARTNUM%\*.png"') do (
set HSNM=%%~na
CALL :hsba
)
goto :complete

:hsba
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ("%HSNM%") do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :bname
popd
)
exit /b
:bname
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Images\%ARTNUM%\%HSNM%.png") do %CPTYP% "%%~a" "%RJNM%\Folder.png"
exit /b

:hsva
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ("%HSNM%") do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :vname
popd
)
exit /b
:vname
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Video\%HSNM%.png") do %CPTYP% "%%~a" "%RJNM%\backdrops""
exit /b

:hsna
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ("%HSNM%") do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :newname
popd
)
exit /b

:newname
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Images\Wheel\%HSNM%.png") do %CPTYP% "%%~a" "%RJNM%\Banner.png"
exit /b 

:fuzmtch
:BANNERS
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Images\Wheel\*.png"') do (
set HSNM=%%~na
CALL :hsnn
)

:VIDEO
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Video\*.mp4"') do (
set HSNM=%%~na
CALL :hsvn
)
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Video\*.flv"') do (
set HSNM=%%~na
CALL :hsvn
)

:BOXART
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Images\%ARTNUM%\*.png"') do (
set HSNM=%%~na
CALL :hsbn
)
goto :complete
:hsbn
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ('dir /b /ad "%HSNM%*"') do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :bnames
popd
)
exit /b
:bnames
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Images\%ARTNUM%\%HSNM%*") do %CPTYP% "%%~a" "%RJNM%\Folder.png"
exit /b

:hsvn
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ('dir /b /ad "%HSNM%*"') do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :vnames
popd
)
exit /b
:vnames
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Video\%HSNM%*") do %CPTYP% "%%~a" "%RJNM%\backdrops""
exit /b

:hsnn
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "delims=" %%i in ('dir /b /ad "%HSNM%*"') do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :newnames
popd
)
exit /b
:newnames
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Images\Wheel\%HSNM%*") do %CPTYP% "%%~a" "%RJNM%\Banner.png"

exit /b 
:complete
%BSTRT% "%WFINS%" "RJ_GUI" "Migrated %HSCHOICE%"  /Stop /Timeout:1
