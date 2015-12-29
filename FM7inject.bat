SET FM7DSK=
SET FM7DSK1=
SET FM7DSK2=
SET FM7DSK3=

for /f "delims=" %%a in ('dir /b/a-d "*Disk 1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side 1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side_1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side-1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side-A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side_A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*SideA*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk-A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape-1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*TapeA*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape_A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*TapeA*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape A.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape_A.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape-A.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk 2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side 2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side_2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side-2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side-B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side_B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*SideB*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk-B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape-2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*TapeB*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape_B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*TapeB*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape B.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape_B.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape-B.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk 3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side 3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side_3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side-3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side-C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Side_C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*SideC*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk-C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Disk3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape-3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*TapeC*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape_C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*TapeC*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape C.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape_C.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*Tape-C.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "delims=" %%a in ('dir /b/a-d "*bootdisk*.adf" "*bootdisk*.rp2" "*bootdisk*.ipf"') do set FM7DSK=%%~a
if "%FM7DSK%" NEQ "" goto :injecFM7s
if "%FM7DSK1%" NEQ "" goto :injecFM7s
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%"') do (
if /I "%%~xa"==".d77" SET FM7DSK=%%~a
CALL :disking
if /I "%%~xa"==".t77" SET FM7DSK=%%~a
CALL :disking
if /I "%%~xa"==".2d" SET FM7DSK=%%~a
CALL :disking 
if /I "%%~xa"==".2dd" SET FM7DSK=%%~a
CALL :disking 
if /I "%%~xa"==".vfd" SET FM7DSK=%%~a
CALL :disking 
)
goto :injecFM7s

:disking
if /I "%FM7DSK%"=="%FM7DSK2%" exit /b
if /I "%FM7DSK%"=="%FM7DSK3%" exit /b
if /I "%FM7DSK%"=="%FM7DSK4%" exit /b
if /I "%FM7DSK%"=="" exit /b

:injecFM7s
"%GBC%\fart.exe" "*.bat" [DSK1] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK%"
if "%FM7DSK2%"=="" "%GBC%\fart.exe" "*.bat" --remove [DSK2]
if "%FM7DSK3%"=="" "%GBC%\fart.exe" "*.bat" --remove [DSK3]
if "%FM7DSK4%"=="" "%GBC%\fart.exe" "*.bat" --remove [DSK4]
if "%FM7DSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK2] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK2%"
if "%FM7DSK3%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK3] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK3%"
if "%FM7DSK4%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK4] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK4%"

goto :FM7end

:FM7end
set BOOM=3
for %%a in ("%FM7DSK%") do if "%%~xa"==".t77" set BOOTM=2
if "%FM7DSK2%"=="" "%GBC%\fart.exe" "%XM7%.INI" --remove [DSK2]
if "%FM7DSK3%"=="" "%GBC%\fart.exe" "%XM7%.INI" --remove [DSK3]
if "%FM7DSK4%"=="" "%GBC%\fart.exe" "%XM7%.INI" --remove [DSK4]
"%GBC%\fart.exe" "%XM7%.INI" [ROMPTH] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%"
"%GBC%\fart.exe" "%XM7%.INI" [BOOTM] "%BOOTM%"
"%GBC%\fart.exe" "%XM7%.INI" [DSK] "%FM7DSK%"
"%GBC%\fart.exe" "%XM7%.INI" [DSK2] "%FM7DSK2%"
"%GBC%\fart.exe" "%XM7%.INI" [DSK3] "%FM7DSK3%"
"%GBC%\fart.exe" "%XM7%.INI" [DSK4] "%FM7DSK4%"
"%GBC%\fart.exe" "%XM7%.INI" [EMUPTH] "%GBE%\%EMUZ%\%XM7%"
