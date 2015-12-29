del /s /q "%GBE%\%EMUZ%\inst.ini"
for /f "delims=" %%a in ('dir /b/ad "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~a"
for /f "delims=" %%a in ('dir /b /ad "%GBE%\%EMUZ%"') do echo %%~a>>"%GBE%\%EMUZ%\inst.ini"
for %%R in ("%GBE%\%EMUZ%\inst.ini") do if %%~zR neq 0 goto :GETLIST
"%GBC%\wbox.exe" "RJ_GUI" "^^No Emulators have been installed.^To install your BIOS files, install an emulator.^" "Thanks" /TM=5
exit /b

:GETLIST
pushd "%GBC%\net\%BIOS%"
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do (
SET CVAREMU=%%~a
call :GETVAR
)
popd
exit /b

:GETVAR
if "%CVAREMU%"=="%MAME%" exit /b
if "%CVAREMU%"=="%MESS%" exit /b
set SHRTN=
if not exist "%GBC%\net\CRC\%CVAREMU%.set" exit /b
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call :%SHRTE%
exit /b

:DMUL
copy /Y "*naomi*" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "f355bios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "hod2bios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "airlbios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "awbios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "dc.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
exit /b

:FBA
copy /Y "neocdz.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neocd.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neogeo.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "uni-bios.rom" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neocd.bin" "%GBE%\%EMUZ%\%FBA%"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%FBA%\neocdz.zip" "neocd.bin"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%FBA%\neocdz.zip" "000-lo.lo"
copy /Y "neocd.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neogeo.zip" "%GBE%\%EMUZ%\%FBA%"
exit /b

:NEORAINE
"%SEVENZIP%" a "%GBE%\%EMUZ%\%NEORAINE%\neocdz.zip" "neocd.bin"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%NEORAINE%\neocdz.zip" "000-lo.lo"
copy /Y "neocd.bin" "%GBE%\%EMUZ%\%NEORAINE%"
copy /Y "neocd.zip" "%GBE%\%EMUZ%\%NEORAINE%"
exit /b

:NULLDC
copy /Y "DC - BIOS*" "%GBE%\%EMUZ%\%NULLDC%\data\dc_bios.bin"
copy /Y "DC - Flash*" "%GBE%\%EMUZ%\%NULLDC%\data\dc_flash.bin"
copy /Y "DC - Utopia CD Loader V1.1*" "%GBE%\%EMUZ%\%NULLDC%\data"
copy /Y "DC - VMS BIOS Full*" "%GBE%\%EMUZ%\%NULLDC%\data"
copy /Y "dc_*" "%GBE%\%EMUZ%\%NULLDC%\data"
exit /b

:VGBA
copy /Y "GBA*.rom" "%GBE%\%EMUZ%\%VGBA%"
exit /b

:NOGBA
copy /Y "GBA*.rom" "%GBE%\%EMUZ%\%NOGBA%"
copy /Y "biosnds7.rom" "%GBE%\%EMUZ%\%NOGBA%"
copy /Y "biosnds9.rom" "%GBE%\%EMUZ%\%NOGBA%"
copy /Y "firmware.bin" "%GBE%\%EMUZ%\%NOGBA%"
exit /b

:DESMUME
copy /Y "biosnds7.rom" "%GBE%\%EMUZ%\%DESMUME%\Roms"
copy /Y "biosnds9.rom" "%GBE%\%EMUZ%\%DESMUME%\Roms"
copy /Y "firmware.bin" "%GBE%\%EMUZ%\%DESMUME%\Roms"
exit /b

:XM6
copy /Y "*X68000*" "%GBE%\%EMUZ%\%XM6%"
copy /Y "*X68000*" "%GBE%\%EMUZ%\%XM6%"
copy /Y "iplrom.dat" "%GBE%\%EMUZ%\%XM6%"
copy /Y "cgrom.dat" "%GBE%\%EMUZ%\%XM6%"
copy /Y "keyconf.dat" "%GBE%\%EMUZ%\%XM6%"
exit /b

:FUSN
copy /Y "Sega CD*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*Mega CD*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "Mega CD*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*32X*" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*eu*mcd2*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*eu*megacd*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*jp*mcd*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*jp*mcd1_9112.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*us*scd*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*us*segacd*.bin" "%GBE%\%EMUZ%\%FUSN%"
exit /b

:AT8E
copy /Y "*5200*.bin" "%GBE%\%EMUZ%\%AT8E%"
copy /Y "*5200*.rom" "%GBE%\%EMUZ%\%AT8E%"
exit /b

:SSF
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "BIOS(EUR)*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "BIOS(JAP)*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "BIOS(USA)*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "*V1.00*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "*V1.01*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "*V1.02*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "20091.bin" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "epr19730.ic8" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17951a.s" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17952a.s" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17953a.ic8" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17954a.s" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "stv110.bin" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
exit /b

:FMUNZ
copy /Y "EROM.BIN" "%GBE%\%EMUZ%\%FMUNZ%"
copy /Y "FMT*" "%GBE%\%EMUZ%\%FMUNZ%"
exit /b

:MEDN
copy /Y "spch55*.bin" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "SCPH5501.BIN" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "Scph5502.bin" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "disksys.rom" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*pcfx*.bin" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom"
copy /Y "*pcfx*.rom" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom"
copy /Y "*CD-ROM System*.pce" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*Super CD-ROM2 System*.pce" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*TurboGrafx CD*.pce" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "SYSCARD3.PCE" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "lynx.bin" "%GBE%\%EMUZ%\%MEDN%\lynxboot.img"
copy /Y "lynxa.bin" "%GBE%\%EMUZ%\%MEDN%\lynxboot.img"
copy /Y "lynxboot.img" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "disksys.rom" "%GBE%\%EMUZ%\%MEDN%"
exit /b

:RTROA
copy /Y "7800 BIOS (U).rom" "%GBE%\%EMUZ%\%RTROA%\system"
copy /Y "*pcfx*.bin" "%GBE%\%EMUZ%\%RTROA%\system\pcfx.rom"
copy /Y "*pcfx*.rom" "%GBE%\%EMUZ%\%RTROA%\system\pcfx.rom"
copy /Y "*eu*mcd2*.bin" "%GBE%\%EMUZ%\%RTROA%\system\Bios_CD_E.bin"
copy /Y "*eu*megacd*.bin" "%GBE%\%EMUZ%\%RTROA%\system\Bios_CD_E.bin"
copy /Y "*jp*mcd*.bin" "%GBE%\%EMUZ%\%RTROA%\system\Bios_CD_J.bin"
copy /Y "*jp*mcd1_9112.bin" "%GBE%\%EMUZ%\%RTROA%\system\Bios_CD_J.bin"
copy /Y "*us*scd*.bin" "%GBE%\%EMUZ%\%RTROA%\system\Bios_CD_U.bin"
copy /Y "*us*segacd*.bin" "%GBE%\%EMUZ%\%RTROA%\system\Bios_CD_U.bin"
copy /Y "SYSCARD3.PCE" "%GBE%\%EMUZ%\%RTROA%\system"
exit /b

:XM7
copy /Y "boot_dos.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "boot_bas.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "boot_mmr.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "dicrom.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "extsub.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "fbasic*.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "f-basic*.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Initiate.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Kanji.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Kanji2.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Subsys_a.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Subsys_b.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Subsys_c.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "SubsysCG.rom" "%GBE%\%EMUZ%\%XM7%"
exit /b

:STEEM
copy /Y "TOS*.rom" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "TOS*.img" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "eTOS*.img" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "kaos*.rom" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "kaos*.img" "%GBE%\%EMUZ%\%STEEM%"
exit /b

:ALTRA
copy /Y "*ATARIOSA*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*ATARIOSB*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*ATARIXL*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*ATARIBAS*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*5200*.rom" "%GBE%\%EMUZ%\%ALTRA%"
exit /b

:PCSX2
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "PS2 Bios 30004R V6 Pal.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "PS2 Bios 30004R V6 Pal.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "PS2 Bios 30004R V6 Pal.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.BIN" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.EROM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.ROM1" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.ROM2" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70012_BIOS_V12_USA_200.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70012_BIOS_V12_USA_200.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70012_BIOS_V12_USA_200.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph10000.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph10000.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph39001.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph39001.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph39001.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
exit /b

:PSX
mkdir "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "Dtlh3000.bin" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "Dtlh3002.bin" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH1002.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH1001.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH101.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH5000.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH5501.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "Scph5502.bin" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "Scph7000.bin" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "SCPH7001.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "Scph7003.bin" "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "scph7502.bin" "%GBE%\%EMUZ%\%PSX%\BIOS"
exit /b

:EPSXE
mkdir "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "Dtlh3000.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "Dtlh3002.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH1002.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH1001.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH101.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH5000.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH5501.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "Scph5502.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "Scph7000.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "SCPH7001.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "Scph7003.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "scph7502.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
exit /b

:PCSXR
mkdir "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "Dtlh3000.bin" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "Dtlh3002.bin" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH1002.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH1001.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH101.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH5000.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH5501.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "Scph5502.bin" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "Scph7000.bin" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "SCPH7001.BIN" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "Scph7003.bin" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
copy /Y "scph7502.bin" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
exit /b

:KEGS
copy /Y "*Rom03gd*" "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "*APPLE2GS*.rom2" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "ROM 03" "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "ROM 01" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "xgs.rom" "%GBE%\%EMUZ%\%KEGS%\ROM" 
exit /b

:NOSTL
copy /Y "ivoice.bin" "%GBE%\%EMUZ%\%NOSTL%"
copy /Y "ecs.bin" "%GBE%\%EMUZ%\%NOSTL%"
copy /Y "grom.bin" "%GBE%\%EMUZ%\%NOSTL%"
copy /Y "exec.bin" "%GBE%\%EMUZ%\%NOSTL%"
exit /b

:BMSX
copy /Y "DISK.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "DISK2.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "DOS.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "FMPAC.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX2.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX2P.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX2PEXT.ROM" "%GBE%\%EMUZ%\%BMSX%"
exit /b

:ATRI
copy /Y "5200.rom" "%GBE%\%EMUZ%\%AT8E%"
copy /Y "5200.bin" "%GBE%\%EMUZ%\%AT8E%"
exit /b

:CDI
copy /y "cdi200a.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "cdi200b.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "cdi490a.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "cdi910.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "impega.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "vmpega.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "xmpegx.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
exit /b

:FSUAE
copy /y "*EXTENDED*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*CD32*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*CDTV*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*Kick*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "Kickstart*" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A1000*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A1200*.rom" "%GBE%\%EMUZ%\%FSUAE%" 
copy /y "*A2500*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A3000*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A4000*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A500*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A600*.rom" "%GBE%\%EMUZ%\%FSUAE%"
exit /b

:FOURDO
copy /y "Goldstar.bin" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "*3DO*.bin" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "bios.rom" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "panaf*" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "sanyot*" "%GBE%\%EMUZ%\%FOURDO%"
exit /b

:CLOSEOUT
