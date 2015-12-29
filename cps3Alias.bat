del /q "%GBC%\remain.ini"
goto :SORTOUT
:INTO
mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" & call :%LINKR%
exit /b

:WINV
echo."%ROM%">"%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%"
exit /b
:WINLEG
echo."%ROM%">>"%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%"
exit /b

:SORTOUT
mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /y "*.zip" "SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%CPS3%\SOURCE"
for /f "delims=" %%a in ('dir /b/l/a "*.chd"') do mkdir "%%~na" && move /y "%%~a" "%%~na"
for /f "delims=" %%a in ('dir /b/l/a "*.zip"') do (
echo.%%~a>>"%GBC%\remain.ini"
SET ROM=%%~nxa
call :"%%~a"
)
for /f "delims=" %%a in ('type "%GBC%\remain.ini"') do (
set ROM=%%~a
call :OTHERS
)

popd
exit /b


:"jojoba.zip"
for %%a in ("JoJo's Bizarre Adventure - Heritage for the Future") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"jojo.zip"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"jojoalt.zip"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii2.zip"
for %%a in ("Street Fighter III 2nd Impact - Giant Attack") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii3.zip"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii3a.zip"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (Alt)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii.zip"
for %%a in ("Street Fighter III - New Generation") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"warzard.zip"
for %%a in ("Warzard") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"jojobachd.zip"
for %%a in ("JoJo's Bizarre Adventure - Heritage for the Future") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"jojoaltchd.zip"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"jojochd.zip"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii2chd.zip"
for %%a in ("Street Fighter III 2nd Impact - Giant Attack (CHD)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii3achd.zip"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (Alt) (CHD)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiii3chd.zip"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (CHD)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"sfiiichd.zip"
for %%a in ("Street Fighter III - New Generation (CHD)") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:"warzardchd.zip"
for %%a in ("Warzard") do set NWDIR=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\remain.ini" "%ROM%" --remove
popd
exit /b
:OTHERS
for %%a in ("%ROM%") do set NWDIR=%%~na
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" mkdir "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%"
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" CALL :%LINKR%
