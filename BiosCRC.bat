for %%a in ("%EMUZN%") do CALL :%EMUZN%
exit /b

:PCCD
del /q "%GBC%\crc.ini"
for %%a in (" 2585C0B3") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 6D9A73EF") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 2B5B75FE") do echo.%%~a>>"%GBC%\crc.ini"
SET BEXT=.pce
for %%a in ("%GBE%\%EMUZ%\%MEDN%") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b

:NFAM
:NES
del /q "%GBC%\crc.ini"
for %%a in (" 5E607DCF") do echo.%%~a>>"%GBC%\crc.ini"
set BEXT=.rom
for %%a in ("%GBE%\%EMUZ%\%MEDN%") do SET EMUPATH=%%~a
call :CRCCHECK
exit /b

:AT78
del /q "%GBC%\crc.ini"
for %%a in (" 5D13730C") do echo.%%~a>>"%GBC%\crc.ini"
set BEXT=.rom
for %%a in ("%GBE%\%EMUZ%\%PROSYS%") do SET EMUPATH=%%~a
call :CRCCHECK
for %%a in ("%GBE%\%EMUZ%\%RTROA%\system") do SET EMUPATH=%%~a
call :CRCCHECK
exit /b


:APL2GS
del /q "%GBC%\crc.ini"
for %%a in (" DE7DDF29") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 42F124B0") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%KEGS%") do SET EMUPTH=%%~a
SET BEXT=Rom03gd*
call :CRCCHECK
SET BEXT=.ROM2
call :CRCCHECK
SET BEXT=ROM 03
call :CRCCHECK
SET BEXT=ROM 01
call :CRCCHECK
SET BEXT=.rom
call :CRCCHECK
exit /b

:SEGDC
del /q "%GBC%\crc.ini"
for %%a in (" 7D08E9A5") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%DMUL%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%\roms"
SET BEXT=dc.zip
call :CRCCHECK
del /q "%GBC%\crc.ini"
for %%a in (" 89F2B1A1") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" C611B498") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%NULLDC%\data") do SET EMUPTH=%%~a
SET BEXT=dc_boot.bin
call :CRCCHECK
SET BEXT=dc_flash.bin
call :CRCCHECK
for %%a in ("%GBE%\%EMUZ%\%RTROA%\system\dc") do SET EMUPTH=%%~a
SET BEXT=dc_boot.bin
call :CRCCHECK
SET BEXT=dc_flash.bin
call :CRCCHECK
exit /b

:SEGCD
del /q "%GBC%\crc.ini"
for %%a in (" D344F125") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%FUSN%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%"
SET BEXT=eu_mcd2_9306.bin
call :CRCCHECK
del /q "%GBC%\crc.ini"
for %%a in (" 550F30BB") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%FUSN%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%"
SET BEXT=jp_mcd1_9112.bin
call :CRCCHECK
del /q "%GBC%\crc.ini"
for %%a in (" 9F6F6276") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%FUSN%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%"
SET BEXT=us_scd2_9306.bin
call :CRCCHECK


:HIKARU
del /q "%GBC%\crc.ini"
for %%a in (" B4015DF2") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%DMUL%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%\roms"
SET BEXT=hikaru.zip
call :CRCCHECK
exit /b

:ATMS
del /q "%GBC%\crc.ini"
for %%a in (" 8602AABA") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%DMUL%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%\roms"
SET BEXT=awbios.zip
call :CRCCHECK
exit /b

:NAOMI
del /q "%GBC%\crc.ini"
for %%a in (" 9B430BD5") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" FF5DA916") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%DMUL%") do SET EMUPTH=%%~a
mkdir "%EMUPTH%\roms"
SET BEXT=naomi.zip
call :CRCCHECK
SET BEXT=naomi2.zip
call :CRCCHECK
exit /b

:PCFX
del /q "%GBC%\crc.ini"
for %%a in (" 76FFB97A") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%MEDN%") do SET EMUPTH=%%~a
SET BEXT=pcfx*.bin
call :CRCCHECK
rename "%GBE%\%EMUZ%\%MEDN%\%BAIOSFILE%" "pcfx.rom"
SET BEXT=pcfx*.rom
rename "%GBE%\%EMUZ%\%MEDN%\%BAIOSFILE%" "pcfx.rom"
call :CRCCHECK
for %%a in ("%GBE%\%EMUZ%\%MEDN%") do SET EMUPTH=%%~a
SET BEXT=pcfx*.bin
call :CRCCHECK
rename "%GBE%\%EMUZ%\%RTROA%\system\%BAIOSFILE%" "pcfx.rom"
SET BEXT=pcfx*.rom
rename "%GBE%\%EMUZ%\%RTROA%\system\%BAIOSFILE%" "pcfx.rom"
call :CRCCHECK
exit /b

:NEOGEO
del /q "%GBC%\crc.ini"
for %%a in (" 6893A277") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" AFCE86AC") do echo.%%~a>>"%GBC%\crc.ini"
SET BEXT=neogeo*
for %%a in ("%GBE%\%EMUZ%\%FBA%") do SET EMUPTH=%%~a
call :CRCCHECK
for %%a in ("%GBE%\%EMUZ%\%MAME%\SOURCE") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b

:NEOCD
for %%a in (" 6893A277") do echo.%%~a>>"%GBC%\crc.ini"
SET BEXT=neocd*.bin
for %%a in ("%GBE%\%EMUZ%\%FBA%") do SET EMUPTH=%%~a
call :CRCCHECK
rename "%GETCRCNUM%" "neocdz.bin"
for %%a in ("%GBE%\%EMUZ%\%MAME%\SOURCE") do SET EMUPTH=%%~a
SET BEXT=.zip
call :CRCCHECK
exit /b

:AT8H
del /q "%GBC%\crc.ini"
for %%a in (" 4248D3E3") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 3E28A1FE") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 7D684184") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 1F9CD270") do echo.%%~a>>"%GBC%\crc.ini"
SET BEXT=.rom
for %%a in ("%GBE%\%EMUZ%\%STEEM%") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b

:NGBA
del /q "%GBC%\crc.ini"
for %%a in (" 81977335") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%VGBA%") do SET EMUPTH=%%~a
SET BEXT=GBA*.rom
call :CRCCHECK
exit /b

:NDS
del /q "%GBC%\crc.ini"
for %%a in (" 81977335") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 1280F0D5") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in (" 945F9DC9") do echo.%%~a>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%\%NOGBA%") do SET EMUPTH=%%~a
SET BEXT=.rom
call :CRCCHECK
SET BEXT=.bin
call :CRCCHECK
exit /b

:AT52
del /q "%GBC%\crc.ini"
for %%a in (" 4248D3E3") do echo.%%~a>>"%GBC%\crc.ini"
SET BEXT=.rom
for %%a in ("%GBE%\%EMUZ%\%ALTIRA%") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b



:CRCCHECK
for /f "delims=" %%a in ("dir /b/a-d/s "*%BEXT%"') do (
echo.
SET GETCRCNUM=%%~a
SET BAIOSFILE=%%~a
SET BAIOSBIOS=%%~nxa
call :GETCRC
)
exit /b


:GETCRC
for /f "delims=" %%a in ('"%GBC%\crc.exe" "%GETCRCNUM%"') do set CRCNUM=%%~a
for /f "delims=" %%a in ('type "%GBC%\crc.ini"') do (
if "%CRCNUM%"=="%%~a" CALL :COPYCRC
exit /b

:COPYCRC
for %%a in ("%BAIOSBIOS%") do echo.%%~a>>"%GBC%\net\BIOS\%EMUZN%BIOS.ini"
if exist "%EMUPTH%" copy /y "%GETCRCNUM%" "%GBE%\%EMUZ%\%EMUPTH%"
exit /b