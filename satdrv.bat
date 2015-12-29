set DRVNUM=
set SATSKIP=
set /A SATNUM=0
set SATCNT=
SET ABV=
SET drvcnt=
if "%DAMVAR%"=="" set SATSKIP=1
if "%DAMVAR%"=="[DMT]" set SATSKIP=1
if "%SATSKIP%"=="1" goto :EOF
"%DAMVAR%" -unmount_all
"%DAMVAR%" -set_count dt, 0
"%DAMVAR%" -set_count scsi, 0
del /q "%GBC%\drvs.ini"
del /q "%GBC%\cddrv.ini"
for %%a in ("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z") do echo.%%~a>>"%GBC%\drvs.ini"
for /f "tokens=1 delims=:" %%a in ('type "%GBC%\drvs.ini"') do fsutil.exe fsinfo drivetype %%a:|find "CD-ROM">>"%GBC%\cddrv.ini"
"%GBC%\fart.exe" "%GBC%\cddrv.ini" ": - CD-ROM Drive" --remove

:CNTDRV
"%DAMVAR%" -add scsi
CALL "%GBC%\dtest.bat">>"%GBC%\logs\dtest.log"
for /f "delims=" %%a in ('type "%GBC%\cddrv.ini"') do ( 
set SATDRVLTR=%%~a
set /a DSKNUM+=1
call :SDRVNUM
call :SATCHK
)
if "%DSKNUM%"=="" set /a SATNUM=0
exit /b

:SDRVNUM
if /I "%SATDRVLTR%"=="A" set SDRVNUM=0
if /I "%SATDRVLTR%"=="B" set SDRVNUM=1
if /I "%SATDRVLTR%"=="C" set SDRVNUM=2
if /I "%SATDRVLTR%"=="D" set SDRVNUM=3
if /I "%SATDRVLTR%"=="E" set SDRVNUM=4
if /I "%SATDRVLTR%"=="F" set SDRVNUM=5
if /I "%SATDRVLTR%"=="G" set SDRVNUM=6
if /I "%SATDRVLTR%"=="H" set SDRVNUM=7
if /I "%SATDRVLTR%"=="I" set SDRVNUM=8
if /I "%SATDRVLTR%"=="J" set SDRVNUM=9
if /I "%SATDRVLTR%"=="K" set SDRVNUM=10
if /I "%SATDRVLTR%"=="L" set SDRVNUM=11
if /I "%SATDRVLTR%"=="M" set SDRVNUM=12
if /I "%SATDRVLTR%"=="N" set SDRVNUM=13
if /I "%SATDRVLTR%"=="O" set SDRVNUM=14
if /I "%SATDRVLTR%"=="P" set SDRVNUM=15
if /I "%SATDRVLTR%"=="Q" set SDRVNUM=16
if /I "%SATDRVLTR%"=="R" set SDRVNUM=17
if /I "%SATDRVLTR%"=="S" set SDRVNUM=18
if /I "%SATDRVLTR%"=="T" set SDRVNUM=19
if /I "%SATDRVLTR%"=="U" set SDRVNUM=20
if /I "%SATDRVLTR%"=="V" set SDRVNUM=21
if /I "%SATDRVLTR%"=="W" set SDRVNUM=22
if /I "%SATDRVLTR%"=="X" set SDRVNUM=23
if /I "%SATDRVLTR%"=="Y" set SDRVNUM=24
if /I "%SATDRVLTR%"=="Z" set SDRVNUM=25
exit /b

:SATCHK
if %DRVNUM% GTR %SDRVNUM% set /a SATNUM+=1