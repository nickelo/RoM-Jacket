if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
SET AMSTRHDD=
SET AMSTRDSK=
SET AMSTRDSK1=
SET AMSTRDSK2=
SET AMSTRDSK3=
SET AMSTRDSK4=

for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK1=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK2=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk 3*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK3=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk3*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK3=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK3=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk 4*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK4=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\*Disk4*"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".dsk" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".arc" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".cdt" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".tzx" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".czx" SET AMSTRDSK4=%%~a
if /I "%%~xa"==".voc" SET AMSTRDSK4=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%"') do (
if /I "%%~xa"==".dsc" SET AMSTRDSK=%%~a
CALL :disking
if /I "%%~xa"==".tzx" SET AMSTRDSK=%%~a
CALL :disking
if /I "%%~xa"==".dsk" SET AMSTRDSK=%%~a
CALL :disking
if /I "%%~xa"==".arc" SET AMSTRDSK=%%~a
CALL :disking 
CALL :disking
if /I "%%~xa"==".cdt" SET AMSTRDSK=%%~a
CALL :disking
if /I "%%~xa"==".czx" SET AMSTRDSK=%%~a
CALL :disking
if /I "%%~xa"==".voc" SET AMSTRDSK=%%~a
CALL :disking
)
goto :injecAMSTRs

:disking
if /I "%AMSTRDSK%"=="%AMSTRDSK2%" SET AMSTRDSK=
exit /b
if /I "%AMSTRDSK%"=="%AMSTRDSK3%" SET AMSTRDSK=
exit /b
if /I "%AMSTRDSK%"=="%AMSTRDSK4%" SET AMSTRDSK=
exit /b
if /I "%AMSTRDSK%"=="" exit /b

:injecAMSTRs
"%GBC%\fart.exe" "WinAPE.ini" [DSK1] "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\%AMSTRDSK%"
if "%AMSTRDSK2%" NEQ "" "%GBC%\fart.exe" "WinAPE.ini" [DSK2] "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\%AMSTRDSK2%"
if "%AMSTRDSK3%" NEQ "" "%GBC%\fart.exe" "WinAPE.ini" [DSK3] "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\%AMSTRDSK3%"
if "%AMSTRDSK4%" NEQ "" "%GBC%\fart.exe" "WinAPE.ini" [DSK4] "%GBG%\%GAM%\%CONS%\%AMSTR%\%CSTM%\%AMSTRDSK4%"
if "%AMSTRDSK2%"=="" "%GBC%\fart.exe" "WinAPE.ini" [DSK2] --remove
if "%AMSTRDSK3%"=="" "%GBC%\fart.exe" "WinAPE.ini" [DSK3] --remove
if "%AMSTRDSK4%"=="" "%GBC%\fart.exe" "WinAPE.ini" [DSK4] --remove
goto :AMSTRend

:AMSTRend
exit /b