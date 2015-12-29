SET CAMIGHDD=
SET CAMIGDSK=
SET CAMIGDSK1=
SET CAMIGDSK2=
SET CAMIGDSK3=
SET CAMIGDSK4=
SET CAMIGDSK5=
SET CAMIGDSK6=
SET CAMIGDSK7=
SET CAMIGDSK8=
SET CAMIGDSK9=
SET CAMIGDSK10=
SET CAMIGDSK11=
SET CAMIGDSK12=
SET CAMIGDSK13=
SET CAMIGDSK14=
SET CAMIGDSK15=
:DISK1
for /f "delims=" %%a in ('dir /b /a-d "*1of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
)
if "%CAMIGDSK1%" NEQ "" goto :DISK2
for /f "delims=" %%a in ('dir /b /a-d "*1 of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
)
if "%CAMIGDSK1%" NEQ "" goto :DISK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "*-*d1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
)
if "%CAMIGDSK1%" NEQ "" goto :DISK2
for /f "delims=" %%a in ('dir /b /a-d "*Disk_1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
)
:DISK2
for /f "delims=" %%a in ('dir /b /a-d "*2of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "*2 of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
)
if "%CAMIGDSK2%" NEQ "" goto :DISK3
for /f "delims=" %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "*-*d2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
)
if "%CAMIGDSK2%" NEQ "" goto :DISK3
for /f "delims=" %%a in ('dir /b /a-d "*Disk_2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
)
if "%CAMIGDSK2%" NEQ "" goto :DISK3
for /f "delims=" %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
)
:DISK3
for /f "delims=" %%a in ('dir /b /a-d "*3of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*-*d3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*3 of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*Disk 3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*Disk3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISK4
for /f "delims=" %%a in ('dir /b /a-d "*Disk_3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
)
:DISK4
for /f "delims=" %%a in ('dir /b /a-d "*4of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
)
if "%CAMIGDSK4%" NEQ "" goto :DISK5
for /f "delims=" %%a in ('dir /b /a-d "*4 of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
)
if "%CAMIGDSK4%" NEQ "" goto :DISK5
for /f "delims=" %%a in ('dir /b /a-d "*Disk 4*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
)
if "%CAMIGDSK4%" NEQ "" goto :DISK5
for /f "delims=" %%a in ('dir /b /a-d "*Disk4*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
)
if "%CAMIGDSK4%" NEQ "" goto :DISK5
for /f "delims=" %%a in ('dir /b /a-d "*Disk_4*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
)
:DISK5
for /f "delims=" %%a in ('dir /b /a-d "*5of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
)
if "%CAMIGDSK5%" NEQ "" goto :DISK6
for /f "delims=" %%a in ('dir /b /a-d "*5 of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
)
if "%CAMIGDSK5%" NEQ "" goto :DISK6
for /f "delims=" %%a in ('dir /b /a-d "*Disk 5*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
)
if "%CAMIGDSK5%" NEQ "" goto :DISK6
for /f "delims=" %%a in ('dir /b /a-d "*Disk5*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
)
if "%CAMIGDSK5%" NEQ "" goto :DISK6
for /f "delims=" %%a in ('dir /b /a-d "*Disk_5*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
)
:DISK6
for /f "delims=" %%a in ('dir /b /a-d "*6of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK6=%%~a
)
if "%CAMIGDSK6%" NEQ "" goto :DISK7
for /f "delims=" %%a in ('dir /b /a-d "*6 of*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK6=%%~a
)
if "%CAMIGDSK6%" NEQ "" goto :DISK7
for /f "delims=" %%a in ('dir /b /a-d "*Disk 6*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK6=%%~a
)
if "%CAMIGDSK6%" NEQ "" goto :DISK7
for /f "delims=" %%a in ('dir /b /a-d "*Disk_6*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK6=%%~a
)
if "%CAMIGDSK6%" NEQ "" goto :DISK7
for /f "delims=" %%a in ('dir /b /a-d "*Disk6*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK6=%%~a
)
:DISK7
for /f "delims=" %%a in ('dir /b /a-d "*Disk 7*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK7=%%~a
)
if "%CAMIGDSK7%" NEQ "" goto :DISK8
for /f "delims=" %%a in ('dir /b /a-d "*Disk_7*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK7=%%~a
)
if "%CAMIGDSK7%" NEQ "" goto :DISK8
for /f "delims=" %%a in ('dir /b /a-d "*Disk7*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK7=%%~a
)
:DISK8
for /f "delims=" %%a in ('dir /b /a-d "*Disk 8*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK8=%%~a
)
if "%CAMIGDSK8%" NEQ "" goto :DISK9
for /f "delims=" %%a in ('dir /b /a-d "*Disk8*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK8=%%~a
)
if "%CAMIGDSK8%" NEQ "" goto :DISK8
for /f "delims=" %%a in ('dir /b /a-d "*Disk_8*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK8=%%~a
)
if "%CAMIGDSK8%" NEQ "" goto :DISK9
for /f "delims=" %%a in ('dir /b /a-d "*Disk 9*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK9=%%~a
)
:DISK9
for /f "delims=" %%a in ('dir /b /a-d "*Disk9*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK9=%%~a
)
if "%CAMIGDSK9%" NEQ "" goto :DISK10
for /f "delims=" %%a in ('dir /b /a-d "*Disk_9*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK9=%%~a
)
if "%CAMIGDSK9%" NEQ "" goto :DISK10
for /f "delims=" %%a in ('dir /b /a-d "*Disk 10*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK10=%%~a
)
:DISK10
for /f "delims=" %%a in ('dir /b /a-d "*Disk10*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK10=%%~a
)
for /f "delims=" %%a in ('dir /b /a-d "*Disk_10*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK10=%%~a
)
:DISK11
for /f "delims=" %%a in ('dir /b /a-d "*Disk 11*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK11=%%~a
)
if "%CAMIGDSK11%" NEQ "" goto :DISK12
for /f "delims=" %%a in ('dir /b /a-d "*Disk_11*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK11=%%~a
)
if "%CAMIGDSK11%" NEQ "" goto :DISK12
for /f "delims=" %%a in ('dir /b /a-d "*Disk11*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK11=%%~a
)
:DISK12
for /f "delims=" %%a in ('dir /b /a-d "*Disk 12*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK12=%%~a
)
if "%CAMIGDSK12%" NEQ "" goto :DISK13
for /f "delims=" %%a in ('dir /b /a-d "*Disk_12*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK12=%%~a
)
if "%CAMIGDSK12%" NEQ "" goto :DISK13
for /f "delims=" %%a in ('dir /b /a-d "*Disk12*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK12=%%~a
)
:DISK13
for /f "delims=" %%a in ('dir /b /a-d "*Disk 13*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK13=%%~a
)
if "%CAMIGDSK13%" NEQ "" goto :DISK14
for /f "delims=" %%a in ('dir /b /a-d "*Disk13*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK13=%%~a
)
if "%CAMIGDSK13%" NEQ "" goto :DISK14
for /f "delims=" %%a in ('dir /b /a-d "*Disk_13*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK13=%%~a
)
:DISK14
for /f "delims=" %%a in ('dir /b /a-d "*Disk 14*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK14=%%~a
)
if "%CAMIGDSK14%" NEQ "" goto :DISK15
for /f "delims=" %%a in ('dir /b /a-d "*Disk14*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK14=%%~a
)
if "%CAMIGDSK14%" NEQ "" goto :DISK15
for /f "delims=" %%a in ('dir /b /a-d "*Disk_14*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK14=%%~a
)
:DISK15
for /f "delims=" %%a in ('dir /b /a-d "*Disk 15*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK15=%%~a
)
if "%CAMIGDSK15%" NEQ "" goto :DISKA
for /f "delims=" %%a in ('dir /b /a-d "*Disk15*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK15=%%~a
)
if "%CAMIGDSK15%" NEQ "" goto :DISKA
for /f "delims=" %%a in ('dir /b /a-d "*Disk_15*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK15=%%~a
)
:DISKA
for /f "delims=" %%a in ('dir /b /a-d "*Disk A*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
)
if "%CAMIGDSK15%" NEQ "" goto :DISKB
for /f "delims=" %%a in ('dir /b /a-d "*Disk_A*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
)
if "%CAMIGDSK1%" NEQ "" goto :DISKB
for /f "delims=" %%a in ('dir /b /a-d "*DiskA*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK1=%%~a
)
:DISKB
for /f "delims=" %%a in ('dir /b /a-d "*Disk B*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
)
if "%CAMIGDSK2%" NEQ "" goto :DISKC
for /f "delims=" %%a in ('dir /b /a-d "*Disk_B*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
)
if "%CAMIGDSK2%" NEQ "" goto :DISKC
for /f "delims=" %%a in ('dir /b /a-d "*DiskB*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK2=%%~a
)
:DISKC
for /f "delims=" %%a in ('dir /b /a-d "*Disk C*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISKD
for /f "delims=" %%a in ('dir /b /a-d "*DiskC*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
)
if "%CAMIGDSK3%" NEQ "" goto :DISKD
for /f "delims=" %%a in ('dir /b /a-d "*Disk_C*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK3=%%~a
)
:DISKD
for /f "delims=" %%a in ('dir /b /a-d "*Disk D*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
)
if "%CAMIGDSK4%" NEQ "" goto :DISKE
for /f "delims=" %%a in ('dir /b /a-d "*DiskD*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
)
if "%CAMIGDSK4%" NEQ "" goto :DISKE
for /f "delims=" %%a in ('dir /b /a-d "*Disk_D*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK4=%%~a
)
:DISKE
for /f "delims=" %%a in ('dir /b /a-d "*Disk E*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
)
if "%CAMIGDSK5%" NEQ "" goto :DISKZ
for /f "delims=" %%a in ('dir /b /a-d "*DiskE*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
)
if "%CAMIGDSK5%" NEQ "" goto :DISKZ
for /f "delims=" %%a in ('dir /b /a-d "*Disk_E*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".zip" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK5=%%~a
)
:DISKZ
for /f "delims=" %%a in ('dir /b /a-d "*.hdf"') do SET CAMIGHDD=%%~a
for /f "delims=" %%a in ('dir /b/a-d "*bootdisk*.adf" "*bootdisk*.dms" "*bootdisk*.rp2" "*bootdisk*.ipf" "*bootdisk*.adz" "*bootdisk*.zip"') do set CAMIGDSK=%%~a
if "%CAMIGDSK%" NEQ "" goto :ADFTEST
if "%CAMIGDSK1%" NEQ "" goto :ADFTEST
for /f "delims=" %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK=%%~a
if /I "%%~xa"==".adz" SET CAMIGDSK=%%~a
if /I "%%~xa"==".dms" SET CAMIGDSK=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK=%%~a
if /I "%%~xa"==".rp2" SET CAMIGDSK=%%~a
CALL :disking
)
:ADFTEST
for /f "delims=" %%a in ('dir /b/a-d "*(AGA)*.adf"') do (
set NWROM=%%~a
if "%%~a" neq "" call :reamp
)
REM if "%CAMIGDSK%" NEQ "" goto :
:ADDEMIN
for /f "delims=" %%a in ('dir /b/a-d "*.adf" "*.adz" "*.dms" "*.rp2" "*.ipf" "*.zip"') do (
set AMGCNT=1
set NWROM=%%~a
call :ADDIN
)
goto :injecCAMIGs

:ADDIN
if "%NWROM%"=="%CAMIGDSK%" exit /b
if "%CAMIGDSK1%" NEQ "" goto :DSK2
for %%a in ("%NWROM%") do set CAMIGDSK1=%%~a
exit /b
:DSK2
set /a AMGCNT+=1
if "%CAMIGDSK2%" NEQ "" goto :DSK3
for %%a in ("%NWROM%") do set CAMIGDSK2=%%~a
exit /b
:DSK3
set /a AMGCNT+=1
if "%CAMIGDSK3%" NEQ "" goto :DSK4
for %%a in ("%NWROM%") do set CAMIGDSK3=%%~a
exit /b
:DSK4
set /a AMGCNT+=1
if "%CAMIGDSK4%" NEQ "" goto :DSK5
for %%a in ("%NWROM%") do set CAMIGDSK4=%%~a
exit /b
:DSK5
set /a AMGCNT+=1
if "%CAMIGDSK5%" NEQ "" goto :DSK6
for %%a in ("%NWROM%") do set CAMIGDSK5=%%~a
exit /b
:DSK6
set /a AMGCNT+=1
if "%CAMIGDSK6%" NEQ "" goto :DSK7
for %%a in ("%NWROM%") do set CAMIGDSK6=%%~a
exit /b
:DSK7
set /a AMGCNT+=1
if "%CAMIGDSK7%" NEQ "" goto :DSK8
for %%a in ("%NWROM%") do set CAMIGDSK7=%%~a
exit /b
:DSK8
set /a AMGCNT+=1
if "%CAMIGDSK8%" NEQ "" goto :DSK9
for %%a in ("%NWROM%") do set CAMIGDSK8=%%~a
exit /b
:DSK9
set /a AMGCNT+=1
if "%CAMIGDSK9%" NEQ "" goto :DSK10
for %%a in ("%NWROM%") do set CAMIGDSK9=%%~a
exit /b
:DSK10
set /a AMGCNT+=1
if "%CAMIGDSK10%" NEQ "" goto :DSK11
for %%a in ("%NWROM%") do set CAMIGDSK10=%%~a
exit /b
:DSK11
set /a AMGCNT+=1
if "%CAMIGDSK11%" NEQ "" goto :DSK12
for %%a in ("%NWROM%") do set CAMIGDSK11=%%~a
exit /b
:DSK12
set /a AMGCNT+=1
if "%CAMIGDSK12%" NEQ "" goto :DSK13
for %%a in ("%NWROM%") do set CAMIGDSK12=%%~a
exit /b
:DSK13
set /a AMGCNT+=1
if "%CAMIGDSK13%" NEQ "" goto :DSK14
for %%a in ("%NWROM%") do set CAMIGDSK13=%%~a
exit /b
:DSK14
set /a AMGCNT+=1
if "%CAMIGDSK14%" NEQ "" goto :DSK15
for %%a in ("%NWROM%") do set CAMIGDSK14=%%~a
exit /b
:DSK15
set /a AMGCNT+=1
if "%CAMIGDSK15%" NEQ "" exit /b
for %%a in ("%NWROM%") do set CAMIGDSK15=%%~a
exit /b
:reamp
"%GBC%\inifile.exe" "Config.fs-uae" [config] amiga_model = A1200/20
"%GBC%\inifile.exe" "Config.fs-uae" [config] chip_memory = 4096
echo.accuracy = 1>>"Config.fs-uae"
echo.ntsc_mode = 1>>"Config.fs-uae"
echo.fast_memory = 4096>>"Config.fs-uae"
echo.slow_memory = 1792>>"Config.fs-uae"
echo.zorro_iii_memory = 1048576>>"Config.fs-uae"
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "%GBE%\%EMUZ%\%FSUAE%\%AMIG1200%"
exit /b
:disking
if /I "%CAMIGDSK%"=="%CAMIGDSK2%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="%CAMIGDSK3%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="%CAMIGDSK4%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="%CAMIGDSK5%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="" exit /b
exit /b
:injecCAMIGs
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "%GBE%\%EMUZ%\%FSUAE%\%AMIG500%"
if "%CAMIGHDD%"=="" "%GBC%\fart.exe" "Config.fs-uae" [HDD] --remove
if "%CAMIGDSK2%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK2] --remove
if "%CAMIGDSK3%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK3] --remove
if "%CAMIGDSK4%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK4] --remove
if "%CAMIGDSK5%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK5] --remove
if "%CAMIGDSK6%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK6] --remove
if "%CAMIGDSK7%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK7] --remove
if "%CAMIGDSK8%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK8] --remove
if "%CAMIGDSK9%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK9] --remove
if "%CAMIGDSK10%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK10] --remove
if "%CAMIGDSK11%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK11] --remove
if "%CAMIGDSK12%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK12] --remove
if "%CAMIGDSK13%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK13] --remove
if "%CAMIGDSK14%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK14] --remove
if "%CAMIGDSK15%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK15] --remove
if "%CAMIGDSK%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK1] "%CAMIGDSK%"
if "%CAMIGDSK1%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK1] "%CAMIGDSK1%"
if "%CAMIGDSK2%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK2] "%CAMIGDSK2%"
if "%CAMIGDSK3%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK3] "%CAMIGDSK3%"
if "%CAMIGDSK4%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK4] "%CAMIGDSK4%"
if "%CAMIGDSK5%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK5] "%CAMIGDSK5%"
if "%CAMIGDSK6%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK6] "%CAMIGDSK6%"
if "%CAMIGDSK7%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK7] "%CAMIGDSK7%"
if "%CAMIGDSK8%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK8] "%CAMIGDSK8%"
if "%CAMIGDSK9%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK9] "%CAMIGDSK9%"
if "%CAMIGDSK10%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK10] "%CAMIGDSK10%"
if "%CAMIGDSK11%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK11] "%CAMIGDSK11%"
if "%CAMIGDSK12%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK12] "%CAMIGDSK12%"
if "%CAMIGDSK13%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK13] "%CAMIGDSK13%"
if "%CAMIGDSK14%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK14] "%CAMIGDSK14%"
if "%CAMIGDSK15%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK15] "%CAMIGDSK15%"
if "%CAMIGHDD%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [HDD] "%CAMIGHDD%"
goto :CAMIGend
:CAMIGend
"%GBC%\fart.exe" "Config.fs-uae" [ROMPTH] "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"
"%GBC%\fart.exe" "Config.fs-uae" \ \\
exit /b