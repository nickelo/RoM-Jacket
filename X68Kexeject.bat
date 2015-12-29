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

for /f "delims=" %%a in ('dir /b /a-d "*Disk_1*"') do (
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

for /f "delims=" %%a in ('dir /b /a-d "*Disk 2*"') do (
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

for /f "delims=" %%a in ('dir /b /a-d "*Disk2*"') do (
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
if "%X68KDSK1%"=="" set CHKDSK=1
if "%X68KHDD1%"=="" set CHKDSK=1
if "%X68KHDS1%"=="" set CHKDSK=1
call :injecx68ks



:disking
if /I "%X68KHDD%"=="%X68KHDD1%" exit /b
if /I "%X68KHDS%"=="%X68KHDS1%" exit /b
if /I "%X68KHDS2%"=="%X68KHDS%" exit /b
if /I "%X68KHDD2%"=="%X68KHDD%" exit /b
if /I "%X68KHDS3%"=="%X68KHDS%" exit /b
if /I "%X68KHDD3%"=="%X68KHDD%" exit /b
if /I "%X68KHDS4%"=="%X68KHDS%" exit /b
if /I "%X68KHDD4%"=="%X68KHDD%" exit /b
if /I "%X68KHDS%"=="%X68KHDS1%" exit /b
if /I "%X68KDSK%"=="%X68KDSK1%" exit /b
if /I "%X68KDSK%"=="%X68KDSK2%" exit /b
if /I "%X68KDSK%"=="%X68KDSK3%" exit /b
if /I "%X68KDSK%"=="%X68KDSK4%" exit /b
call :injecx68ks
exit /b

:injecx68ks
if "%CHKDSK%"=="1" call :GETALL
pushd "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%"
if "%X68KHDT%"=="1" "%GBC%\inifile.exe" "XM6.ini" [Resume] Path=[ROMPTH]\
if "%X68KHDD1%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SASI] File0=[ROMPTH]\%X68KHDD1%
if "%X68KHDD2%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SASI] File1=[ROMPTH]\%X68KHDD2%
if "%X68KHDD3%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SASI] File2=[ROMPTH]\%X68KHDD3%
if "%X68KHDD4%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SASI] File3=[ROMPTH]\%X68KHDD4%
if "%X68KHDS1%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] File0=[ROMPTH]\%X68KHDC1%
if "%X68KHDS2%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] File1=[ROMPTH]\%X68KHDC2%
if "%X68KHDS3%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] File2=[ROMPTH]\%X68KHDC3%
if "%X68KHDS4%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] File3=[ROMPTH]\%X68KHDC4%
if "%X68KHDT%"=="1" "%GBC%\inifile.exe" "XM6.ini" [SASI] Drives=1
if "%X68KHDC%"=="1" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=1
if "%X68KHDC%"=="1" "%GBC%\inifile.exe" "XM6.ini" [Basic] Map=2
if "%X68KHDS1%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SASI] Drives=1
if "%X68KHDS2%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=2
if "%X68KHDS3%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=3
if "%X68KHDS4%" NEQ "" "%GBC%\inifile.exe" "XM6.ini" [SCSI] Drives=4

if "%X68KHDD%" NEQ "" goto :XBVR
if "%X68KHDS%" NEQ "" goto :XBVR
"%GBC%\fart.exe" call :addto && "*.bat" [DSK1] "%%EMUL%%\%X68KDSK%"
if "%X68KDSK2%"=="" "%GBC%\fart.exe" "*.bat" [DSK2] --remove
if "%X68KDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK2] "%%EMUL%%\%X68KDSK2%"
popd
goto :x68kend

:XBVR
"%GBC%\fart.exe" "*.bat" [DSK1] --remove
"%GBC%\fart.exe" "*.bat" [DSK2] --remove
popd
goto :x68kend

:GETALL
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%X68K%\%CSTM%"') do (
if /I "%%~xa"==".hdf" SET X68KHDT=1
if /I "%%~xa"==".hds" SET X68KHDC=1
if /I "%%~xa"==".hdf" SET X68KHDD1=%%~a
if /I "%%~xa"==".hds" SET X68KHDS1=%%~a
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


:addto
SET /A ADDTO+=1

:x68kend