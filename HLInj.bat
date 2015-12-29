if not exist "%GBC%\net\%HYPS%\Main Menu.xml" goto :BEGINXML
set CPYDEF=
if "%PRECONF%"=="1" goto :BEGINXML
"%GBC%\wbox.exe" "RJ_GUI" "XML CREATION^^[Update]:^Update existing XMLs^[Replace]:^Replace existing XMLs?" "Update;Replace" /DB=2
if %ERRORLEVEL%==1 goto :UPDATE
if %ERRORLEVEL%==2 goto :REPLACE
goto :HSBUILDCOMP

:UPDATE
set CPYDEF=1
for %%a in ("echo n|copy /-y") do set CPTYP=%%~a
goto :BEGINXML
:REPLACE
set CPTYP=copy /y
goto :BEGINXML

:BEGINXML
%BSTRT% "%WBUSY%" "RJ_GUI" "Building XMLs"  /marquee
%GBD%
cd "%GBC%"
del /q "%GBC%\net\%HYPS%\*.inj"
del /q "%GBC%\net\%HYPS%\*.int"
del /q "%GBC%\net\%HYPS%\*.xml"
CALL "%GBC%\HSprep.bat">>"%GBC%\logs\HSprep.log"
CALL "%GBC%\HSGamAdd.bat">>"%GBC%\logs\HSGamAdd.log"
%CPTYP% "%GBC%\net\%HYPS%\%HYPS%.ini" "%GBC%\net\%HYPS%\Setting.int"
for /f "delims=" %%a in ('dir /b/ad-h "%HMIRZ%"') do (
SET HYPSYS=%%~a
CALL :HSINJADD
)
goto :HSBUILD

:HSINJADD
for /f "delims=" %%a in ("%HMIRZ%") do set HMIRZN=%%~nxa
copy /Y "%GBC%\net\%HYPS%\Setting.int" "%GBC%\net\%HYPS%\%HYPSYS%.inj"
pushd "%GBC%\net\%HYPS%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [GBE] "%GBE%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [GBG] "%GBG%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [GAM] "%GAM%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [EMUZ] "%EMUZ%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [MIRZ] "%HMIRZN%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [BATCHL] "%BATCHL%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [CONS] "%CONS%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [CONDIR] "%HYPSYS%"
popd
rename "%GBC%\net\%HYPS%\%HYPSYS%.setting.inj" "%HYPSYS%.inj"
exit /b

:HSBUILD
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\%HYPS%\*.inj"') do copy /Y "%GBC%\net\%HYPS%\%%~a" "%HPN%\Settings\%%~na.ini"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
:HSBUILDCOMP