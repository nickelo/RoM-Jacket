pushd "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/l/a-d-h "*.jpg" "*.xml" "*.nfo" "*.png"') do attrib +H "%%~a"
popd
CALL "%GBC%\generateCustomLibrary.bat">>"%GBC%\logs\generateCustomLibrary.log"
pushd "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/l/a-d-h "*.jpg" "*.xml" "*.nfo" "*.png"') do attrib -H "%%~a"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating the %CASTNAME% launchers." /marquee
popd
if "%CEMU%" NEQ "1" goto :INDVROMS

:INDVROMS
pushd "%CUSTCONSPTH%"
for /d %%i in (*) do (
SET INDVROMS=%%i
CALL :COPYMVROMS
popd
)
if /i "%CEMU%"=="%MEDN%" call :MEDNCOPY
if /i "%CEMU%"=="%RTROA%" call :RTROCOPY
if "%MESSINJ%"=="1" call :MESSCOPY
if "%MAMINJ%"=="1" call :MAMCOPY
if /i "%CEMU%"=="%FUSN%" call :FUSNCOPY
goto :extensionchk

:COPYMVROMS
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for %%a in ("%INDVROMS%") do set INDVRTMP=%%~nxa
copy /Y "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat" "%CUSTCONSPTH%"
for %%a in ("%INDVROMS%") do set INDVRTMP=%%~snxa
copy /Y "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat" "%CUSTCONSPTH%"
if "%RECONB%"=="" goto :OVERBAT
%COPYTYPE% "%CUSTCONSPTH%\zz.bat" "%CUSTCONSPTH%\%INDVRTMP%"

:OVERBAT
%COPYTYPE% "%CUSTCONSPTH%\zz.bat" "%CUSTCONSPTH%\%INDVRTMP%"
if "%FERID%"=="1" popd
if "%FERID%"=="1" exit /b
if "%RECONB%"=="1" rename "%CUSTCONSPTH%\%INDVRTMP%\zz.bat" "%INDVROMS%.bat"
if "%RECONB%"=="" move /Y "%CUSTCONSPTH%\%INDVRTMP%\zz.bat" "%CUSTCONSPTH%\%INDVRTMP%\%INDVROMS%.bat"
popd
exit /b

:extensionchk
if "%RCALL%"=="1" goto :CANCELLED
CALL "%GBC%\extinjALL.bat">>"%GBC%\logs\extinjALL.log"
if "%CANCELLED%"=="1" goto :CANCELLED
if "%XPD1CST%"=="1" goto :XPDCP
if "%XPD2CST%"=="1" goto :XPDCP
if "%AMC1CST%"=="1" goto :XPDCP
if "%AMC2CST%"=="1" goto :XPDCP
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
goto :INDVCONT

:FUSNCOPY
if "%CSTSUP%"=="1" exit /b
pushd "%CUSTCONSPTH%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\%FUSN%*.ini" "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
%COPYTYPE% "%FUSN%*.ini" "%%~a"
pushd "%%~a"
if "%GGON%"=="1" "%GBC%\fart.exe" "%FUSN%*.ini" "[ROMPTH]" "%%~dpnxa"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%*.ini" "[ROMPTH]" --remove
popd
)
exit /b

:MEDNCOPY
if "%CSTSUP%"=="1" exit /b
pushd "%CUSTCONSPTH%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\%MEDN%*.cfg" "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
%COPYTYPE% "%MEDN%*.cfg" "%%~a"
pushd "%%~a"
if "%GGON%"=="1" "%GBC%\fart.exe" "%MEDN%*.cfg" "[ROMPTH]" "%%~dpnxa"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%MEDN%*.cfg" "[ROMPTH]" --remove
popd
)
exit /b

:MESSCOPY
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
call "%GBC%\MESSjoy.bat">>"%GBC%\logs\MESSjoy.log"
popd
pushd "%CUSTCONSPTH%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\Mess.ini" "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
%COPYTYPE% "Mess.ini" "%%~a"
pushd "%%~a"
mkdir .cfg
mkdir .ctrlr
mkdir .ini
mkdir .inp
mkdir .hi
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\default.cfg" ".cfg"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\input.cfg" ".ctrlr"
if "%GGON%"=="1" "%GBC%\fart.exe" "Mess.ini" "[ROMPTH]" "%%~dpnxa"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "Mess.ini" "[ROMPTH]" --remove
popd
)
exit /b

:MAMCOPY
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
call "%GBC%\Mamejoy.bat">>"%GBC%\logs\Mamejoy.log"
popd
pushd "%CUSTCONSPTH%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\mame.ini" "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
%COPYTYPE% "Mame.ini" "%%~a"
pushd "%%~a"
mkdir .cfg
mkdir .ctrlr
mkdir .ini
mkdir .inp
mkdir .hi
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\default.cfg" ".cfg"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\input.cfg" ".ctrlr"
if "%GGON%"=="1" "%GBC%\fart.exe" "Mess.ini" "[ROMPTH]" "%%~dpnxa"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "Mess.ini" "[ROMPTH]" --remove
popd
)
exit /b


:RTROCOPY
pushd "%CUSTCONSPTH%"
%COPYTYPE% "%GBC%\net\%LNCH%\Other\retroarch.cfg" "%CUSTCONSPTH%"
%COPYTYPE% "%GBC%\net\%LNCH%\Other\.retroarch-core-options.cfg" "%CUSTCONSPTH%"
attrib -H "retroarch-core-options.cfg"
attrib -H "retroarch.cfg"
for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
%COPYTYPE% "retroarch-core-options.cfg" "%%~a\%RATYPE%.cfg"
REM %COPYTYPE% "retroarch-core-options.cfg" "%%~a"
%COPYTYPE% "retroarch.cfg" "%%~a"
set CUSTROMPATH=%%~dpnxa
pushd "%%~a"
if "%GGON%"=="1" call :RTINJ
if "%GGOFF%"=="1" "%GBC%\fart.exe" "retroarch.cfg" "[ROMPTH]" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" --remove
popd
)
exit /b

:RTINJ
if "%CSTCONS%"=="%NES%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%SNES%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%PS1%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
"%GBC%\fart.exe" "retroarch.cfg" "[ROMPTH]" "%CUSTROMPATH%"
"%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" "%CUSTROMPATH%"
exit /b

:CANCELLED
set CANCELLED=1
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
popd
:INDVCONT