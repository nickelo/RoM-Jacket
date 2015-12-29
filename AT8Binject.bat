SET AT8BHDD=
SET AT8BDSK=
SET AT8BDSK1=
SET AT8BDSK2=
SET AT8BDSK3=
SET AT8BDSK4=
SET AT8BBOOTDSK=

:DSKSHFT
set AT8BDSK%NUM%+=1

for /f "delims=" %%a in ('dir /b /a-d "*boot*.atr" "*boot*.rom" "*boot*.bas" "*boot*.cas" "*boot*.xex" "*boot*.bin" "*boot*.zip" "*boot*.wav" "*boot*.atx" "*boot*.com" "*boot*.obx" "*boot*.xfd" "*boot*.pro"') do (
SET AT8BBOOTDSK=%%~a
)
if "%AT8BBOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*boot*.atr" "*boot*.rom" "*boot*.bas" "*boot*.cas" "*boot*.xex" "*boot*.bin" "*boot*.zip" "*boot*.wav" "*boot*.atx" "*boot*.com" "*boot*.obx" "*boot*.xfd" "*boot*.pro"') do (
SET AT8BBOOTDSK=%%~a
)
if "%AT8BBOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*boot_disk*.atr" "*boot_disk*.rom" "*boot_disk*.bas" "*boot_disk*.cas" "*boot_disk*.xex" "*boot_disk*.bin" "*boot_disk*.zip" "*boot_disk*.wav" "*boot_disk*.atx" "*boot_disk*.com" "*boot_disk*.obx" "*boot_disk*.xfd" "*boot_disk*.pro"') do (
SET AT8BBOOTDSK=%%~a
)
if "%AT8BBOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*boot disk*.atr" "*boot disk*.rom" "*boot disk*.bas" "*boot disk*.cas" "*boot disk*.xex" "*boot disk*.bin" "*boot disk*.zip" "*boot disk*.wav" "*boot disk*.atx" "*boot disk*.com" "*boot disk*.obx" "*boot disk*.xfd" "*boot disk*.pro"') do (
SET AT8BBOOTDSK=%%~a
)
if "%AT8BBOOTDSK%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*bootdisk*.atr" "*bootdisk*.rom" "*bootdisk*.bas" "*bootdisk*.cas" "*bootdisk*.xex" "*bootdisk*.bin" "*bootdisk*.zip" "*bootdisk*.wav" "*bootdisk*.atx" "*bootdisk*.com" "*bootdisk*.obx" "*bootdisk*.xfd" "*bootdisk*.pro"') do (
SET AT8BBOOTDSK=%%~a
)
if "%AT8BBOOTDSK%" NEQ "" goto :TAPE2

for /f "delims=" %%a in ('dir /b /a-d "*Disk 1*.atr" "*Disk 1*.rom" "*Disk 1*.bas" "*Disk 1*.cas" "*Disk 1*.xex" "*Disk 1*.bin" "*Disk 1*.zip" "*Disk 1*.wav" "*Disk 1*.atx" "*Disk 1*.com" "*Disk 1*.obx" "*Disk 1*.xfd" "*Disk 1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape1*.atr" "*Tape1*.rom" "*Tape1*.bas" "*Tape1*.cas" "*Tape1*.xex" "*Tape1*.bin" "*Tape1*.zip" "*Tape1*.wav" "*Tape1*.atx" "*Tape1*.com" "*Tape1*.obx" "*Tape1*.xfd" "*Tape1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk_1*.atr" "*Disk_1*.rom" "*Disk_1*.bas" "*Disk_1*.cas" "*Disk_1*.xex" "*Disk_1*.bin" "*Disk_1*.zip" "*Disk_1*.wav" "*Disk_1*.atx" "*Disk_1*.com" "*Disk_1*.obx" "*Disk_1*.xfd" "*Disk_1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*DiskA*.atr" "*DiskA*.rom" "*DiskA*.bas" "*DiskA*.cas" "*DiskA*.xex" "*DiskA*.bin" "*DiskA*.zip" "*DiskA*.wav" "*DiskA*.atx" "*DiskA*.com" "*DiskA*.obx" "*DiskA*.xfd" "*DiskA*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk1*.atr" "*Disk1*.rom" "*Disk1*.bas" "*Disk1*.cas" "*Disk1*.xex" "*Disk1*.bin" "*Disk1*.zip" "*Disk1*.wav" "*Disk1*.atx" "*Disk1*.com" "*Disk1*.obx" "*Disk1*.xfd" "*Disk1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side1*.atr" "*Side1*.rom" "*Side1*.bas" "*Side1*.cas" "*Side1*.xex" "*Side1*.bin" "*Side1*.zip" "*Side1*.wav" "*Side1*.atx" "*Side1*.com" "*Side1*.obx" "*Side1*.xfd" "*Side1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side_1*.atr" "*Side_1*.rom" "*Side_1*.bas" "*Side_1*.cas" "*Side_1*.xex" "*Side_1*.bin" "*Side_1*.zip" "*Side_1*.wav" "*Side_1*.atx" "*Side_1*.com" "*Side_1*.obx" "*Side_1*.xfd" "*Side_1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side 1*.atr" "*Side 1*.rom" "*Side 1*.bas" "*Side 1*.cas" "*Side 1*.xex" "*Side 1*.bin" "*Side 1*.zip" "*Side 1*.wav" "*Side 1*.atx" "*Side 1*.com" "*Side 1*.obx" "*Side 1*.xfd" "*Side 1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape_A*.atr" "*Tape_A*.rom" "*Tape_A*.bas" "*Tape_A*.cas" "*Tape_A*.xex" "*Tape_A*.bin" "*Tape_A*.zip" "*Tape_A*.wav" "*Tape_A*.atx" "*Tape_A*.com" "*Tape_A*.obx" "*Tape_A*.xfd" "*Tape_A*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape A*.atr" "*Tape A*.rom" "*Tape A*.bas" "*Tape A*.cas" "*Tape A*.xex" "*Tape A*.bin" "*Tape A*.zip" "*Tape A*.wav" "*Tape A*.atx" "*Tape A*.com" "*Tape A*.obx" "*Tape A*.xfd" "*Tape A*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*TapeA*.atr" "*TapeA*.rom" "*TapeA*.bas" "*TapeA*.cas" "*TapeA*.xex" "*TapeA*.bin" "*TapeA*.zip" "*TapeA*.wav" "*TapeA*.atx" "*TapeA*.com" "*TapeA*.obx" "*TapeA*.xfd" "*TapeA*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape_1*.atr" "*Tape_1*.rom" "*Tape_1*.bas" "*Tape_1*.cas" "*Tape_1*.xex" "*Tape_1*.bin" "*Tape_1*.zip" "*Tape_1*.wav" "*Tape_1*.atx" "*Tape_1*.com" "*Tape_1*.obx" "*Tape_1*.xfd" "*Tape_1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Tape 1*.atr" "*Tape 1*.rom" "*Tape 1*.bas" "*Tape 1*.cas" "*Tape 1*.xex" "*Tape 1*.bin" "*Tape 1*.zip" "*Tape 1*.wav" "*Tape 1*.atx" "*Tape 1*.com" "*Tape 1*.obx" "*Tape 1*.xfd" "*Tape 1*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*SideA*.atr" "*SideA*.rom" "*SideA*.bas" "*SideA*.cas" "*SideA*.xex" "*SideA*.bin" "*SideA*.zip" "*SideA*.wav" "*SideA*.atx" "*SideA*.com" "*SideA*.obx" "*SideA*.xfd" "*SideA*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side_A*.atr" "*Side_A*.rom" "*Side_A*.bas" "*Side_A*.cas" "*Side_A*.xex" "*Side_A*.bin" "*Side_A*.zip" "*Side_A*.wav" "*Side_A*.atx" "*Side_A*.com" "*Side_A*.obx" "*Side_A*.xfd" "*Side_A*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Side A*.atr" "*Side A*.rom" "*Side A*.bas" "*Side A*.cas" "*Side A*.xex" "*Side A*.bin" "*Side A*.zip" "*Side A*.wav" "*Side A*.atx" "*Side A*.com" "*Side A*.obx" "*Side A*.xfd" "*Side A*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk_A*.atr" "*Disk_A*.rom" "*Disk_A*.bas" "*Disk_A*.cas" "*Disk_A*.xex" "*Disk_A*.bin" "*Disk_A*.zip" "*Disk_A*.wav" "*Disk_A*.atx" "*Disk_A*.com" "*Disk_A*.obx" "*Disk_A*.xfd" "*Disk_A*.pro"') do SET AT8BDSK1=%%~a
if "%AT8BDSK1%" NEQ "" goto :TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk A*.atr" "*Disk A*.rom" "*Disk A*.bas" "*Disk A*.cas" "*Disk A*.xex" "*Disk A*.bin" "*Disk A*.zip" "*Disk A*.wav" "*Disk A*.atx" "*Disk A*.com" "*Disk A*.obx" "*Disk A*.xfd" "*Disk A*.pro"') do SET AT8BDSK1=%%~a

:TAPE2
for /f "delims=" %%a in ('dir /b /a-d "*Disk 2*.atr" "*Disk 2*.rom" "*Disk 2*.bas" "*Disk 2*.cas" "*Disk 2*.xex" "*Disk 2*.bin" "*Disk 2*.zip" "*Disk 2*.wav" "*Disk 2*.atx" "*Disk 2*.com" "*Disk 2*.obx" "*Disk 2*.xfd" "*Disk 2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*TAPE3*.atr" "*TAPE3*.rom" "*TAPE3*.bas" "*TAPE3*.cas" "*TAPE3*.xex" "*TAPE3*.bin" "*TAPE3*.zip" "*TAPE3*.wav" "*TAPE3*.atx" "*TAPE3*.com" "*TAPE3*.obx" "*TAPE3*.xfd" "*TAPE3*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk_2*.atr" "*Disk_2*.rom" "*Disk_2*.bas" "*Disk_2*.cas" "*Disk_2*.xex" "*Disk_2*.bin" "*Disk_2*.zip" "*Disk_2*.wav" "*Disk_2*.atx" "*Disk_2*.com" "*Disk_2*.obx" "*Disk_2*.xfd" "*Disk_2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*DiskB*.atr" "*DiskB*.rom" "*DiskB*.bas" "*DiskB*.cas" "*DiskB*.xex" "*DiskB*.bin" "*DiskB*.zip" "*DiskB*.wav" "*DiskB*.atx" "*DiskB*.com" "*DiskB*.obx" "*DiskB*.xfd" "*DiskB*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk2*.atr" "*Disk2*.rom" "*Disk2*.bas" "*Disk2*.cas" "*Disk2*.xex" "*Disk2*.bin" "*Disk2*.zip" "*Disk2*.wav" "*Disk2*.atx" "*Disk2*.com" "*Disk2*.obx" "*Disk2*.xfd" "*Disk2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side2*.atr" "*Side2*.rom" "*Side2*.bas" "*Side2*.cas" "*Side2*.xex" "*Side2*.bin" "*Side2*.zip" "*Side2*.wav" "*Side2*.atx" "*Side2*.com" "*Side2*.obx" "*Side2*.xfd" "*Side2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side_2*.atr" "*Side_2*.rom" "*Side_2*.bas" "*Side_2*.cas" "*Side_2*.xex" "*Side_2*.bin" "*Side_2*.zip" "*Side_2*.wav" "*Side_2*.atx" "*Side_2*.com" "*Side_2*.obx" "*Side_2*.xfd" "*Side_2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side 2*.atr" "*Side 2*.rom" "*Side 2*.bas" "*Side 2*.cas" "*Side 2*.xex" "*Side 2*.bin" "*Side 2*.zip" "*Side 2*.wav" "*Side 2*.atx" "*Side 2*.com" "*Side 2*.obx" "*Side 2*.xfd" "*Side 2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape_B*.atr" "*Tape_B*.rom" "*Tape_B*.bas" "*Tape_B*.cas" "*Tape_B*.xex" "*Tape_B*.bin" "*Tape_B*.zip" "*Tape_B*.wav" "*Tape_B*.atx" "*Tape_B*.com" "*Tape_B*.obx" "*Tape_B*.xfd" "*Tape_B*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape B*.atr" "*Tape B*.rom" "*Tape B*.bas" "*Tape B*.cas" "*Tape B*.xex" "*Tape B*.bin" "*Tape B*.zip" "*Tape B*.wav" "*Tape B*.atx" "*Tape B*.com" "*Tape B*.obx" "*Tape B*.xfd" "*Tape B*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*TapeB*.atr" "*TapeB*.rom" "*TapeB*.bas" "*TapeB*.cas" "*TapeB*.xex" "*TapeB*.bin" "*TapeB*.zip" "*TapeB*.wav" "*TapeB*.atx" "*TapeB*.com" "*TapeB*.obx" "*TapeB*.xfd" "*TapeB*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape_2*.atr" "*Tape_2*.rom" "*Tape_2*.bas" "*Tape_2*.cas" "*Tape_2*.xex" "*Tape_2*.bin" "*Tape_2*.zip" "*Tape_2*.wav" "*Tape_2*.atx" "*Tape_2*.com" "*Tape_2*.obx" "*Tape_2*.xfd" "*Tape_2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Tape 2*.atr" "*Tape 2*.rom" "*Tape 2*.bas" "*Tape 2*.cas" "*Tape 2*.xex" "*Tape 2*.bin" "*Tape 2*.zip" "*Tape 2*.wav" "*Tape 2*.atx" "*Tape 2*.com" "*Tape 2*.obx" "*Tape 2*.xfd" "*Tape 2*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*SideB*.atr" "*SideB*.rom" "*SideB*.bas" "*SideB*.cas" "*SideB*.xex" "*SideB*.bin" "*SideB*.zip" "*SideB*.wav" "*SideB*.atx" "*SideB*.com" "*SideB*.obx" "*SideB*.xfd" "*SideB*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side_B*.atr" "*Side_B*.rom" "*Side_B*.bas" "*Side_B*.cas" "*Side_B*.xex" "*Side_B*.bin" "*Side_B*.zip" "*Side_B*.wav" "*Side_B*.atx" "*Side_B*.com" "*Side_B*.obx" "*Side_B*.xfd" "*Side_B*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Side B*.atr" "*Side B*.rom" "*Side B*.bas" "*Side B*.cas" "*Side B*.xex" "*Side B*.bin" "*Side B*.zip" "*Side B*.wav" "*Side B*.atx" "*Side B*.com" "*Side B*.obx" "*Side B*.xfd" "*Side B*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk_B*.atr" "*Disk_B*.rom" "*Disk_B*.bas" "*Disk_B*.cas" "*Disk_B*.xex" "*Disk_B*.bin" "*Disk_B*.zip" "*Disk_B*.wav" "*Disk_B*.atx" "*Disk_B*.com" "*Disk_B*.obx" "*Disk_B*.xfd" "*Disk_B*.pro"') do SET AT8BDSK2=%%~a
if "%AT8BDSK2%" NEQ "" goto :TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk B*.atr" "*Disk B*.rom" "*Disk B*.bas" "*Disk B*.cas" "*Disk B*.xex" "*Disk B*.bin" "*Disk B*.zip" "*Disk B*.wav" "*Disk B*.atx" "*Disk B*.com" "*Disk B*.obx" "*Disk B*.xfd" "*Disk B*.pro"') do SET AT8BDSK2=%%~a

:TAPE3
for /f "delims=" %%a in ('dir /b /a-d "*Disk 3*.atr" "*Disk 3*.rom" "*Disk 3*.bas" "*Disk 3*.cas" "*Disk 3*.xex" "*Disk 3*.bin" "*Disk 3*.zip" "*Disk 3*.wav" "*Disk 3*.atx" "*Disk 3*.com" "*Disk 3*.obx" "*Disk 3*.xfd" "*Disk 3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape3*.atr" "*Tape3*.rom" "*Tape3*.bas" "*Tape3*.cas" "*Tape3*.xex" "*Tape3*.bin" "*Tape3*.zip" "*Tape3*.wav" "*Tape3*.atx" "*Tape3*.com" "*Tape3*.obx" "*Tape3*.xfd" "*Tape3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk_3*.atr" "*Disk_3*.rom" "*Disk_3*.bas" "*Disk_3*.cas" "*Disk_3*.xex" "*Disk_3*.bin" "*Disk_3*.zip" "*Disk_3*.wav" "*Disk_3*.atx" "*Disk_3*.com" "*Disk_3*.obx" "*Disk_3*.xfd" "*Disk_3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*DiskC*.atr" "*DiskC*.rom" "*DiskC*.bas" "*DiskC*.cas" "*DiskC*.xex" "*DiskC*.bin" "*DiskC*.zip" "*DiskC*.wav" "*DiskC*.atx" "*DiskC*.com" "*DiskC*.obx" "*DiskC*.xfd" "*DiskC*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk3*.atr" "*Disk3*.rom" "*Disk3*.bas" "*Disk3*.cas" "*Disk3*.xex" "*Disk3*.bin" "*Disk3*.zip" "*Disk3*.wav" "*Disk3*.atx" "*Disk3*.com" "*Disk3*.obx" "*Disk3*.xfd" "*Disk3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side3*.atr" "*Side3*.rom" "*Side3*.bas" "*Side3*.cas" "*Side3*.xex" "*Side3*.bin" "*Side3*.zip" "*Side3*.wav" "*Side3*.atx" "*Side3*.com" "*Side3*.obx" "*Side3*.xfd" "*Side3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side_3*.atr" "*Side_3*.rom" "*Side_3*.bas" "*Side_3*.cas" "*Side_3*.xex" "*Side_3*.bin" "*Side_3*.zip" "*Side_3*.wav" "*Side_3*.atx" "*Side_3*.com" "*Side_3*.obx" "*Side_3*.xfd" "*Side_3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side 3*.atr" "*Side 3*.rom" "*Side 3*.bas" "*Side 3*.cas" "*Side 3*.xex" "*Side 3*.bin" "*Side 3*.zip" "*Side 3*.wav" "*Side 3*.atx" "*Side 3*.com" "*Side 3*.obx" "*Side 3*.xfd" "*Side 3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape_C*.atr" "*Tape_C*.rom" "*Tape_C*.bas" "*Tape_C*.cas" "*Tape_C*.xex" "*Tape_C*.bin" "*Tape_C*.zip" "*Tape_C*.wav" "*Tape_C*.atx" "*Tape_C*.com" "*Tape_C*.obx" "*Tape_C*.xfd" "*Tape_C*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape C*.atr" "*Tape C*.rom" "*Tape C*.bas" "*Tape C*.cas" "*Tape C*.xex" "*Tape C*.bin" "*Tape C*.zip" "*Tape C*.wav" "*Tape C*.atx" "*Tape C*.com" "*Tape C*.obx" "*Tape C*.xfd" "*Tape C*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*TapeC*.atr" "*TapeC*.rom" "*TapeC*.bas" "*TapeC*.cas" "*TapeC*.xex" "*TapeC*.bin" "*TapeC*.zip" "*TapeC*.wav" "*TapeC*.atx" "*TapeC*.com" "*TapeC*.obx" "*TapeC*.xfd" "*TapeC*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape_3*.atr" "*Tape_3*.rom" "*Tape_3*.bas" "*Tape_3*.cas" "*Tape_3*.xex" "*Tape_3*.bin" "*Tape_3*.zip" "*Tape_3*.wav" "*Tape_3*.atx" "*Tape_3*.com" "*Tape_3*.obx" "*Tape_3*.xfd" "*Tape_3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Tape 3*.atr" "*Tape 3*.rom" "*Tape 3*.bas" "*Tape 3*.cas" "*Tape 3*.xex" "*Tape 3*.bin" "*Tape 3*.zip" "*Tape 3*.wav" "*Tape 3*.atx" "*Tape 3*.com" "*Tape 3*.obx" "*Tape 3*.xfd" "*Tape 3*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*SideC*.atr" "*SideC*.rom" "*SideC*.bas" "*SideC*.cas" "*SideC*.xex" "*SideC*.bin" "*SideC*.zip" "*SideC*.wav" "*SideC*.atx" "*SideC*.com" "*SideC*.obx" "*SideC*.xfd" "*SideC*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side_C*.atr" "*Side_C*.rom" "*Side_C*.bas" "*Side_C*.cas" "*Side_C*.xex" "*Side_C*.bin" "*Side_C*.zip" "*Side_C*.wav" "*Side_C*.atx" "*Side_C*.com" "*Side_C*.obx" "*Side_C*.xfd" "*Side_C*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Side C*.atr" "*Side C*.rom" "*Side C*.bas" "*Side C*.cas" "*Side C*.xex" "*Side C*.bin" "*Side C*.zip" "*Side C*.wav" "*Side C*.atx" "*Side C*.com" "*Side C*.obx" "*Side C*.xfd" "*Side C*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk_C*.atr" "*Disk_C*.rom" "*Disk_C*.bas" "*Disk_C*.cas" "*Disk_C*.xex" "*Disk_C*.bin" "*Disk_C*.zip" "*Disk_C*.wav" "*Disk_C*.atx" "*Disk_C*.com" "*Disk_C*.obx" "*Disk_C*.xfd" "*Disk_C*.pro"') do SET AT8BDSK3=%%~a
if "%AT8BDSK3%" NEQ "" goto :DISKAC
for /f "delims=" %%a in ('dir /b /a-d "*Disk C*.atr" "*Disk C*.rom" "*Disk C*.bas" "*Disk C*.cas" "*Disk C*.xex" "*Disk C*.bin" "*Disk C*.zip" "*Disk C*.wav" "*Disk C*.atx" "*Disk C*.com" "*Disk C*.obx" "*Disk C*.xfd" "*Disk C*.pro"') do SET AT8BDSK3=%%~a

:DISKAC
if "%AT8BDSK1%" NEQ "" for %%a in ("%AT8BDSK1%") do SET AT8BDSK=%%~a
if "%BOOTDISK%" NEQ "" for %%a in ("%BOOTDISK%") do SET AT8BDSK=%%~a
if "%AT8BDSK%" NEQ "" goto :FNDGRP 
for /f "delims=" %%a in ('dir /b /a-d "*.atr" "*.rom" "*.bas" "*.cas" "*.xex" "*.bin" "*.zip" "*.wav" "*.atx" "*.com" "*.obx" "*.xfd" "*.pro"') do SET AT8BDSK=%%~a


:FNDGRP
"%GBC%\fart.exe" "%ALTRA%.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%AT8B%\%CSTM%"
"%GBC%\fart.exe" "%ALTRA%.ini" [ROM] "%AT8BDSK%"
"%GBC%\fart.exe" "%ALTRA%.ini" [ROMB] "%AT8BDSK2%"
"%GBC%\fart.exe" "%ALTRA%.ini" [ROMC] "%AT8BDSK3%"
if "%AT8BDSK2%"=="" "%GBC%\fart.exe" "%ALTRA%.ini" [ROMB] --remove
if "%AT8BDSK3%"=="" "%GBC%\fart.exe" "%ALTRA%.ini" [ROMC] --remove
"%GBC%\fart.exe" "%ALTRA%.ini" \ \\
goto :AT8Bend

:AT8Bend
"%GBC%\fart.exe" "Altirra.ini" "[Settings]" "[User\Software\virtualdub.org\Altirra\Settings]"
"%GBC%\fart.exe" "Altirra.ini" "[Input maps]" "[User\Software\virtualdub.org\Altirra\Settings\Input maps]"
"%GBC%\fart.exe" "Altirra.ini" "[ROM Images]" "[User\Software\virtualdub.org\Altirra\ROM Images]"
"%GBC%\fart.exe" "Altirra.ini" "[Colors]" "[User\Software\virtualdub.org\Altirra\Settings\Colors]"
"%GBC%\fart.exe" "Altirra.ini" "[NTSC]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\NTSC]"
"%GBC%\fart.exe" "Altirra.ini" "[PAL]" "[User\Software\virtualdub.org\Altirra\Settings\Colors\PAL]"
"%GBC%\fart.exe" "Altirra.ini" "[Window Placement]" "[User\Software\virtualdub.org\Altirra\Window Placement]"
"%GBC%\fart.exe" "Altirra.ini" "[Pane layouts]" "[User\Software\virtualdub.org\Altirra\Pane layouts 2]"
"%GBC%\fart.exe" "Altirra.ini" "[MRU List]" "[User\Software\virtualdub.org\Altirra\MRU List
"%GBC%\fart.exe" "Altirra.ini" "[Saved filespecs]" "[User\Software\virtualdub.org\Altirra\Saved filespecs]"
"%GBC%\fart.exe" "Altirra.ini" "[Mounted Images]" "[User\Software\virtualdub.org\Altirra\Mounted Images]"
for %%a in ("%AT8BDSK%") do set BATEXTN=%%~xa
exit /b


