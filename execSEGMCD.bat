for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(J*"') do SET SCDJB=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(E*"') do SET SCDEB=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(U*"') do SET SCDUB=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\*jp*cd*"') do SET SCDJB=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\*eu*cd*"') do SET SCDEB=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\*us*cd*"') do SET SCDUB=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_M*"') do SET 32XM=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_S*"') do SET 32XS=%%i
for /f "delims=" %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_G*"') do SET 32XG=%%s
pushd "%GBC%\net\%EXECT%\%SEGCD%"
copy /y "%GBE%\%EMUZ%\%FUSN%\%SCDUB%" "%GBC%\net\%EXECT%\%CSTCONS%"
copy /y "%GBE%\%EMUZ%\%FUSN%\%SCDEB%" "%GBC%\net\%EXECT%\%CSTCONS%"
copy /y "%GBE%\%EMUZ%\%FUSN%\%SCDJB%" "%GBC%\net\%EXECT%\%CSTCONS%"
copy /y "%GBE%\%EMUZ%\%FUSN%\%32XM%" "%GBC%\net\%EXECT%\%CSTCONS%"
copy /y "%GBE%\%EMUZ%\%FUSN%\%32XS%" "%GBC%\net\%EXECT%\%CSTCONS%"
copy /y "%GBE%\%EMUZ%\%FUSN%\%32XG%" "%GBC%\net\%EXECT%\%CSTCONS%"
echo.copy /y "%SCDUB%.bak" "%SCDUB%">>"%GBC%\bioscpy.ini"
echo.copy /y "%SCDEB%.bak" "%SCDEB%">>"%GBC%\bioscpy.ini"
echo.copy /y "%SCDJB%.bak" "%SCDJB%">>"%GBC%\bioscpy.ini"
echo.copy /y "%32XM%.bak" "%32XM%">>"%GBC%\bioscpy.ini"
echo.copy /y "%32XS%.bak" "%32XS%">>"%GBC%\bioscpy.ini"
echo.copy /y "%32XG%.bak" "%32XG%">>"%GBC%\bioscpy.ini"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDUB] "%SCDUB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDJB] "%SCDJB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDEB] "%SCDEB%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XG] "%32XG%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XM] "%32XM%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XS] "%32XS%"
"%GBC%\fart.exe" "%FUSN%.ini" [EMUL] "[EMUPTH]"
call "%GBC%\fusnInj.bat">>"%GBC%\logs\fusnInj.log"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\SEGCDexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SEGCD%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".ccd" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ccd
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1