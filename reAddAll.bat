set LNKTYPE=3
del /q "%GBC%\net\%RTFE%\menu.xml"
echo.^<menu^>>"%GBC%\net\%RTFE%\menu.xml"

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CONSESPTH=%GBG%\%GAM%\%CONS%\%%~a
set CSTCONS=%%~a
set CONSES=%%~a
CALL :ESCA
)
goto :ADDALL

:ESCA
if "%CSTCONS%"=="ALL SYSTEMS" exit /b
pushd "%GBG%\%GAM%\%CONS%"
if not exist "%CSTCONS%" exit /b
"%RFE%\Core\RetroFE.exe" -createcollection "%CSTCONS%"
if "%LNKTYPE%"=="1" call :%LINKR%
if "%LNKTYPE%"=="2" call :MOVER
if "%LNKTYPE%"=="3" call :COPYR
echo.^<item collection="%CSTCONS%"/^>>>"%GBC%\net\%RTFE%\menu.xml"
if not exist "%RFE%\collections\%CSTCONS%\settings.orig" rename "%RFE%\collections\%CSTCONS%\settings.conf" "settings.origm
if exist "%RFE%\collections\%CSTCONS%\settings.bak" del /q "%RFE%\collections\%CSTCONS%\settings.bak"
rename "%RFE%\collections\%CSTCONS%\settings.conf" "settings.bak"
copy /y "%GBC%\net\%RTFE%\rfecon.conf" "%RFE%\collections\%CSTCONS%\settings.conf"
rename "%RFE%\collections\%CSTCONS%\include.txt" "include.bak"
rename "%RFE%\collections\%CSTCONS%\exclude.txt" "exclude.bak"
del /q "%RFE%\collections\%CSTCONS%\*clude.txt"
popd
exit /b

:MOVER
move /y "%MIRLOC%\%MIRDN%\%CSTCONS%" "%RFE%\collections\%CSTCONS%\roms"
exit /b

:COPYR
copy /y "%MIRLOC%\%MIRDN%\%CSTCONS%\*.lnk" "%RFE%\collections\%CSTCONS%\roms"
exit /b

:WINV
mklink /d "%RFE%\collections\%CSTCONS%\roms" "%MIRLOC%\%MIRDN%\%CSTCONS%"
exit /b

:WINLEG
"%GBC%\linkd.exe" "%MIRLOC%\%MIRDN%\%CSTCONS%" "%RFE%\collections\%CSTCONS%\roms"
exit /b

:ADDALL
echo.^</menu^>>>"%GBC%\net\%RTFE%\menu.xml"
if "%ALIASTYPE%"=="1" echo.^</menu^>>>"%GBC%\net\%RTFE%\arcd.xml"
if "%ALIASTYPE%"=="1" echo.^</menu^>>>"%GBC%\net\%RTFE%\hand.xml"
if "%ALIASTYPE%"=="1" echo.^</menu^>>>"%GBC%\net\%RTFE%\home.xml"
if "%ALIASTYPE%"=="1" echo.^</menu^>>>"%GBC%\net\%RTFE%\comp.xml"
:ADDEND