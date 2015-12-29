SET SUPCON=set
if exist "%GBC%\conselect.ini" do set SUPCON=ini

for /f "delims=" %%a in ('type "%GBC%\conselect.%SUPCON%"') do (
set CSTCONS=%%~a
if exist "%GBG%\%GAM%\%CONS%\%%~a" call :QUICK
)
exit /b

:QUICK
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emuDefaults.log"
if "%CEMU%" NEQ "Default" call "%GBC%\extinj%SHRTN%.bat">>"%GBC%\logs\extinj%SHRTN%.log"
popd