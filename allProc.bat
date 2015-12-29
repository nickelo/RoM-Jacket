"%GBC%\wbox.exe" "RJ_GUI" "Would you like to use previous settings for consoles when available?" "Yes;Default" /DB=1
if %errorlevel%==1 goto :USEPRV
if %errorlevel%==2 goto :NEWDEF
goto :QUITOUT

:USEPRV
set PRVST=1
goto :CALLPROC

:NEWDEF
set PRVST=
goto :CALLPROC

:CALLPROC
SET ALLCONSOLES=1
SET INDVALL=1
CALL :DELMPTY
call "%GBC%\unsort.bat">>"%GBC%\logs\unsort.log"
CALL "%GBC%\romulating.bat">>"%GBC%\logs\romulating.log"
goto :INDVOUT

:DELMPTY
for /f "delims=" %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%"') do (
set INDIR=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :DELFOLD
popd
rd "%GBG%\%GAM%\%CONS%\%%~a"
)
exit /b

:DELFOLD
for /f "delims=" %%a in ('dir /b/ad') do rd "%%~a"
exit /b


:INDVOUT