set PC98DSK=
set PC98DSK1=
set PC98DSK2=
set PC98DSK3=
set PC98DSK4=
set PC98DSK5=
set PC98DSK6=
set PC98DSK7=
set PC98DSK8=
set PC98DSK9=
set PC98DSK10=
set PC98DSK11=
set PC98DSK12=
set PC98DSK13=
set PC98DSK14=
set PC98DSK15=
set PC98EXT=
set PC98HDD=
set PC-98HXT=
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%"') do (
if /I "%%~xa"==".nhd" SET PC98HDD=%%~a
if /I "%%~xa"==".thd" SET PC98HDD=%%~a
if /I "%%~xa"==".hdi" SET PC98HDD=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk10*"') do (
if /I "%%~xa"==".d88" SET PC98DSK10=%%~a
if /I "%%~xa"==".d98" SET PC98DSK10=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK10=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK10=%%~a
if /I "%%~xa"==".dup" SET PC98DSK10=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK10=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK10=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 10*"') do (
if /I "%%~xa"==".d88" SET PC98DSK10=%%~a
if /I "%%~xa"==".d98" SET PC98DSK10=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK10=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK10=%%~a
if /I "%%~xa"==".dup" SET PC98DSK10=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK10=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK10=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_10*"') do (
if /I "%%~xa"==".d88" SET PC98DSK10=%%~a
if /I "%%~xa"==".d98" SET PC98DSK10=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK10=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK10=%%~a
if /I "%%~xa"==".dup" SET PC98DSK10=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK10=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK10=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 11*"') do (
if /I "%%~xa"==".d88" SET PC98DSK11=%%~a
if /I "%%~xa"==".d98" SET PC98DSK11=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK11=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK11=%%~a
if /I "%%~xa"==".dup" SET PC98DSK11=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK11=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK11=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk11*"') do (
if /I "%%~xa"==".d88" SET PC98DSK11=%%~a
if /I "%%~xa"==".d98" SET PC98DSK11=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK11=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK11=%%~a
if /I "%%~xa"==".dup" SET PC98DSK11=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK11=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK11=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_11*"') do (
if /I "%%~xa"==".d88" SET PC98DSK11=%%~a
if /I "%%~xa"==".d98" SET PC98DSK11=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK11=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK11=%%~a
if /I "%%~xa"==".dup" SET PC98DSK11=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK11=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK11=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk12*"') do (
if /I "%%~xa"==".d88" SET PC98DSK12=%%~a
if /I "%%~xa"==".d98" SET PC98DSK12=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK12=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK12=%%~a
if /I "%%~xa"==".dup" SET PC98DSK12=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK12=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK12=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 12*"') do (
if /I "%%~xa"==".d88" SET PC98DSK12=%%~a
if /I "%%~xa"==".d98" SET PC98DSK12=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK12=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK12=%%~a
if /I "%%~xa"==".dup" SET PC98DSK12=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK12=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK12=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_12*"') do (
if /I "%%~xa"==".d88" SET PC98DSK12=%%~a
if /I "%%~xa"==".d98" SET PC98DSK12=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK12=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK12=%%~a
if /I "%%~xa"==".dup" SET PC98DSK12=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK12=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK12=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk13*"') do (
if /I "%%~xa"==".d88" SET PC98DSK13=%%~a
if /I "%%~xa"==".d98" SET PC98DSK13=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK13=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK13=%%~a
if /I "%%~xa"==".dup" SET PC98DSK13=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK13=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK13=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 13*"') do (
if /I "%%~xa"==".d88" SET PC98DSK13=%%~a
if /I "%%~xa"==".d98" SET PC98DSK13=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK13=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK13=%%~a
if /I "%%~xa"==".dup" SET PC98DSK13=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK13=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK13=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_13*"') do (
if /I "%%~xa"==".d88" SET PC98DSK13=%%~a
if /I "%%~xa"==".d98" SET PC98DSK13=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK13=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK13=%%~a
if /I "%%~xa"==".dup" SET PC98DSK13=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK13=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK13=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 14*"') do (
if /I "%%~xa"==".d88" SET PC98DSK14=%%~a
if /I "%%~xa"==".d98" SET PC98DSK14=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK14=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK14=%%~a
if /I "%%~xa"==".dup" SET PC98DSK14=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK14=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK14=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk14*"') do (
if /I "%%~xa"==".d88" SET PC98DSK14=%%~a
if /I "%%~xa"==".d98" SET PC98DSK14=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK14=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK14=%%~a
if /I "%%~xa"==".dup" SET PC98DSK14=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK14=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK14=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_14*"') do (
if /I "%%~xa"==".d88" SET PC98DSK14=%%~a
if /I "%%~xa"==".d98" SET PC98DSK14=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK14=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK14=%%~a
if /I "%%~xa"==".dup" SET PC98DSK14=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK14=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK14=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk15*"') do (
if /I "%%~xa"==".d88" SET PC98DSK15=%%~a
if /I "%%~xa"==".d98" SET PC98DSK15=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK15=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK15=%%~a
if /I "%%~xa"==".dup" SET PC98DSK15=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK15=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK15=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 15*"') do (
if /I "%%~xa"==".d88" SET PC98DSK15=%%~a
if /I "%%~xa"==".d98" SET PC98DSK15=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK15=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK15=%%~a
if /I "%%~xa"==".dup" SET PC98DSK15=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK15=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK15=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_15*"') do (
if /I "%%~xa"==".d88" SET PC98DSK15=%%~a
if /I "%%~xa"==".d98" SET PC98DSK15=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK15=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK15=%%~a
if /I "%%~xa"==".dup" SET PC98DSK15=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK15=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK15=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 01*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 02*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk02*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_2*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 3*"') do (
if /I "%%~xa"==".d88" SET PC98DSK3=%%~a
if /I "%%~xa"==".d98" SET PC98DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK3=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK3=%%~a
if /I "%%~xa"==".dup" SET PC98DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk3*"') do (
if /I "%%~xa"==".d88" SET PC98DSK3=%%~a
if /I "%%~xa"==".d98" SET PC98DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK3=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK3=%%~a
if /I "%%~xa"==".dup" SET PC98DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_3*"') do (
if /I "%%~xa"==".d88" SET PC98DSK3=%%~a
if /I "%%~xa"==".d98" SET PC98DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK3=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK3=%%~a
if /I "%%~xa"==".dup" SET PC98DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk4*"') do (
if /I "%%~xa"==".d88" SET PC98DSK4=%%~a
if /I "%%~xa"==".d98" SET PC98DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK4=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK4=%%~a
if /I "%%~xa"==".dup" SET PC98DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK4=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 4*"') do (
if /I "%%~xa"==".d88" SET PC98DSK4=%%~a
if /I "%%~xa"==".d98" SET PC98DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK4=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK4=%%~a
if /I "%%~xa"==".dup" SET PC98DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK4=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_4*"') do (
if /I "%%~xa"==".d88" SET PC98DSK4=%%~a
if /I "%%~xa"==".d98" SET PC98DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK4=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK4=%%~a
if /I "%%~xa"==".dup" SET PC98DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK4=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 5*"') do (
if /I "%%~xa"==".d88" SET PC98DSK5=%%~a
if /I "%%~xa"==".d98" SET PC98DSK5=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK5=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK5=%%~a
if /I "%%~xa"==".dup" SET PC98DSK5=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK5=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK5=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk5*"') do (
if /I "%%~xa"==".d88" SET PC98DSK5=%%~a
if /I "%%~xa"==".d98" SET PC98DSK5=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK5=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK5=%%~a
if /I "%%~xa"==".dup" SET PC98DSK5=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK5=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK5=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_5*"') do (
if /I "%%~xa"==".d88" SET PC98DSK5=%%~a
if /I "%%~xa"==".d98" SET PC98DSK5=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK5=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK5=%%~a
if /I "%%~xa"==".dup" SET PC98DSK5=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK5=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK5=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk6*"') do (
if /I "%%~xa"==".d88" SET PC98DSK6=%%~a
if /I "%%~xa"==".d98" SET PC98DSK6=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK6=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK6=%%~a
if /I "%%~xa"==".dup" SET PC98DSK6=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK6=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK6=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 6*"') do (
if /I "%%~xa"==".d88" SET PC98DSK6=%%~a
if /I "%%~xa"==".d98" SET PC98DSK6=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK6=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK6=%%~a
if /I "%%~xa"==".dup" SET PC98DSK6=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK6=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK6=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_6*"') do (
if /I "%%~xa"==".d88" SET PC98DSK6=%%~a
if /I "%%~xa"==".d98" SET PC98DSK6=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK6=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK6=%%~a
if /I "%%~xa"==".dup" SET PC98DSK6=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK6=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK6=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 7*"') do (
if /I "%%~xa"==".d88" SET PC98DSK7=%%~a
if /I "%%~xa"==".d98" SET PC98DSK7=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK7=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK7=%%~a
if /I "%%~xa"==".dup" SET PC98DSK7=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK7=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK7=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk7*"') do (
if /I "%%~xa"==".d88" SET PC98DSK7=%%~a
if /I "%%~xa"==".d98" SET PC98DSK7=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK7=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK7=%%~a
if /I "%%~xa"==".dup" SET PC98DSK7=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK7=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK7=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_7*"') do (
if /I "%%~xa"==".d88" SET PC98DSK7=%%~a
if /I "%%~xa"==".d98" SET PC98DSK7=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK7=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK7=%%~a
if /I "%%~xa"==".dup" SET PC98DSK7=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK7=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK7=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk8*"') do (
if /I "%%~xa"==".d88" SET PC98DSK8=%%~a
if /I "%%~xa"==".d98" SET PC98DSK8=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK8=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK8=%%~a
if /I "%%~xa"==".dup" SET PC98DSK8=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK8=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK8=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 8*"') do (
if /I "%%~xa"==".d88" SET PC98DSK8=%%~a
if /I "%%~xa"==".d98" SET PC98DSK8=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK8=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK8=%%~a
if /I "%%~xa"==".dup" SET PC98DSK8=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK8=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK8=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_8*"') do (
if /I "%%~xa"==".d88" SET PC98DSK8=%%~a
if /I "%%~xa"==".d98" SET PC98DSK8=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK8=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK8=%%~a
if /I "%%~xa"==".dup" SET PC98DSK8=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK8=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK8=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk 9*"') do (
if /I "%%~xa"==".d88" SET PC98DSK9=%%~a
if /I "%%~xa"==".d98" SET PC98DSK9=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK9=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK9=%%~a
if /I "%%~xa"==".dup" SET PC98DSK9=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK9=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK9=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk9*"') do (
if /I "%%~xa"==".d88" SET PC98DSK9=%%~a
if /I "%%~xa"==".d98" SET PC98DSK9=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK9=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK9=%%~a
if /I "%%~xa"==".dup" SET PC98DSK9=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK9=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK9=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\*Disk_9*"') do (
if /I "%%~xa"==".d88" SET PC98DSK9=%%~a
if /I "%%~xa"==".d98" SET PC98DSK9=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK9=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK9=%%~a
if /I "%%~xa"==".dup" SET PC98DSK9=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK9=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK9=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%"') do (
if /I "%%~xa"==".d88" SET PC98DSK=%%~a
if /I "%%~xa"==".d98" SET PC98DSK=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK=%%~a
if /I "%%~xa"==".dup" SET PC98DSK=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK=%%~a
call :INJECTING
SET PC98DSK=
)
:INJECTING
if "%PC98DSK%"=="" goto :HDINJ
if /I "%PC98DSK%"=="%PC98DSK1%" exit /b
if /I "%PC98DSK%"=="%PC98DSK2%" exit /b
if /I "%PC98DSK%"=="%PC98DSK3%" exit /b
if /I "%PC98DSK%"=="%PC98DSK4%" exit /b
if /I "%PC98DSK%"=="%PC98DSK5%" exit /b
if /I "%PC98DSK%"=="%PC98DSK6%" exit /b
if /I "%PC98DSK%"=="%PC98DSK7%" exit /b
if /I "%PC98DSK%"=="%PC98DSK8%" exit /b
if /I "%PC98DSK%"=="%PC98DSK9%" exit /b
if /I "%PC98DSK%"=="%PC98DSK10%" exit /b
if /I "%PC98DSK%"=="%PC98DSK11%" exit /b
if /I "%PC98DSK%"=="%PC98DSK12%" exit /b
if /I "%PC98DSK%"=="%PC98DSK13%" exit /b
if /I "%PC98DSK%"=="%PC98DSK14%" exit /b
if /I "%PC98DSK%"=="%PC98DSK15%" exit /b
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME0=%PC98DSK%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME0=%PC98DSK2%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME1=%PC98DSK3%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME1=%PC98DSK4%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME2=%PC98DSK5%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME2=%PC98DSK6%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME3=%PC98DSK7%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME3=%PC98DSK8%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME4=%PC98DSK9%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME4=%PC98DSK10%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME5=%PC98DSK11%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME5=%PC98DSK12%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME6=%PC98DSK13%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME6=%PC98DSK14%
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD2NAME7=%PC98DSK15%
"%GBC%\inifile.exe" "np21nt.ini" [NekoProject21] FDFolder=%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%
:HDINJ
if "%PC98HDD%" neq "" "%GBC%\fart.exe" "*.bat" [DSK1] --remove
if "%PC98HDD%" neq "" "%GBC%\fart.exe" "*.bat" [DSK2] --remove
"%GBC%\inifile.exe" "np21nt.ini" [NekoProject21] HDD1FILE=%PC98HDD%
"%GBC%\inifile.exe" "np21nt.ini" [NekoProject21] HDFolder=%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%
goto :pc98end
:disking
if /I "%PC98DSK1%"=="%PC98DSK10%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK11%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK12%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK13%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK14%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK15%" exit /b
"%GBC%\inifile.exe" "np21nt.ini" [NP2 tool] FD1NAME0=%GBG%\%GAM%\%CONS%\%PC98%\%CSTM%\%PC98DSK1%
exit /b
:pc98end
if "%PC98DSK2%"=="" "%GBC%\fart.exe" "*.bat" [DSK2] --remove
if "%PC98DSK1%" neq "" "%GBC%\fart.exe" "*.bat" [DSK] "%PC98DSK1%"
if "%PC98DSK2%" neq "" "%GBC%\fart.exe" "*.bat" [DSK2] "%PC98DSK2%"
if "%PC98DSK%" neq "" "%GBC%\fart.exe" "*.bat" [DSK] "%PC98DSK%"