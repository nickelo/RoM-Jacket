pushd "%GBC%\net\BIOS"
del /s /q "%GBE%\%EMUZ%\inst.ini"
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%d"
for /f "delims=" %%a in ('dir /b /ad "%GBE%\%EMUZ%"') do echo %%~a>>"%GBE%\%EMUZ%\inst.ini"
for %%R in ("%GBE%\%EMUZ%\inst.ini") do if %%~zR neq 0 goto :GETSHORT
"%GBC%\wbox.exe" "RJ_GUI" "^^No Emulators have been installed.^To install your BIOS files, install an emulator.^" "Thanks" /TM=7
if %ERRORLEVEL%==1 goto :EOF
goto :EOF

:GETSHORT
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do (
SET CVAREMU=%%~a
call :GETVAR
)

:GETVAR
set SHRTN=
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call :%SHRTN%
exit /b

:MEDNAFEN
for /f "delims=" %%i in ('dir /b/a-d "*CD-ROM System*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "*Super CD-ROM2 System*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "*TurboGrafx CD*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "SYSCARD3.PCE"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "*pcfx*.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom" 
for /f "delims=" %%i in ('dir /b/a-d "*pcfx*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom" 
for /f "delims=" %%i in ('dir /b/a-d "disksys.rom"') do copy /y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b /a-d "lynx*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5500.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "Scph5501.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /f "delims=" %%i in ('dir /b/a-d "Scph5502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
exit /b

:RTROA
for /f "delims=" %%i in ('dir /b/a-d "SYSCARD3.PCE"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE"
for /f "delims=" %%i in ('dir /b/a-d "SYSCARD3.PCE"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE"
for /f "delims=" %%i in ('dir /b/a-d "*TurboGrafx CD*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE"
for /f "delims=" %%i in ('dir /b/a-d "*CD-ROM System*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE"
for /f "delims=" %%i in ('dir /b/a-d "*Super CD-ROM2 System*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE"
for /f "delims=" %%i in ('dir /b/a-d "*pcfx*.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\pcfx.rom" 
for /f "delims=" %%i in ('dir /b/a-d "*pcfx*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\pcfx.rom" 
for /f "delims=" %%i in ('dir /b/a-d "disksys.rom"') do copy /y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\disksys.rom"
for /f "delims=" %%i in ('dir /b /a-d "lynx*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5500.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5501.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%"
for /f "delims=" %%i in ('dir /b/a-d "Scph5502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%"
for /f "delims=" %%i in ('dir /b/a-d "Kick*1.3*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\kick.rom"
for /f "delims=" %%i in ('dir /b /a-d "*eu_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_E.bin"
for /f "delims=" %%i in ('dir /b /a-d "*eu_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_E.bin"
for /f "delims=" %%i in ('dir /b /a-d "*jp_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_J.bin"
for /f "delims=" %%i in ('dir /b /a-d "*jp_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_J.bin"
for /f "delims=" %%i in ('dir /b /a-d "*us_scd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_U.bin"
for /f "delims=" %%i in ('dir /b /a-d "*us_segacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_U.bin"
exit /b

:KEGS
for /f "delims=" %%i in ('dir /b/a-d "*Rom03gd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /f "delims=" %%i in ('dir /b/a-d "*APPLE2GS*.rom2"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /f "delims=" %%i in ('dir /b/a-d "ROM 03"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /f "delims=" %%i in ('dir /b/a-d "ROM 01"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /f "delims=" %%i in ('dir /b/a-d "xgs.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
exit /b

:MAME
for /f "delims=" %%i in ('dir /b/a-d "neocd.bin"') do "%SEVENZIP%" a "neocdz.zip" "%%~i"
for /f "delims=" %%i in ('dir /b/a-d "000-lo.lo"') do "%SEVENZIP%" a "neocdz.zip" "%%~i"
for /f "delims=" %%i in ('dir /b/a-d "neocd.zip"') do copy /Y "%%~i" %GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "neogeo.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "cpzn1.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "cpzn2.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "cvs.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "decocass.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "pgm.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "playch10.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /f "delims=" %%i in ('dir /b/a-d "skns.zip"') do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
exit /b

:FBA
for /f "delims=" %%i in ('dir /b/a-d "neocdz.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /f "delims=" %%i in ('dir /b/a-d "uni-bios.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /f "delims=" %%i in ('dir /b/a-d "neocd.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /f "delims=" %%i in ('dir /b/a-d "neocd.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /f "delims=" %%i in ('dir /b/a-d "neogeo.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
exit /b

:NEORAINE
for /f "delims=" %%i in ('dir /b/a-d "neocd.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NEORAINE%"
for /f "delims=" %%i in ('dir /b/a-d "neocdz.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NEORAINE%"
for /f "delims=" %%i in ('dir /b/a-d "neocd.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NEORAINE%"
exit /b

:AT8E
for /f "delims=" %%i in ('dir /b/a-d "5200.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%AT8E%"
for /f "delims=" %%i in ('dir /b/a-d "5200.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%AT8E%"
exit /b

:ALTRA
for /f "delims=" %%i in ('dir /b/a-d "*5200*.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /f "delims=" %%i in ('dir /b/a-d "*5200*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /f "delims=" %%i in ('dir /b/a-d "*ATARIOSA*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /f "delims=" %%i in ('dir /b/a-d "*ATARIBAS*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /f "delims=" %%i in ('dir /b/a-d "*ATARIOSB*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /f "delims=" %%i in ('dir /b/a-d "*ATARIXL*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /f "delims=" %%i in ('dir /b/a-d "*ATARIBAS*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
exit /b

:STEEM
for /f "delims=" %%i in ('dir /b/a-d "eTOS*.img"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /f "delims=" %%i in ('dir /b/a-d "TOS*.img"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /f "delims=" %%i in ('dir /b/a-d "TOS*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /f "delims=" %%i in ('dir /b/a-d "*kaos*.img"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /f "delims=" %%i in ('dir /b/a-d "*kaos*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
exit /b

:VGBA
for /f "delims=" %%i in ('dir /b/a-d "GBA*.rom"') do copy /y "%%~i" "%GBE%\%EMUZ%\%VGBA%"
for /f "delims=" %%i in ('dir /b/a-d "gba*.*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%VGBA%"
exit /b

:NOGBA
for /f "delims=" %%i in ('dir /b/a-d "GBA*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
for /f "delims=" %%i in ('dir /b/a-d "biosnds7.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
for /f "delims=" %%i in ('dir /b/a-d "biosnds9.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
for /f "delims=" %%i in ('dir /b/a-d "firmware.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
exit /b

:FM7
for /f "delims=" %%i in ('dir /b/a-d "boot_dos.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "boot_bas.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "boot_mmr.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "dicrom.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "extsub.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "fbasic*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "f-basic*.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "Initiate.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "Kanji.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "Kanji2.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "Subsys_a.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "Subsys_b.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "Subsys_c.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /f "delims=" %%i in ('dir /b/a-d "SubsysCG.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
exit /b


:FUSN
for /f "delims=" %%i in ('dir /b /a-d "*32X*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "32X_M*"') do SET 32XM=%%i
for /f "delims=" %%i in ('dir /b /a-d "32X_S*"') do SET 32XS=%%i
for /f "delims=" %%i in ('dir /b /a-d "32X_G*"') do SET 32XG=%%i
for /f "delims=" %%i in ('dir /b /a-d "*eu_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*eu_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*jp_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*jp_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*us_scd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*us_segacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
exit /b

:NULLDC
for /f "delims=" %%i in ('dir /b /a-d "DC - BIOS*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data\dc_BIOS.bin"
for /f "delims=" %%i in ('dir /b /a-d "DC - Flash*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data\dc_flash.bin"
for /f "delims=" %%i in ('dir /b /a-d "DC - Utopia CD Loader V1.1*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data"
for /f "delims=" %%i in ('dir /b /a-d "DC - VMS BIOS (Full)*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data"
for /f "delims=" %%i in ('dir /b /a-d "dc_*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data"
exit /b

:OOTK
for /f "delims=" %%i in ('dir /b /a-d "*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%OOTK%"
exit /b

:BMSX
for /f "delims=" %%i in ('dir /b /a-d "DISK.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "DISK2.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "DOS.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "FMPAC.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX2.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX2P.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX2PEXT.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
exit /b

:DMUL
for /f "delims=" %%i in ('dir /b /a-d "dc.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "*NAOMI*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "f355bios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "hod2bios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "airlbios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "*%ATMS%*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "awbios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
exit /b


:XM6
for /f "delims=" %%i in ('dir /b /a-d "*X68K*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "*X68000*"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "*X68000*"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "keyconf.dat"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "iplrom.dat"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "cgrom.dat"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "CG.ROM"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "BOOT.ROM"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
exit /b

:SSF
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
for /f "delims=" %%i in ('dir /b /a-d "*Saturn*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
for /f "delims=" %%i in ('dir /b /a-d "BIOS(EUR)*"') do (
SET SSFB=%%i
copy /Y "%SSFB%" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
)
for /f "delims=" %%i in ('dir /b /a-d "BIOS(USA)*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "BIOS(JAP)*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "SS - BIOS V1.00*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%i
)
for /f "delims=" %%i in ('dir /b /a-d "SS - BIOS V1.01*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%I
)
for /f "delims=" %%i in ('dir /b /a-d "SS - BIOS V1.02*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=SS - BIOS V1.02.bin
)
for /f "delims=" %%i in ('dir /b/a-d "20091.bin"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
SET SSFSTV=%%i
)
for /f "delims=" %%i in ('dir /b/a-d "stv110.bin"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
SET SSFSTV=%%i
)
exit /b

:PCSX2
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "EROM.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "PS2 Bios 30004R V6 Pal.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "PS2 Bios 30004R V6 Pal.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "PS2 Bios 30004R V6 Pal.MEC"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "PS2 Bios 30004R V6 Pal.NVM"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "rom1.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "ROM2.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70004_BIOS_V12_PAL_200.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70004_BIOS_V12_PAL_200.EROM"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70004_BIOS_V12_PAL_200.MEC"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70004_BIOS_V12_PAL_200.NVM"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70004_BIOS_V12_PAL_200.ROM1"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70012_BIOS_V12_USA_200.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70004_BIOS_V12_PAL_200.ROM2"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70012_BIOS_V12_USA_200.MEC"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH-70012_BIOS_V12_USA_200.NVM"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph10000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph10000.NVM"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph39001.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph39001.MEC"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph39001.NVM"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
exit /b

:PCSXR
for /f "delims=" %%i in ('dir /b/a-d "Dtlh3000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Dtlh3002.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH1001.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH101.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5000.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5500.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph5501.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph5502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph7000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH7001.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph7003.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph7502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
exit /b

:PSX
for /f "delims=" %%i in ('dir /b/a-d "Dtlh3000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Dtlh3002.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH1001.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH101.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5000.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5500.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5501.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph5502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph7000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH7001.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph7003.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph7502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
exit /b

:EPSXE
for /f "delims=" %%i in ('dir /b/a-d "Dtlh3000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Dtlh3002.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH1001.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH101.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5000.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH5500.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph5501.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph5502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph7000.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "SCPH7001.BIN"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "Scph7003.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /f "delims=" %%i in ('dir /b/a-d "scph7502.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
exit /b

:FMUNZ
for /f "delims=" %%i in ('dir /b/a-d "FMT_*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FMUNZ%"
for /f "delims=" %%i in ('dir /b /a-d "FMT*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FMUNZ%"
exit /b

:NOSTL
for /f "delims=" %%i in ('dir /b/a-d "grom.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOSTL%\"
for /f "delims=" %%i in ('dir /b/a-d "exec.bin"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOSTL%\"
exit /b

:WCDI
mkdir "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "cdi200a.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "cdi200b.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "cdi490a.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "cdi910.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "impega.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "vmpega.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ('dir /b/a-d "xmpegx.rom"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
exit /b

:VJAG
for /f "delims=" %%i in ('dir /b /a-d "*Jaguar*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%VJAG%\eeproms"
exit /b

:FSUAE
for /f "delims=" %%a in ('dir /b/a-d "*Kick*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A1000*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A1200*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A2500*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A3000*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A4000*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A500*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A600*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*EXTENDED*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%"
for /f "delims=" %%a in ('dir /b/a-d "*CD32*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*CDTV*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%"
exit /b

:FOURDO
for /f "delims=" %%a in ('dir /b /a-d "*panaf*"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "*sanyo*"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "bios.rom"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "*3DO*.bin"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "Goldstar.bin"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%"
exit /b

:PROSYS
for /f "delims=" %%a in ('dir /b /a-d "*7800*"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%PROSYS%" 
exit /b


:MESS
SET EMUZN=
call "%GBC%\messbios.bat">>"%GBC%\logs\messbios.log"
if emuExists==1 (goto :EmulatorAlert) ELSE (goto :sortd)
exit /b

:EmulatorAlert
"%GBC$%\wbox.exe" "RJ_GUI" "^^It appears you have BIOS files for which you have no emulator.^^" "Thanks" /AL /BW=150 /TM=3
if %ERRORLEVEL%==1 "goto :sortd

:sortd
%GBD%
cd "%GBC%\net\BIOS" 