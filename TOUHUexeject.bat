SET TOUHUHDD=
SET TOUHUHDD1=
SET TOUHUHDD2=
SET TOUHUFDD=
SET TOUHUFDD1=
SET TOUHUFDD2=

for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD1=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD1=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD2=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD2=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD2=%%~a
)

for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD=%%~a
CALL :disking
if /I "%%~xa"==".hdi" SET TOUHUHDD=%%~a
CALL :disking
)
goto :injectTOUHUs

:disking
if /I "%TOUHUFDD%"=="%TOUHUFDD2%" exit /b
if /I "%TOUHUHDD%"=="%TOUHUHDD2%" exit /b

:injectTOUHUs
pushd "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%"

if "%TOUHUFDD%"=="" "%GBC%\fart.exe" "DEFAULT.cmd" [TOUHUFDD] --remove
if "%TOUHUFDD%" NEQ "" "%GBC%\fart.exe" "DEFAULT.cmd" [TOUHUFDD] "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\%TOUHUFDD%"
if "%TOUHUHDD%"=="" "%GBC%\fart.exe" "DEFAULT.cmd" [TOUHUHDD] --remove
if "%TOUHUHDD%" NEQ "" "%GBC%\fart.exe" "DEFAULT.cmd" [TOUHUHDD] "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\%TOUHUHDD%"


popd
goto :TOUHUend

:TOUHUend
exit /b