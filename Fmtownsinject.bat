SET FMTOWNSDSK=
SET FMTOWNSDSK1=
SET FMTOWNSDSK2=
if "%DSKFND%"=="1" exit /b
for /f "delims=" %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".imd" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".td0" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".1dd" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK1=%%~a
)
if "%FMTOWNSDSK1%"=="" goto :DSK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".imd" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".td0" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".wav" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK1=%%~a
)
:DSK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK2=%%~a 
if /I "%%~xa"==".imd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".1dd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".wav" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK2=%%~a
)
if "%FMTOWNSDSK1%"=="" goto :BOOT
for /f "delims=" %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK2=%%~a 
if /I "%%~xa"==".imd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".td0" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".1dd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK2=%%~a
)

:BOOT
for /f "delims=" %%a in ('dir /b/a-d "*bootdisk*.d88" "*bootdisk*.d77" "*bootdisk*.tap" "*bootdisk*.imd" "*bootdisk*.td0" "*bootdisk*.cqm" "*bootdisk*.fdi" "*bootdisk*.1dd"') do set FMTOWNSDSK=%%~a
if "%FMTOWNSDSK%" NEQ "" goto :injec1s
if "%FMTOWNSDSK1%" NEQ "" goto :injec1s

for /f "delims=" %%a in ('dir /b /a-d') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".d77" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".bin" SET FMTOWNSDSK=%%~a
CALL :disking 
if /I "%%~xa"==".tap" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".imd" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".td0" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".cqm" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".fdi" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".1dd" SET FMTOWNSDSK=%%~a
CALL :disking
)
goto :injec1s

:disking
if /I "%FMTOWNSDSK%"=="%FMTOWNSDSK2%" exit /b
if /I "%FMTOWNSDSK%"=="" exit /b

:injec1s
if "%FSCRN%"=="1" "%GBC%\fart.exe" -C "*.bat" [FULL] "\-fs"
if "%FSCRN%"=="" "%GBC%\fart.exe" -C "*.bat" [FULL] --remove
"%GBC%\fart.exe" "*.bat" [ROMPTH] "%GBG%\%GAM%\%CONS%\%FMTOWNS%\%CSTM%"
if /i "%FMTOWNSDSK1%" NEQ "" "%GBC%\fart.exe" "*.bat" "[DSK]" "%FMTOWNSDSK1%"
"%GBC%\fart.exe" "*.bat" [DSK] "%FMTOWNSDSK%"
if "%FMTOWNSDSK1%" NEQ "" "%GBC%\fart.exe" "*.bat" [ROMPTH1] "%GBG%\%GAM%\%CONS%\%FMTOWNS%\%CSTM%" 
if "%FMTOWNSDSK1%" NEQ "" "%GBC%\fart.exe" "*.bat" "[DSK1]" "%FMTOWNSDSK2%"
"%GBC%\fart.exe" "*.bat" [ROMPTH1] --remove
"%GBC%\fart.exe" "*.bat" [DSK1] --remove