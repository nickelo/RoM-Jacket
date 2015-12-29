if "%ONESYS%"=="1" CALL "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
if "%ONESYS%"=="1" goto :CRCCHK
if "%CHECKONE%"=="" goto :BEGIN
if "%DRGND%"=="1" goto :BEGIN

for %%a in ("%BIOSF%") do set CRCNAM=%%~a
pushd "%GBC%"
for /f "tokens=1,2 delims=" %%a in ('crc.exe" "%CRCNAM%"') do (
set CRCNAF=%%~nxa
set CRCNUM=%%~b
)
popd

:INCHK
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\CRC\*.set"') do (
set CVAREMU=%%~na
if exist "%GBE%\%EMUZ%\%%~na" call :SUPCHK
)
exit /b

:BEGIN
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS Files"  /marquee
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%d"
for /f "delims=" %%a in ('dir /b/ad "%GBE%\%EMUZ%"') do (
SET CVAREMU=%%~a
call :CRCCHK
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b

:CRCCHK
if "%ONESYS%" NEQ "1" CALL "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
if /i "%CVAREMU%"=="%MAME%" exit /b
if /i "%CVAREMU%"=="%MESS%" exit /b
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\allcrc.ini"') do (
set CRCNAM=%%~a
set CRCNAF=%%~nxa
set CRCNUM=%%~b
call :SUPCHK
)
exit /b

:SUPCHK
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\net\CRC\%CVAREMU%.set"') do (
set BIOSN=%%~a
set BIOSC=%%~b
call :EMUCHK
)
exit /b

:EMUCHK
if "%BIOSC%"=="%CRCNUM%" call :%SHRTE%
exit /b

:DMUL
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%DMUL%\roms\%BIOSN%"
exit /b

:NEKO
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%NEKO%\%BIOSN%"
exit /b

:FBA
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%FBA%\%BIOSN%"
exit /b

:NEORAINE
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%NEORAINE%\%BIOSN%"
exit /b

:NULLDC
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%NULLDC%\data\%BIOSN%"
exit /b

:VGBA
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%VGBA%\%BIOSN%"
exit /b

:NOGBA
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%NOGBA%\%BIOSN%"
exit /b

:DESMUME
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%DESMUME%\%BIOSN%"
exit /b

:XM6
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%XM6%\%BIOSN%"
exit /b

:FUSN
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%FUSN%\%BIOSN%"
exit /b

:ATRI
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%ATRI%\%BIOSN%"
exit /b

:SSF
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\%BIOSN%"
exit /b

:FMUNZ
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%FMUNZ%\%BIOSN%"
exit /b

:RTROA
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%RTROA%\system\%BIOSN%"
exit /b

:MEDN
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%MEDN%\%BIOSN%"
exit /b

:XM7
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%XM7%\%BIOSN%"
exit /b

:STEEM
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%STEEM%\%BIOSN%"
exit /b

:AT8H
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%AT8E%\%BIOSN%"
exit /b

:ALTRA
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%AT8E%\%BIOSN%"
exit /b

:PCSX2
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%PCSX2%\BIOS\%BIOSN%"
exit /b

:PSX
mkdir "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%PSX%\BIOS\%BIOSN%"
exit /b

:EPSXE
mkdir "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%EPSXE%\BIOS\%BIOSN%"
exit /b

:KEGS
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%KEGS%\%BIOSN%"
exit /b

:NOSTL
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%NOSTL%\%BIOSN%"
exit /b

:FM7
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%XM7%\%BIOSN%"
exit /b

:BMSX
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%BMSX%\%BIOSN%"
exit /b

:ATRI
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%ATRI%\%BIOSN%"
exit /b

:WCDI
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%WCDI%\rom\%BIOSN%"
exit /b

:FSUAE
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%FSUAE%\%BIOSN%"
exit /b

:FOURDO
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%FOURDO%\%BIOSN%"
exit /b
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:MAME
copy /y "%CRCNAM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%BIOSN%"
exit /b

:MESS
copy /y "%CRCNAM%" "%GBE%\%EMUZ%\%MESS%\roms\%BIOSN%"
exit /b
