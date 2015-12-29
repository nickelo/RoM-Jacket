if "%CUSOMEMULATOR%" NEQ "1" for %%a in ("%CEMU%") do set CEMZ=%%~a
if /i "%CEMU%"=="%PSX%" set CEMZ=psxfin
if /i "%CEMU%"=="%PLAY3DO%" set CEMZ=3DOEmu
if /i "%CEMU%"=="%WCDI%" set CEMZ=CDIWrapper
if /i "%CEMU%"=="%FSHPL%" set CEMZ=FullScreenFlash
if /i "%CEMU%"=="%FBA%" set CEMZ=fba
if /i "%CEMU%"=="%VICE%" set CEMZ=x64
if /i "%CEMU%"=="%INTV%" set CEMZ=%INTV%32
if /i "%CEMU%"=="%VSVH%" set CEMZ=%VSVH%.Win
if /i "%CSTCONS%"=="%PC98%" set CEMZ=np21nt
if /i "%CSTCONS%"=="%SHRPX1%" set CEMZ=X1
if /i "%CEMU%"=="%XTURB%" set CEMZ=X1
if /i "%CSTCONS%"=="%NEOCD%" set CEMZ=%NEORAINE%
if /i "%CSTCONS%"=="%ATST%" set CEMZ=Steemz
if /i "%CEMU%"=="%DMUL%" set CEMZ=Helper
if /i "%CEMU%"=="%STEEM%" set CEMZ=Steemz
if /i "%CEMU%"=="%NEKO%" set CEMZ=np21nt
if /i "%CEMU%"=="%NOGBA%" set CEMZ=NDS
if /i "%CSTCONS%"=="%JAGCD%" set CEMZ=PTCDWrapper
if /i "%CSTCONS%"=="%JAG%" set CEMZ=vjag
if /i "%CEMU%"=="%PTMPS%" set CEMZ=PTCDWrapper
set DBTMP=
if "%ARPOP%"=="64" set DBTMP=_x64
if /i "%CEMU%"=="%MSBOX%" set CEMZ=dosbox%DBTMP%

if /i "%CEMU%"=="%JAG%" set CEMZ=vjag
if /i "%CEMU%"=="%FM7%" set CEMZ=%XM7%
if /i "%CEMU%"=="%EPSXE%" set CEMZ=image
if "%DTON%"=="" exit /b
if /i "%CEMU%"=="%EPSXE%" set CEMZ=cdrom
if /i "%CEMU%"=="%PCSX2%" set CEMZ=cdrom
