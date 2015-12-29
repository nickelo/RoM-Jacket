pushd "%GBC%"

set urlNthL=1
set ARCT=
for /f "delims=" %%a in ('"%GBC%\Readline.exe" "%GBC%\ARCH.ini" /L:%urlNthL%') do set ARCT=%%~a
goto :ARCH

:SET6432
SET HOMHDSK=%windir%
for %%A in ("%HOMHDSK:~0,2%") do set HOMDIR=%%~A
for %%a in ("%PROGRAMFILES(X86)%") do set PRGX=%%~a
if "%REALWINDOWS%"=="0" for %%A in ("%HOMDIR%\Program Files (X86)") do set PRGX=%%~A
exit /b
:SET32
for %%a in ("%PROGRAMFILES%") do set PRGX=%%~a
exit /b

:ARCH
if "%ARCT%"=="64" set ARPOP=64
if "%ARCT%"=="64" call :SET6432
if "%ARCT%"=="32" set ARPOP=32
if "%ARCT%"=="32" call :SET32
for %%A in ("%PROGRAMFILES%") do set PRGF=%%~A

:SETGBE
set urlNthL=1
set GBE=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set GBE=%%~a

:GBG
set urlNthL=2
set GBG=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set GBG=%%~a

:XPD
set urlNthL=3
set XPADDER=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set XPADDER=%%~a

:DAM
set urlNthL=4
set DAMVAR=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set DAMVAR=%%~a

:JTP
set urlNthL=5
set JTP=
set JOYVAL=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set JTP=%%~a
for %%a in ("%JTP%") do set JOYVAL=%%~a

:SEVENZIP
set urlNthL=6
set SEVENZIP=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set SEVENZIP=%%~a

:UNRAR
set urlNthL=7
set UNRAR=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set UNRAR=%%~a

:GBM
set urlNthL=8
set GBM=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set GBM=%%~a

:DROP
set urlNthL=30
set RJCLOUD=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set RJCLOUD=%%~a

:EINST
set urlNthL=9
set EINST=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set EINST=%%~a
for %%A in ("%GBG:~0,2%") do set GAMDRV=%%~A
for %%A in ("%GBE:~0,2%") do set EMUDIR=%%~A

:MBR
set urlNthL=10
set MBR=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set MBR=%%~a

:GBR
set urlNthL=11
set GBR=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set GBR=%%~a

:XBM
set urlNthL=12
set XBM=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set XBM=%%~a

:MGX
set urlNthL=36
set MGX=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set MGX=%%~a

:ADV
set urlNthL=13
set ADV=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set ADV=%%~a

:RCB
set urlNthL=14
set RCB=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set RCB=%%~a

:HPN
set urlNthL=15
set HYP=
set HPN=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set HYP=%%~a
if "%HYP%" NEQ "[HPN]" for %%a in ("%HYP%") do set HPN=%%~a

:XPP
set urlNthL=25
set XPP=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set XPP=%%~a

:LOG
set urlNthL=24
set LOG=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set LOG=%%~a

:GEX
set urlNthL=16
set GEX=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set GEX=%%~a

:EMS
set urlNthL=29
set EMS=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set EMS=%%~a

:CBR
set urlNthL=24
set CBR=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set CBR=%%~a

:OBLY
set urlNthL=26
set OBLY=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set OBLY=%%~a

:IRL
set urlNthL=35
set IRL=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set IRL=%%~a
:AMI
set urlNthL=34
set IPP=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set IPP=%%~a
for %%a in ("%IPP:~1,1%") do if "%%~a" NEQ ":" set IPP=[IPP]

:AMC
set urlNthL=33
set ANTMIC=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set ANTMIC=%%~a

:XFG
set urlNthL=20
set XFG=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set XFG=%%~a

:JOY1
set urlNthL=27
set JOY1GUID=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set JOY1GUID=%%~a

:JOY2
set urlNthL=28
set JOY2GUID=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set JOY2GUID=%%~a

:STM
set urlNthL=31
set STEAMLOC=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set STEAMLOC=%%~a


:RFE
set urlNthL=32
set RFE=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set RFE=%%~a


:DXV
if "%WINVER%"=="XP" set DXV=9
if "%WINVER%"=="VISTA" set DXV=10
if "%WINVER%"=="7" set DXV=11
if "%WINVER%"=="8" set DXV=11
if "%WINVER%"=="8.1" set DXV=11
if "%WINVER%"=="10" set DXV=11

:RESOLUTION
popd
call "%GBC%\defaultres.bat"
pushd "%GBC%"

:RESX
set urlNthL=22
set DREZX=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set DREZX=%%~a

:RESY
set urlNthL=23
set DREZY=
for /f "delims=" %%a in ('Readline.exe locset.ini /L:%urlNthL%') do set DREZY=%%~a
popd