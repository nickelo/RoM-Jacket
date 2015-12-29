
%GBD%
cd "%GBC%"
for /f "delims=" %%a in ('dir /b/ad-h "%HMIRZ%"') do (
SET HYPSYS=%%~a
pushd "%HMIRZ%\%%~a"
CALL :HSGAMADD
CALL :HSGAMFIN
CALL :UPDATE
popd
)
GOTO :EOF

:UPDATE
if "%CLSTR%"=="~0,1" set CLSTR=
if "%CLSTR%"=="" exit /b
if "%CLCHNG%" NEQ "%CLSTR%" %BSTRT% "%WBUSY%" "RJ_GUI" "Building %HYPSYS% XMLs"  /marquee
SET CLCHNG=%CLSTR%
exit /b


:HSGAMADD
set CLSTR=%HYPSYS%
type "%GBC%\net\%HYPS%\HSGamBegin.prc">"%GBC%\net\%HYPS%\%HYPSYS%.xml"
for /f "delims=" %%a in ('dir /b/a-d-h "%HMIRZ%\%HYPSYS%"') do (
%CPTYP% "%GBC%\net\%HYPS%\HSGamAdd.prc" "%GBC%\net\%HYPS%\%HYPSYS%.prc"
SET HYPGAM=%%~na
pushd "%GBC%\net\%HYPS%"
"%GBC%\fart.exe" "%HYPSYS%.prc" [GAM] "%%~na"
popd
type "%GBC%\net\%HYPS%\%HYPSYS%.prc">>"%GBC%\net\%HYPS%\%HYPSYS%.xml"
%CPTYP% "%GBC%\net\%HYPS%\Setting.int" "%GBC%\net\%HYPS%\%HYPSYS%.inj"
)
exit /b

:HSGAMFIN
type "%GBC%\net\%HYPS%\HSGamEnd.prc">>"%GBC%\net\%HYPS%\%HYPSYS%.xml"
del /q "%GBC%\net\%HYPS%\%HYPSYS%.prc"
mkdir "%HPN%\Databases\%HYPSYS%"
for /f "delims=" %%a in ('dir /b /a-d-h "%GBC%\net\%HYPS%\*.xml"') do %CPTYP% "%GBC%\net\%HYPS%\%%~a" "%HPN%\Databases\%%~na\%%~a"