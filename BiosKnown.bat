for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SYSCARD3.PCE"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*TurboGrafx CD*.pce"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*CD-ROM System*.pce"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*Super CD-ROM2 System*.pce"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*pcfx*.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "disksys.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "lynx*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH5500.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH5501.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Scph5502.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Kick*1.3*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*eu_mcd*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*eu_megacd*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*jp_mcd*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*jp_megacd*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*us_scd*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*us_segacd*"') do attrib %HIDEN% "%%~i
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*Rom03gd*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*APPLE2GS*.rom2"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "ROM 03"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "ROM 01"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "xgs.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "neocd.bin"') do "%SEVENZIP%" a "neocdz.zip" "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "000-lo.lo"') do "%SEVENZIP%" a "neocdz.zip" "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "neocd.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "neogeo.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cpzn1.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cpzn2.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cvs.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "decocass.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "pgm.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "playch10.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "skns.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "neocdz.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "uni-bios.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "neocd.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*5200.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*5200.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*ATARIOSA*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*ATARIBAS*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*ATARIOSB*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*ATARIXL*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*ATARIBAS*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "eTOS*.img"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "TOS*.img"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "TOS*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*kaos*.img"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*kaos*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "GBA*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "gba*.*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "biosnds7.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "biosnds9.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "firmware.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "boot_dos.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "boot_bas.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "boot_mmr.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "dicrom.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "extsub.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "fbasic*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "f-basic*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Initiate.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Kanji.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Kanji2.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Subsys_a.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Subsys_b.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Subsys_c.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SubsysCG.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*32X*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DC - BIOS*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DC - Flash*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DC - Utopia CD Loader V1.1*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DC - VMS BIOS (Full)*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "dc_*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*.pce"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DISK.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DISK2.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "DOS.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "FMPAC.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "MSX.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "MSX2.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "MSX2P.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "MSX2PEXT.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "dc.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*NAOMI*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "f355bios.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "hod2bios.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "airlbios.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*%ATMS%*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "awbios.zip"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*X68K*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*X68000*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*X68000*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "keyconf.dat"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "iplrom.dat"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cgrom.dat"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "CG.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "BOOT.ROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*Saturn*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "BIOS(EUR)*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "BIOS(USA)*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "BIOS(JAP)*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SS - BIOS V1.00*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SS - BIOS V1.01*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SS - BIOS V1.02*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "20091.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "stv110.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "EROM.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "PS2 Bios 30004R V6 Pal.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "PS2 Bios 30004R V6 Pal.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "PS2 Bios 30004R V6 Pal.MEC"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "PS2 Bios 30004R V6 Pal.NVM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "rom1.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "ROM2.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70004_BIOS_V12_PAL_200.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70004_BIOS_V12_PAL_200.EROM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70004_BIOS_V12_PAL_200.MEC"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70004_BIOS_V12_PAL_200.NVM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70004_BIOS_V12_PAL_200.ROM1"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70012_BIOS_V12_USA_200.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70004_BIOS_V12_PAL_200.ROM2"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70012_BIOS_V12_USA_200.MEC"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH-70012_BIOS_V12_USA_200.NVM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "scph10000.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "scph10000.NVM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "scph39001.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "scph39001.MEC"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "scph39001.NVM"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Dtlh3000.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Dtlh3002.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH1001.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH101.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH5000.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH5500.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Scph5501.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Scph5502.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Scph7000.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "SCPH7001.BIN"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Scph7003.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "scph7502.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*FMT*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "grom.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "exec.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cdi200a.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cdi200b.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cdi490a.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "cdi910.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "impega.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "vmpega.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "xmpegx.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*Jaguar*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*Kick*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A1000*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A1200*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A2500*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A3000*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A4000*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A500*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*A600*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*EXTENDED*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*CD32*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*CDTV*.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*panaf*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*sanyo*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "bios.rom"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*3DO*.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "Goldstar.bin"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*7800*"') do attrib %HIDEN% "%%~i"
for /f "delims=" %%i in ('dir /b/a-d%SRCH% "*7800*"') do attrib %HIDEN% "%%~i"