if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
SET APL2EDSK=
SET APL2EDSK1=
SET APL2EDSK2=
SET APL2EDSK3=
SET APL2EDSK4=
SET DISKIMGT=
SET DISKIMG1=
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%"') do (
if /I "%%~xa"==".bin" SET APL2EDSK=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK=%%~a
if /I "%%~xa"==".do" SET APL2EDSK=%%~a
if /I "%%~xa"==".po" SET APL2EDSK=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK=%%~a
if /I "%%~xa"==".hdv" SET DISKIMG1=%%~a
if /I "%%~xa"==".hdv" SET DISKIMGT=1
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Tape A*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*TapeA*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Tape B*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*TapeB*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Disk A*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*DiskA*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Disk B*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*DiskB*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Side 1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Side1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Side 2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Side2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Side A*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*SideA*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Side B*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*SideB*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Tape 1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a

if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Tape1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Tape 2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%\*Tape2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)

goto :injecAPL2Es

:injecAPL2Es
if "%DISKIIMGT%"=="" "%GBC%\fart.exe" "PREPREF.cmd" [HARDDISK] 0
if "%DISKIIMGT%"=="" "%GBC%\fart.exe" "PREPREF.cmd" [ROMP] --remove
if "%DISKIIMGT%"=="" "%GBC%\fart.exe" "PREPREF.cmd" [DISKIMG1] --remove
if "%DISKIIMGT%"=="" "%GBC%\fart.exe" "PREPREF.cmd" [DISKIMG2] --remove
if "%DISKIIMGT%"=="" goto :INJECT

"%GBC%\fart.exe" "PREPREF.cmd" [HARDDISK] 1
"%GBC%\fart.exe" "PREPREF.cmd" [ROMP] "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%"
"%GBC%\fart.exe" "PREPREF.cmd" [DISKIMG1] "%DISKIMG1%"
"%GBC%\fart.exe" "PREPREF.cmd" [DISKIMG2] --remove

:INJECT
if "%APL2EDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" "REM REG" "REG"
if "%APL2EDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [-d2] " -d2"
if "%APL2EDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [DISK2] "%APL2EDSK2%"
if "%APL2EDSK2%"=="" "%GBC%\fart.exe" "*.bat" "[-d2] [DISK2]" --remove
goto :APL2Eend

:APL2Eend
exit /b