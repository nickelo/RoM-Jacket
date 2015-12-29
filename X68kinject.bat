SET CHKDSK=
SET XM6DSK=
SET XM6RSM=
SET X68KHDD=
SET X68KHDD1=
SET X68KHDD2=
SET X68KHDD3=
SET X68KHDD4=
SET X68KHDT=
SET X68KHDC=
SET X68KDSK=
SET X68KDSK1=
SET X68KDSK2=
SET X68KDSK3=
SET X68KDSK4=

for /f "delims=" %%a in ('dir /b /a-d "*.XM6"') do if /i "%%~xa"==".xm6" set XM6DSK=%%~a

for /f "delims=" %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".d88" SET X68KDSK1=%%~a
if /I "%%~xa"==".d68" SET X68KDSK1=%%~a
if /I "%%~xa"==".88d" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdf" SET X68KHDD1=%%~a
if /I "%%~xa"==".hds" SET X68KHDS1=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK1=%%~a
if /I "%%~xa"==".dup" SET X68KDSK1=%%~a
if /I "%%~xa"==".dim" SET X68KDSK1=%%~a
if /I "%%~xa"==".hds" SET X68KHDD1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK1=%%~a
if /I "%%~xa"==".img" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
)
if "%X68KDSK1%" NEQ "" goto :DISK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".d88" SET X68KDSK1=%%~a
if /I "%%~xa"==".d68" SET X68KDSK1=%%~a
if /I "%%~xa"==".88d" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdf" SET X68KHDD1=%%~a
if /I "%%~xa"==".hds" SET X68KHDS1=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK1=%%~a
if /I "%%~xa"==".dup" SET X68KDSK1=%%~a
if /I "%%~xa"==".dim" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK1=%%~a
if /I "%%~xa"==".img" SET X68KDSK1=%%~a
)
if "%X68KDSK1%" NEQ "" goto :DISK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk_1*"') do (
if /I "%%~xa"==".hdf" SET X68KHDD1=%%~a
if /I "%%~xa"==".hds" SET X68KHDS1=%%~a

if /I "%%~xa"==".d88" SET X68KDSK1=%%~a
if /I "%%~xa"==".d68" SET X68KDSK1=%%~a
if /I "%%~xa"==".88d" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK1=%%~a
if /I "%%~xa"==".dup" SET X68KDSK1=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".dim" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK1=%%~a
if /I "%%~xa"==".img" SET X68KDSK1=%%~a
)
:DISK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".hdf" SET X68KHDD2=%%~a
if /I "%%~xa"==".hds" SET X68KHDS2=%%~a

if /I "%%~xa"==".d88" SET X68KDSK2=%%~a
if /I "%%~xa"==".d68" SET X68KDSK2=%%~a
if /I "%%~xa"==".88d" SET X68KDSK2=%%~a 
if /I "%%~xa"==".xdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK2=%%~a
if /I "%%~xa"==".dup" SET X68KDSK2=%%~a
if /I "%%~xa"==".dim" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK2=%%~a
if /I "%%~xa"==".img" SET X68KDSK2=%%~a
)
if "%X68KDSK2%" NEQ "" goto :DISK3
for /f "delims=" %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".hdf" SET X68KHDD2=%%~a
if /I "%%~xa"==".hds" SET X68KHDS2=%%~a

if /I "%%~xa"==".d88" SET X68KDSK2=%%~a
if /I "%%~xa"==".d68" SET X68KDSK2=%%~a
if /I "%%~xa"==".88d" SET X68KDSK2=%%~a 
if /I "%%~xa"==".xdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK2=%%~a
if /I "%%~xa"==".dup" SET X68KDSK2=%%~a
if /I "%%~xa"==".dim" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK2=%%~a
if /I "%%~xa"==".img" SET X68KDSK2=%%~a
)
if "%X68KDSK2%" NEQ "" goto :DISK3
for /f "delims=" %%a in ('dir /b /a-d "*Disk_2*"') do (
if /I "%%~xa"==".d88" SET X68KDSK2=%%~a
if /I "%%~xa"==".d68" SET X68KDSK2=%%~a
if /I "%%~xa"==".88d" SET X68KDSK2=%%~a 
if /I "%%~xa"==".hdf" SET X68KHDD2=%%~a
if /I "%%~xa"==".hds" SET X68KHDS2=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK2=%%~a
if /I "%%~xa"==".dup" SET X68KDSK2=%%~a
if /I "%%~xa"==".dim" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK2=%%~a
if /I "%%~xa"==".img" SET X68KDSK2=%%~a
)
if "%X68KDSK2%"=="" "%GBC%\fart.exe" "XM6.ini" [DSK2] --remove
:DISK3
for /f "delims=" %%a in ('dir /b /a-d "*Disk 3*"') do (
if /I "%%~xa"==".d88" SET X68KDSK3=%%~a
if /I "%%~xa"==".d68" SET X68KDSK3=%%~a
if /I "%%~xa"==".88d" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdf" SET X68KHDD3=%%~a
if /I "%%~xa"==".hds" SET X68KHDS3=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK3=%%~a
if /I "%%~xa"==".dup" SET X68KDSK3=%%~a
if /I "%%~xa"==".dim" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK3=%%~a
if /I "%%~xa"==".img" SET X68KDSK3=%%~a
)
if "%X68KDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*Disk3*"') do (
if /I "%%~xa"==".d88" SET X68KDSK3=%%~a
if /I "%%~xa"==".d68" SET X68KDSK3=%%~a
if /I "%%~xa"==".88d" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdf" SET X68KHDD3=%%~a
if /I "%%~xa"==".hds" SET X68KHDS3=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK3=%%~a
if /I "%%~xa"==".dup" SET X68KDSK3=%%~a
if /I "%%~xa"==".dim" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK3=%%~a
if /I "%%~xa"==".img" SET X68KDSK3=%%~a
)
if "%X68KDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*Disk_3*"') do (
if /I "%%~xa"==".d88" SET X68KDSK3=%%~a
if /I "%%~xa"==".d68" SET X68KDSK3=%%~a
if /I "%%~xa"==".88d" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdf" SET X68KHDD3=%%~a
if /I "%%~xa"==".hds" SET X68KHDS3=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK3=%%~a
if /I "%%~xa"==".dup" SET X68KDSK3=%%~a
if /I "%%~xa"==".dim" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK3=%%~a
if /I "%%~xa"==".img" SET X68KDSK3=%%~a
)
if "%X68KDSK3%"=="" "%GBC%\fart.exe" "XM6.ini" [DSK3] --remove
:DISK4
for /f "delims=" %%a in ('dir /b /a-d "*Disk 4*"') do (
if /I "%%~xa"==".d88" SET X68KDSK4=%%~a
if /I "%%~xa"==".d68" SET X68KDSK4=%%~a
if /I "%%~xa"==".88d" SET X68KDSK4=%%~a 
if /I "%%~xa"==".hdf" SET X68KHDD4=%%~a
if /I "%%~xa"==".hds" SET X68KHDS4=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK4=%%~a
if /I "%%~xa"==".dup" SET X68KDSK4=%%~a
if /I "%%~xa"==".dim" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK4=%%~a
if /I "%%~xa"==".img" SET X68KDSK4=%%~a
)
if "%X68KDSK4%" NEQ "" goto :COMP
for /f "delims=" %%a in ('dir /b /a-d "*Disk4*"') do (
if /I "%%~xa"==".d88" SET X68KDSK4=%%~a
if /I "%%~xa"==".d68" SET X68KDSK4=%%~a
if /I "%%~xa"==".88d" SET X68KDSK4=%%~a 
if /I "%%~xa"==".hdf" SET X68KHDD4=%%~a
if /I "%%~xa"==".hds" SET X68KHDS4=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK4=%%~a
if /I "%%~xa"==".dup" SET X68KDSK4=%%~a
if /I "%%~xa"==".dim" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK4=%%~a
if /I "%%~xa"==".img" SET X68KDSK4=%%~a
)
if "%X68KDSK4%" NEQ "" goto :COMP
for /f "delims=" %%a in ('dir /b /a-d "*Disk_4*"') do (
if /I "%%~xa"==".d88" SET X68KDSK4=%%~a
if /I "%%~xa"==".d68" SET X68KDSK4=%%~a
if /I "%%~xa"==".88d" SET X68KDSK4=%%~a 
if /I "%%~xa"==".hdf" SET X68KHDD4=%%~a
if /I "%%~xa"==".hds" SET X68KHDS4=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK4=%%~a
if /I "%%~xa"==".dup" SET X68KDSK4=%%~a
if /I "%%~xa"==".dim" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK4=%%~a
if /I "%%~xa"==".img" SET X68KDSK4=%%~a
)

if "%X68KDSK4%"=="" "%GBC%\fart.exe" "XM6.ini" [DSK4] --remove

:COMP
if "%XM6DSK%" NEQ "" set XM6RSM=1
if "%X68KDSK1%"=="" set CHKDSK=1
if "%X68KHDD1%"=="" set CHKDSK=2
if "%X68KHDS1%"=="" set CHKDSK=2
call :injecx68ks
exit /b

:injecx68ks
if "%CHKDSK%" NEQ "1" call :GETALL
pushd "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%"
if "%XM6RSM%"=="1" "%GBC%\fart.exe" "XM6.ini" [XM6] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%XM6DSK%"

if "%X68KHDS1%"=="" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=0
if "%X68KHDD1%"=="" "%GBC%\inifile.exe" "XM6.ini" [SASI] Drives=0
if "%X68KHDD1%"=="" "%GBC%\fart.exe" "XM6.ini" [SASI1] --remove
if "%X68KHDD2%"=="" "%GBC%\fart.exe" "XM6.ini" [SASI2] --remove
if "%X68KHDD3%"=="" "%GBC%\fart.exe" "XM6.ini" [SASI3] --remove
if "%X68KHDD4%"=="" "%GBC%\fart.exe" "XM6.ini" [SASI4] --remove
if "%X68KHDS1%"=="" "%GBC%\fart.exe" "XM6.ini" [SCSI1] --remove
if "%X68KHDS2%"=="" "%GBC%\fart.exe" "XM6.ini" [SCSI2] --remove
if "%X68KHDS3%"=="" "%GBC%\fart.exe" "XM6.ini" [SCSI3] --remove
if "%X68KHDS4%"=="" "%GBC%\fart.exe" "XM6.ini" [SCSI4] --remove


if "%X68KHDD1%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SASI1] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDD1%"
if "%X68KHDD2%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SASI2] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDD2%"
if "%X68KHDD3%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SASI3] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDD3%"
if "%X68KHDD4%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SASI4] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDD4%"
if "%X68KHDS1%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SCSI1] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDS1%"
if "%X68KHDS2%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SCSI2] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDS2%"
if "%X68KHDS3%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SCSI3] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDS3%"
if "%X68KHDS4%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [SCSI4] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KHDS4%"
if "%XM6RSM%"=="1" "%GBC%\inifile.exe" "XM6.ini" [Resume] XM6=1
if "%X68KHDC%"=="1" "%GBC%\fart.exe" "XM6.ini" [MPU] 0
if "%X68KHDC%"=="1" "%GBC%\inifile.exe" "XM6.ini" [Basic] ModelType=1
if "%X68KHDT%"=="1" "%GBC%\fart.exe" "XM6.ini" [MPU] 0
"%GBC%\fart.exe" "XM6.ini" [MPU] 1
if "%X68KHDT%"=="1" "%GBC%\inifile.exe" "XM6.ini" [SASI] Drives=1
if "%X68KHDC%"=="1" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=1
if "%X68KHDC%"=="1" "%GBC%\inifile.exe" "XM6.ini" [Basic] Map=2
if "%X68KHDS1%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SASI] Drives=1
if "%X68KHDS2%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=2
if "%X68KHDS3%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=3
if "%X68KHDS4%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=4
if "%X68KHDT%" NEQ "" goto :XBVR
if "%X68KHDC%" NEQ "" goto :XBVR
if "%X68KHDS1%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK1] --remove
if "%X68KHDC1%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK1] --remove
if "%X68KHDT1%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK1] --remove
if "%X68KDSK%"=="" for %%a in ("%X68KDSK1%") do SET X68KDSK=%%~a
if "%XM6DSK%"=="" "%GBC%\fart.exe" "*.bat" [DSK1] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KDSK%"
if "%X68KDSK1%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [DSK1] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KDSK1%"
if "%XM6RSM%"=="1" for %%a in ("%XM6DSK%") do (
SET X68KDSK=%%~a
SET X68KDSK1=%%~a
)
if "%XM6DSK%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK1] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%XM6DSK%"
if "%X68KDSK2%"=="" "%GBC%\fart.exe" "*.bat" [DSK2] --remove
if "%X68KDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK2] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KDSK2%"
if "%X68KDSK2%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [DSK2] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KDSK2%"
if "%X68KDSK3%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [DSK3] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KDSK3%"
if "%X68KDSK4%" NEQ "" "%GBC%\fart.exe" "XM6.ini" [DSK4] "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%\%X68KDSK4%"
popd
goto :x68kend

:XBVR
"%GBC%\fart.exe" "*.bat" [DSK1] --remove
"%GBC%\fart.exe" "*.bat" [DSK2] --remove
"%GBC%\inifile.exe" "XM6.ini" [Resume] FD=0	
popd
goto :x68kend

:GETALL
if "%CHKDSK%"=="2" for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%"') do (
if /I "%%~xa"==".hdf" SET X68KHDT=1
if /I "%%~xa"==".hds" SET X68KHDC=1
if /I "%%~xa"==".hdf" SET X68KHDD1=%%~a
if /I "%%~xa"==".hds" SET X68KHDS1=%%~a
)

if "%CHKDSK%"=="1" for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%"') do (
if /I "%%~xa"==".xdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK1=%%~a
if /I "%%~xa"==".dup" SET X68KDSK1=%%~a
if /I "%%~xa"==".dim" SET X68KDSK1=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK1=%%~a
if /I "%%~xa"==".img" SET X68KDSK1=%%~a
if /I "%%~xa"==".d88" SET X68KDSK1=%%~a
if /I "%%~xa"==".d68" SET X68KDSK1=%%~a
if /I "%%~xa"==".88d" SET X68KDSK1=%%~a
)
exit /b

:x68kend