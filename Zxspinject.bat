if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
SET ZXSPCHDD=
SET ZXSPCDSK=
SET ZXSPCDSK1=
SET ZXSPCDSK2=
SET ZXSPCDSK3=
SET ZXSPCDSK4=
SET BOOTDSK=

for /f "delims=" %%a in ('dir /b /a-d "*boot*.sna" "*boot*.dsk" "*boot*.szx" "*boot*.tap" "*boot*.tzx" "*boot*.bin" "*boot*.zip" "*boot*.blk" "*boot*.csw" "*boot*.z80" "*boot*.trd" "*boot*.scl" "*boot*.rzx"') do (
SET BOOTDSK=%%~a
)
if "%BOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*boot*.sna" "*boot*.dsk" "*boot*.szx" "*boot*.tap" "*boot*.tzx" "*boot*.bin" "*boot*.zip" "*boot*.blk" "*boot*.csw" "*boot*.z80" "*boot*.trd" "*boot*.scl" "*boot*.rzx"') do (
SET BOOTDSK=%%~a
)
if "%BOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*boot_disk*.sna" "*boot_disk*.dsk" "*boot_disk*.szx" "*boot_disk*.tap" "*boot_disk*.tzx" "*boot_disk*.bin" "*boot_disk*.zip" "*boot_disk*.blk" "*boot_disk*.csw" "*boot_disk*.z80" "*boot_disk*.trd" "*boot_disk*.scl" "*boot_disk*.rzx"') do (
SET BOOTDSK=%%~a
)
if "%BOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*boot disk*.sna" "*boot disk*.dsk" "*boot disk*.szx" "*boot disk*.tap" "*boot disk*.tzx" "*boot disk*.bin" "*boot disk*.zip" "*boot disk*.blk" "*boot disk*.csw" "*boot disk*.z80" "*boot disk*.trd" "*boot disk*.scl" "*boot disk*.rzx"') do (
SET BOOTDSK=%%~a
)
if "%BOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*bootdisk*.sna" "*bootdisk*.dsk" "*bootdisk*.szx" "*bootdisk*.tap" "*bootdisk*.tzx" "*bootdisk*.bin" "*bootdisk*.zip" "*bootdisk*.blk" "*bootdisk*.csw" "*bootdisk*.z80" "*bootdisk*.trd" "*bootdisk*.scl" "*bootdisk*.rzx"') do (
SET BOOTDSK=%%~a
)
if "%BOOTDSK%" NEQ "" goto :TAPE2

for /f "delims=" %%a in ('dir /b /a-d "*Disk 1*.sna" "*Disk 1*.dsk" "*Disk 1*.szx" "*Disk 1*.tap" "*Disk 1*.tzx" "*Disk 1*.bin" "*Disk 1*.zip" "*Disk 1*.blk" "*Disk 1*.csw" "*Disk 1*.z80" "*Disk 1*.trd" "*Disk 1*.scl" "*Disk 1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape1*.sna" "*Tape1*.dsk" "*Tape1*.szx" "*Tape1*.tap" "*Tape1*.tzx" "	*Tape1*.bin" "*Tape1*.zip" "*Tape1*.blk" "*Tape1*.csw" "*Tape1*.z80" "*Tape1*.trd" "*Tape1*.scl" "*Tape1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk_1*.sna" "*Disk_1*.dsk" "*Disk_1*.szx" "*Disk_1*.tap" "*Disk_1*.tzx" "*Disk_1*.bin" "*Disk_1*.zip" "*Disk_1*.blk" "*Disk_1*.csw" "*Disk_1*.z80" "*Disk_1*.trd" "*Disk_1*.scl" "*Disk_1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*DiskA*.sna" "*DiskA*.dsk" "*DiskA*.szx" "*DiskA*.tap" "*DiskA*.tzx" "*DiskA*.bin" "*DiskA*.zip" "*DiskA*.blk" "*DiskA*.csw" "*DiskA*.z80" "*DiskA*.trd" "*DiskA*.scl" "*DiskA*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk1*.sna" "*Disk1*.dsk" "*Disk1*.szx" "*Disk1*.tap" "*Disk1*.tzx" "*Disk1*.bin" "*Disk1*.zip" "*Disk1*.blk" "*Disk1*.csw" "*Disk1*.z80" "*Disk1*.trd" "*Disk1*.scl" "*Disk1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side1*.sna" "*Side1*.dsk" "*Side1*.szx" "*Side1*.tap" "*Side1*.tzx" "*Side1*.bin" "*Side1*.zip" "*Side1*.blk" "*Side1*.csw" "*Side1*.z80" "*Side1*.trd" "*Side1*.scl" "*Side1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side_1*.sna" "*Side_1*.dsk" "*Side_1*.szx" "*Side_1*.tap" "*Side_1*.tzx" "*Side_1*.bin" "*Side_1*.zip" "*Side_1*.blk" "*Side_1*.csw" "*Side_1*.z80" "*Side_1*.trd" "*Side_1*.scl" "*Side_1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side 1*.sna" "*Side 1*.dsk" "*Side 1*.szx" "*Side 1*.tap" "*Side 1*.tzx" "*Side 1*.bin" "*Side 1*.zip" "*Side 1*.blk" "*Side 1*.csw" "*Side 1*.z80" "*Side 1*.trd" "*Side 1*.scl" "*Side 1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape_A*.sna" "*Tape_A*.dsk" "*Tape_A*.szx" "*Tape_A*.tap" "*Tape_A*.tzx" "*Tape_A*.bin" "*Tape_A*.zip" "*Tape_A*.blk" "*Tape_A*.csw" "*Tape_A*.z80" "*Tape_A*.trd" "*Tape_A*.scl" "*Tape_A*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape A*.sna" "*Tape A*.dsk" "*Tape A*.szx" "*Tape A*.tap" "*Tape A*.tzx" "*Tape A*.bin" "*Tape A*.zip" "*Tape A*.blk" "*Tape A*.csw" "*Tape A*.z80" "*Tape A*.trd" "*Tape A*.scl" "*Tape A*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*TapeA*.sna" "*TapeA*.dsk" "*TapeA*.szx" "*TapeA*.tap" "*TapeA*.tzx" "*TapeA*.bin" "*TapeA*.zip" "*TapeA*.blk" "*TapeA*.csw" "*TapeA*.z80" "*TapeA*.trd" "*TapeA*.scl" "*TapeA*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape_1*.sna" "*Tape_1*.dsk" "*Tape_1*.szx" "*Tape_1*.tap" "*Tape_1*.tzx" "*Tape_1*.bin" "*Tape_1*.zip" "*Tape_1*.blk" "*Tape_1*.csw" "*Tape_1*.z80" "*Tape_1*.trd" "*Tape_1*.scl" "*Tape_1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape 1*.sna" "*Tape 1*.dsk" "*Tape 1*.szx" "*Tape 1*.tap" "*Tape 1*.tzx" "*Tape 1*.bin" "*Tape 1*.zip" "*Tape 1*.blk" "*Tape 1*.csw" "*Tape 1*.z80" "*Tape 1*.trd" "*Tape 1*.scl" "*Tape 1*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*SideA*.sna" "*SideA*.dsk" "*SideA*.szx" "*SideA*.tap" "*SideA*.tzx" "*SideA*.bin" "*SideA*.zip" "*SideA*.blk" "*SideA*.csw" "*SideA*.z80" "*SideA*.trd" "*SideA*.scl" "*SideA*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side_A*.sna" "*Side_A*.dsk" "*Side_A*.szx" "*Side_A*.tap" "*Side_A*.tzx" "*Side_A*.bin" "*Side_A*.zip" "*Side_A*.blk" "*Side_A*.csw" "*Side_A*.z80" "*Side_A*.trd" "*Side_A*.scl" "*Side_A*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side A*.sna" "*Side A*.dsk" "*Side A*.szx" "*Side A*.tap" "*Side A*.tzx" "*Side A*.bin" "*Side A*.zip" "*Side A*.blk" "*Side A*.csw" "*Side A*.z80" "*Side A*.trd" "*Side A*.scl" "*Side A*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk_A*.sna" "*Disk_A*.dsk" "*Disk_A*.szx" "*Disk_A*.tap" "*Disk_A*.tzx" "*Disk_A*.bin" "*Disk_A*.zip" "*Disk_A*.blk" "*Disk_A*.csw" "*Disk_A*.z80" "*Disk_A*.trd" "*Disk_A*.scl" "*Disk_A*.rzx"') do SET ZXSPCDSK1=%%~a
if "%ZXSPCDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk A*.sna" "*Disk A*.dsk" "*Disk A*.szx" "*Disk A*.tap" "*Disk A*.tzx" "*Disk A*.bin" "*Disk A*.zip" "*Disk A*.blk" "*Disk A*.csw" "*Disk A*.z80" "*Disk A*.trd" "*Disk A*.scl" "*Disk A*.rzx"') do SET ZXSPCDSK1=%%~a

for /f "delims=" %%a in ('dir /b /a-d "*Disk 2*.sna" "*Disk 2*.dsk" "*Disk 2*.szx" "*Disk 2*.tap" "*Disk 2*.tzx" "*Disk 2*.bin" "*Disk 2*.zip" "*Disk 2*.blk" "*Disk 2*.csw" "*Disk 2*.z80" "*Disk 2*.trd" "*Disk 2*.scl" "*Disk 2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*TAPE3*.sna" "*TAPE3*.dsk" "*TAPE3*.szx" "*TAPE3*.tap" "*TAPE3*.tzx" "*TAPE3*.bin" "*TAPE3*.zip" "*TAPE3*.blk" "*TAPE3*.csw" "*TAPE3*.z80" "*TAPE3*.trd" "*TAPE3*.scl" "*TAPE3*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk_2*.sna" "*Disk_2*.dsk" "*Disk_2*.szx" "*Disk_2*.tap" "*Disk_2*.tzx" "*Disk_2*.bin" "*Disk_2*.zip" "*Disk_2*.blk" "*Disk_2*.csw" "*Disk_2*.z80" "*Disk_2*.trd" "*Disk_2*.scl" "*Disk_2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*DiskB*.sna" "*DiskB*.dsk" "*DiskB*.szx" "*DiskB*.tap" "*DiskB*.tzx" "*DiskB*.bin" "*DiskB*.zip" "*DiskB*.blk" "*DiskB*.csw" "*DiskB*.z80" "*DiskB*.trd" "*DiskB*.scl" "*DiskB*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk2*.sna" "*Disk2*.dsk" "*Disk2*.szx" "*Disk2*.tap" "*Disk2*.tzx" "*Disk2*.bin" "*Disk2*.zip" "*Disk2*.blk" "*Disk2*.csw" "*Disk2*.z80" "*Disk2*.trd" "*Disk2*.scl" "*Disk2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side2*.sna" "*Side2*.dsk" "*Side2*.szx" "*Side2*.tap" "*Side2*.tzx" "*Side2*.bin" "*Side2*.zip" "*Side2*.blk" "*Side2*.csw" "*Side2*.z80" "*Side2*.trd" "*Side2*.scl" "*Side2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side_2*.sna" "*Side_2*.dsk" "*Side_2*.szx" "*Side_2*.tap" "*Side_2*.tzx" "*Side_2*.bin" "*Side_2*.zip" "*Side_2*.blk" "*Side_2*.csw" "*Side_2*.z80" "*Side_2*.trd" "*Side_2*.scl" "*Side_2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side 2*.sna" "*Side 2*.dsk" "*Side 2*.szx" "*Side 2*.tap" "*Side 2*.tzx" "*Side 2*.bin" "*Side 2*.zip" "*Side 2*.blk" "*Side 2*.csw" "*Side 2*.z80" "*Side 2*.trd" "*Side 2*.scl" "*Side 2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape_B*.sna" "*Tape_B*.dsk" "*Tape_B*.szx" "*Tape_B*.tap" "*Tape_B*.tzx" "*Tape_B*.bin" "*Tape_B*.zip" "*Tape_B*.blk" "*Tape_B*.csw" "*Tape_B*.z80" "*Tape_B*.trd" "*Tape_B*.scl" "*Tape_B*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape B*.sna" "*Tape B*.dsk" "*Tape B*.szx" "*Tape B*.tap" "*Tape B*.tzx" "*Tape B*.bin" "*Tape B*.zip" "*Tape B*.blk" "*Tape B*.csw" "*Tape B*.z80" "*Tape B*.trd" "*Tape B*.scl" "*Tape B*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*TapeB*.sna" "*TapeB*.dsk" "*TapeB*.szx" "*TapeB*.tap" "*TapeB*.tzx" "*TapeB*.bin" "*TapeB*.zip" "*TapeB*.blk" "*TapeB*.csw" "*TapeB*.z80" "*TapeB*.trd" "*TapeB*.scl" "*TapeB*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape_2*.sna" "*Tape_2*.dsk" "*Tape_2*.szx" "*Tape_2*.tap" "*Tape_2*.tzx" "*Tape_2*.bin" "*Tape_2*.zip" "*Tape_2*.blk" "*Tape_2*.csw" "*Tape_2*.z80" "*Tape_2*.trd" "*Tape_2*.scl" "*Tape_2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape 2*.sna" "*Tape 2*.dsk" "*Tape 2*.szx" "*Tape 2*.tap" "*Tape 2*.tzx" "*Tape 2*.bin" "*Tape 2*.zip" "*Tape 2*.blk" "*Tape 2*.csw" "*Tape 2*.z80" "*Tape 2*.trd" "*Tape 2*.scl" "*Tape 2*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*SideB*.sna" "*SideB*.dsk" "*SideB*.szx" "*SideB*.tap" "*SideB*.tzx" "*SideB*.bin" "*SideB*.zip" "*SideB*.blk" "*SideB*.csw" "*SideB*.z80" "*SideB*.trd" "*SideB*.scl" "*SideB*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side_B*.sna" "*Side_B*.dsk" "*Side_B*.szx" "*Side_B*.tap" "*Side_B*.tzx" "*Side_B*.bin" "*Side_B*.zip" "*Side_B*.blk" "*Side_B*.csw" "*Side_B*.z80" "*Side_B*.trd" "*Side_B*.scl" "*Side_B*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side B*.sna" "*Side B*.dsk" "*Side B*.szx" "*Side B*.tap" "*Side B*.tzx" "*Side B*.bin" "*Side B*.zip" "*Side B*.blk" "*Side B*.csw" "*Side B*.z80" "*Side B*.trd" "*Side B*.scl" "*Side B*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk_B*.sna" "*Disk_B*.dsk" "*Disk_B*.szx" "*Disk_B*.tap" "*Disk_B*.tzx" "*Disk_B*.bin" "*Disk_B*.zip" "*Disk_B*.blk" "*Disk_B*.csw" "*Disk_B*.z80" "*Disk_B*.trd" "*Disk_B*.scl" "*Disk_B*.rzx"') do SET ZXSPCDSK2=%%~a
if "%ZXSPCDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk B*.sna" "*Disk B*.dsk" "*Disk B*.szx" "*Disk B*.tap" "*Disk B*.tzx" "*Disk B*.bin" "*Disk B*.zip" "*Disk B*.blk" "*Disk B*.csw" "*Disk B*.z80" "*Disk B*.trd" "*Disk B*.scl" "*Disk B*.rzx"') do SET ZXSPCDSK2=%%~a

:TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk 3*.sna" "*Disk 3*.dsk" "*Disk 3*.szx" "*Disk 3*.tap" "*Disk 3*.tzx" "*Disk 3*.bin" "*Disk 3*.zip" "*Disk 3*.blk" "*Disk 3*.csw" "*Disk 3*.z80" "*Disk 3*.trd" "*Disk 3*.scl" "*Disk 3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape3*.sna" "*Tape3*.dsk" "*Tape3*.szx" "*Tape3*.tap" "*Tape3*.tzx" "*Tape3*.bin" "*Tape3*.zip" "*Tape3*.blk" "*Tape3*.csw" "*Tape3*.z80" "*Tape3*.trd" "*Tape3*.scl" "*Tape3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk_3*.sna" "*Disk_3*.dsk" "*Disk_3*.szx" "*Disk_3*.tap" "*Disk_3*.tzx" "*Disk_3*.bin" "*Disk_3*.zip" "*Disk_3*.blk" "*Disk_3*.csw" "*Disk_3*.z80" "*Disk_3*.trd" "*Disk_3*.scl" "*Disk_3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*DiskC*.sna" "*DiskC*.dsk" "*DiskC*.szx" "*DiskC*.tap" "*DiskC*.tzx" "*DiskC*.bin" "*DiskC*.zip" "*DiskC*.blk" "*DiskC*.csw" "*DiskC*.z80" "*DiskC*.trd" "*DiskC*.scl" "*DiskC*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk3*.sna" "*Disk3*.dsk" "*Disk3*.szx" "*Disk3*.tap" "*Disk3*.tzx" "*Disk3*.bin" "*Disk3*.zip" "*Disk3*.blk" "*Disk3*.csw" "*Disk3*.z80" "*Disk3*.trd" "*Disk3*.scl" "*Disk3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side3*.sna" "*Side3*.dsk" "*Side3*.szx" "*Side3*.tap" "*Side3*.tzx" "*Side3*.bin" "*Side3*.zip" "*Side3*.blk" "*Side3*.csw" "*Side3*.z80" "*Side3*.trd" "*Side3*.scl" "*Side3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side_3*.sna" "*Side_3*.dsk" "*Side_3*.szx" "*Side_3*.tap" "*Side_3*.tzx" "*Side_3*.bin" "*Side_3*.zip" "*Side_3*.blk" "*Side_3*.csw" "*Side_3*.z80" "*Side_3*.trd" "*Side_3*.scl" "*Side_3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side 3*.sna" "*Side 3*.dsk" "*Side 3*.szx" "*Side 3*.tap" "*Side 3*.tzx" "*Side 3*.bin" "*Side 3*.zip" "*Side 3*.blk" "*Side 3*.csw" "*Side 3*.z80" "*Side 3*.trd" "*Side 3*.scl" "*Side 3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape_C*.sna" "*Tape_C*.dsk" "*Tape_C*.szx" "*Tape_C*.tap" "*Tape_C*.tzx" "*Tape_C*.bin" "*Tape_C*.zip" "*Tape_C*.blk" "*Tape_C*.csw" "*Tape_C*.z80" "*Tape_C*.trd" "*Tape_C*.scl" "*Tape_C*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape C*.sna" "*Tape C*.dsk" "*Tape C*.szx" "*Tape C*.tap" "*Tape C*.tzx" "*Tape C*.bin" "*Tape C*.zip" "*Tape C*.blk" "*Tape C*.csw" "*Tape C*.z80" "*Tape C*.trd" "*Tape C*.scl" "*Tape C*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*TapeC*.sna" "*TapeC*.dsk" "*TapeC*.szx" "*TapeC*.tap" "*TapeC*.tzx" "*TapeC*.bin" "*TapeC*.zip" "*TapeC*.blk" "*TapeC*.csw" "*TapeC*.z80" "*TapeC*.trd" "*TapeC*.scl" "*TapeC*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape_3*.sna" "*Tape_3*.dsk" "*Tape_3*.szx" "*Tape_3*.tap" "*Tape_3*.tzx" "*Tape_3*.bin" "*Tape_3*.zip" "*Tape_3*.blk" "*Tape_3*.csw" "*Tape_3*.z80" "*Tape_3*.trd" "*Tape_3*.scl" "*Tape_3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape 3*.sna" "*Tape 3*.dsk" "*Tape 3*.szx" "*Tape 3*.tap" "*Tape 3*.tzx" "*Tape 3*.bin" "*Tape 3*.zip" "*Tape 3*.blk" "*Tape 3*.csw" "*Tape 3*.z80" "*Tape 3*.trd" "*Tape 3*.scl" "*Tape 3*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*SideC*.sna" "*SideC*.dsk" "*SideC*.szx" "*SideC*.tap" "*SideC*.tzx" "*SideC*.bin" "*SideC*.zip" "*SideC*.blk" "*SideC*.csw" "*SideC*.z80" "*SideC*.trd" "*SideC*.scl" "*SideC*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side_C*.sna" "*Side_C*.dsk" "*Side_C*.szx" "*Side_C*.tap" "*Side_C*.tzx" "*Side_C*.bin" "*Side_C*.zip" "*Side_C*.blk" "*Side_C*.csw" "*Side_C*.z80" "*Side_C*.trd" "*Side_C*.scl" "*Side_C*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side C*.sna" "*Side C*.dsk" "*Side C*.szx" "*Side C*.tap" "*Side C*.tzx" "*Side C*.bin" "*Side C*.zip" "*Side C*.blk" "*Side C*.csw" "*Side C*.z80" "*Side C*.trd" "*Side C*.scl" "*Side C*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk_C*.sna" "*Disk_C*.dsk" "*Disk_C*.szx" "*Disk_C*.tap" "*Disk_C*.tzx" "*Disk_C*.bin" "*Disk_C*.zip" "*Disk_C*.blk" "*Disk_C*.csw" "*Disk_C*.z80" "*Disk_C*.trd" "*Disk_C*.scl" "*Disk_C*.rzx"') do SET ZXSPCDSK3=%%~a
if "%ZXSPCDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk C*.sna" "*Disk C*.dsk" "*Disk C*.szx" "*Disk C*.tap" "*Disk C*.tzx" "*Disk C*.bin" "*Disk C*.zip" "*Disk C*.blk" "*Disk C*.csw" "*Disk C*.z80" "*Disk C*.trd" "*Disk C*.scl" "*Disk C*.rzx"') do SET ZXSPCDSK3=%%~a

:DISKAC
if "%ZXSPCDSK1%" NEQ "" for %%a in ("%ZXSPCDSK1%") do SET ZXSPCDSK=%%~a
if "%BOOTDISK%" NEQ "" for %%a in ("%BOOTDISK%") do SET ZXSPCDSK=%%~a
if "%BOOTDISK%" NEQ "" for %%a in ("%BOOTDISK%") do SET ZXSPCDSK=%%~a
if "%ZXSPCDSK%" NEQ "" goto :FNDGRP 
for /f "delims=" %%a in ('dir /b /a-d "*.sna" "*.dsk" "*.szx" "*.tap" "*.tzx" "*.bin" "*.zip" "*.blk" "*.csw" "*.z80" "*.trd" "*.scl" "*.rzx"') do SET ZXSPCDSK=%%~a

:FNDGRP
"%GBC%\fart.exe" "Default.spincfg" [SPINDIR] "%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%"
"%GBC%\inifile.exe" "spin.ini" [MRU List] File=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\%ZXSPCDSK%
"%GBC%\inifile.exe" "spin.ini" [MRU Tapes] File=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\%ZXSPCDSK%
"%GBC%\inifile.exe" "spin.ini" [ConfigFolder] ConfigFolder=%GBE%\%EMUZ%\%ZXSPIN%
"%GBC%\inifile.exe" "spin.ini" [Configurations] LastConfiguration=%GBE%\%EMUZ%\%ZXSPIN%\Default.spincfg
"%GBC%\inifile.exe" "spin.ini" [Configurations] 1=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\Default.spincfg
"%GBC%\inifile.exe" "spin.ini" [Configurations] 2=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\Default.spincfg
if "%ZXSPCDSK2%" NEQ "" "%GBC%\inifile.exe" "spin.ini" [MRU List] File1=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\%ZXSPCDSK2%
if "%ZXSPCDSK2%" NEQ "" "%GBC%\inifile.exe" "spin.ini" [MRU Tapes] File1=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\%ZXSPCDSK2%
if "%ZXSPCDSK2%" NEQ "" "%GBC%\inifile.exe" "spin.ini" [MRU List] File2=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\%ZXSPCDSK3%
if "%ZXSPCDSK3%" NEQ "" "%GBC%\inifile.exe" "spin.ini" [MRU Tapes] File2=%GBG%\%GAM%\%CONS%\%ZXSP%\%CSTM%\%ZXSPCDSK3%
for /f "delims=" %%a in ('dir /b /a-d "*.hdf"') do SET ZXSPCHDD=%%~a
if "%ZXSPHDD%" NEQ "" "%GBC%\fart.exe" "Default.spincfg" [HDDEN] 1
if "%ZXSPHDD%" NEQ "" "%GBC%\fart.exe" "Default.spincfg" [HDD] "%ZXSPCHDD%"
if "%ZXSPHDD%"=="" "%GBC%\fart.exe" "Default.spincfg" [HDD] --remove

goto :ZXSPCDSKend

:ZXSPCDSKend
for %%a in ("%ZXSPCDSK%") do set BATEXTN=%%~xa
exit /b



