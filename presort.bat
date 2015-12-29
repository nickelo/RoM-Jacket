del /q "%GBC%\conselect.ini"
pushd "%GBG%\%GAM%\%CONS%"
for /f "tokens=1,2 delims=&" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\*&*"') do rename "%%~a&%%~b" "%%~a-%%~b"
for /f "delims=" %%d in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do rd /q "%%~d"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
set TOREN=%%~a
CALL :LIBCHK
)
popd
exit /b

REM for /f "tokens=1,2,3,4,5,6,7,8,9 delims=_()[]'" %%a in (%TOREN%") do set TOREN=%%~a%%~b%%~c%%~d%%~e%%~f%%~g
:LIBCHK
SET PROPER=
:ATMS
for /f "delims=" %%a in ('dir /b/ad-h "*atomiswave*" "*Sammy Atom*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ATMS%&& goto :RENAMEDIR
:SEGM2
for /f "delims=" %%a in ('dir /b/ad-h "*model2*" "*model*2*" "sm2" "sm 2"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGM2%&& goto :RENAMEDIR
:NEOGE
for /f "delims=" %%a in ('dir /b/ad-h "neogeo" "neo-geo" "neo geo" "NEO*AES*" "NEO*MVS*" "NEO*AES*" "SNK*MVS*" "SNK*aes*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOGE%&& goto :RENAMEDIR
:NEOCD
for /f "delims=" %%a in ('dir /b/ad-h "SNK*CD*" "neocd*" "neo cd*" "neogeocd*" "*neo-geo cd*" "*neo*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOCD%&& goto :RENAMEDIR
:CPS3
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*3*" "capcom play system 3*" "*cps3*" "CPS*III*" "CPSIII*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CPS3%&& goto :RENAMEDIR
:CPS2
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*2*" "capcom play system 2*" "*cps2*" "CPS*II*" "CPSII*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CPS2%&& goto :RENAMEDIR
:CPS
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*1*" "*capcom play system Game*" "*capcom play system*" "cps1*" "CPS*I*" "CPSI*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CPS%&& goto :RENAMEDIR
:ARCD
for /f "delims=" %%a in ('dir /b/ad-h "mame*" "*arcade" "arcade*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ARCD%&& goto :RENAMEDIR
:SEGAG
for /f "delims=" %%a in ('dir /b/ad-h "*genesis*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGAG%&& goto :RENAMEDIR
:HIKARU
for /f "delims=" %%a in ('dir /b/ad-h "*hikaru*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%HIKARU%&& goto :RENAMEDIR
:AMLG
for /f "delims=" %%a in ('dir /b/ad-h "*american*laser*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AMLG%&& goto :RENAMEDIR
:SEGMCD
for /f "delims=" %%a in ('dir /b/ad-h "*megacd*" "*mega*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGMCD%&& goto :RENAMEDIR
:PS1
for /f "delims=" %%a in ('dir /b/ad-h "*psx*" "*ps1*" "*playstation" "*ps*1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PS1%&& goto :RENAMEDIR
:PSP
for /f "delims=" %%a in ('dir /b/ad-h "*psp*" "*playstation*portable*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PSP%&& goto :RENAMEDIR
:PS2
for /f "delims=" %%a in ('dir /b/ad-h "*ps2*" "*ps 2*" "*playstation 2*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PS2%&& goto :RENAMEDIR
:SGFX
for /f "delims=" %%a in ('dir /b/ad-h "*supergrafx*" "*super*grafx*" "*sgx"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SGFX%&& goto :RENAMEDIR
:NAOMI
for /f "delims=" %%a in ('dir /b/ad-h "naomi*" "*naomi*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NAOMI%&& goto :RENAMEDIR
:SEGM3
for /f "delims=" %%a in ('dir /b/ad-h "model3*""*model3*" "model 3*" "*model 3*" "sm3" "sm 3"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGM2%&& goto :RENAMEDIR
:TGCD
for /f "delims=" %%a in ('dir /b/ad-h "*turbografx*16 CD*" "*turbografx*CD"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TGCD%&& goto :RENAMEDIR
:TG16
for /f "delims=" %%a in ('dir /b/ad-h "*turbografx-16*" "*turbo*grafx*16*" "*tg*16*" "*tg16*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TG16%&& goto :RENAMEDIR
:PCECD
for /f "delims=" %%a in ('dir /b/ad-h "*pc*engine*CD*" "*pce cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCECD%&& goto :RENAMEDIR
:PCENG
for /f "delims=" %%a in ('dir /b/ad-h "*pcengine*" "NEC*pce*" "*pc*engine"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCENG%&& goto :RENAMEDIR
:SEGAMD
for /f "delims=" %%a in ('dir /b/ad-h "*mega drive*" "*megadrive*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGAMD%&& goto :RENAMEDIR
:APL2E
for /f "delims=" %%a in ('dir /b/ad-h "*2e*" "*IIe*" "*2*e*" "*II e*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%APL2E%&& goto :RENAMEDIR
:SEGMS
for /f "delims=" %%a in ('dir /b/ad-h "*mastersystem*" "*master*system*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGMS%&& goto :RENAMEDIR
:SEGDC
for /f "delims=" %%a in ('dir /b/ad-h "*dreamcast*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGDC%&& goto :RENAMEDIR
:SEGG
for /f "delims=" %%a in ('dir /b/ad-h "*gamegear*" "*game*gear*" "sega gg*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGG%&& goto :RENAMEDIR
:SEGCD
for /f "delims=" %%a in ('dir /b/ad-h "segacd*" "sega*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGCD%&& goto :RENAMEDIR
:SSAT
for /f "delims=" %%a in ('dir /b/ad-h "*saturn*" "*satourne*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SSAT%&& goto :RENAMEDIR
:SG32X
for /f "delims=" %%a in ('dir /b/ad-h "*32x*" "*32*X*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SG32X%&& goto :RENAMEDIR
:TOUHU	
for /f "delims=" %%a in ('dir /b/ad-h "*Tohou*" "*Touhou*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TOUHU%&& goto :RENAMEDIR
:CDI
for /f "delims=" %%a in ('dir /b/ad-h "*Philips*CDI*" "*Philips*CD*I*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CDI%&& goto :RENAMEDIR
:SEGAP
for /f "delims=" %%a in ('dir /b/ad-h "*pico*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGAP%&& goto :RENAMEDIR
:CLOOP
for /f "delims=" %%a in ('dir /b/ad-h "*Loopy*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CLOOP%&& goto :RENAMEDIR
:CAS1K
for /f "delims=" %%a in ('dir /b/ad-h "*PV 1*" "*PV_1*" "*PV-1*" "*PV1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CAS1K%&& goto :RENAMEDIR
:CAS2K
for /f "delims=" %%a in ('dir /b/ad-h "*PV 2*" "*PV_2*" "*PV-2*" "*PV2*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CAS2K%&& goto :RENAMEDIR
:VLAS3
for /f "delims=" %%a in ('dir /b/ad-h "*laser*310*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VLAS3%&& goto :RENAMEDIR
:VLAS2
for /f "delims=" %%a in ('dir /b/ad-h "*laser*200*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VLAS2%&& goto :RENAMEDIR
:VECTX
for /f "delims=" %%a in ('dir /b/ad-h "GCE*Vec*" "*Vectrex*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VECTX%&& goto :RENAMEDIR
:LYNX
for /f "delims=" %%a in ('dir /b/ad-h "*lynx*"') do if /i "%TOREN%"=="%%~a" set PROPER=%LYNX%&& goto :RENAMEDIR
:N64
for /f "delims=" %%a in ('dir /b/ad-h "nintendo*64*" "n64*" "nintendo64*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%N64%&& goto :RENAMEDIR
:NDS
for /f "delims=" %%a in ('dir /b/ad-h "NDS*" "Nintendo*DS*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NDS%&& goto :RENAMEDIR
:WIIU
for /f "delims=" %%a in ('dir /b/ad-h "*Wii-u*" "*Wiiu*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%WIIU%&& goto :RENAMEDIR
:WII
for /f "delims=" %%a in ('dir /b/ad-h "*Wii*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%WII%&& goto :RENAMEDIR
:NGC
for /f "delims=" %%a in ('dir /b/ad-h "*gamecube*" "*game cube*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGC%&& goto :RENAMEDIR
:GANDW
for /f "delims=" %%a in ('dir /b/ad-h "*Game&Watch*" "*Game and Watch*" "*Game & Watch*" "*Game n' watch*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%GANDW%&& goto :RENAMEDIR
:NVB
for /f "delims=" %%a in ('dir /b/ad-h "*Virtual*boy*" "*Virtualboy*" "*V*boy*" "*Vboy*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NVB%&& goto :RENAMEDIR
:NGBC
for /f "delims=" %%a in ('dir /b/ad-h "*gbcolor*" "*gb*color" "*nintendo gb color*" "*gameboy*color" "*game boy*color"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGBC%&& goto :RENAMEDIR
:NGBA
for /f "delims=" %%a in ('dir /b/ad-h "*gb advance Games" "*gb advance" "*gba Games" "*gba" "*nintendo gba Games" "*nintendo gba*" "*nintendo game boy advance Game*" "*nintendo game boy advance*" "*nintendo gb advance Games" "*nintendo gb advance"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGBA%&& goto :RENAMEDIR
:SUPRGB
for /f "delims=" %%a in ('dir /b/ad-h "*super*game*boy*" "*supergameboy*" "*supergb*" "*super gb*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGB%&& goto :RENAMEDIR
:NGB
for /f "delims=" %%a in ('dir /b/ad-h "*ngb roms" "*eboy game*" "*eboy rom*" "*game boy game*" "*gameboy" "*game boy" "*nintendo gb Games" "*nintendo gb"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGB%&& goto :RENAMEDIR
:NES
for /f "delims=" %%a in ('dir /b/ad-h "*nes*" "n.e.s*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NES%&& goto :RENAMEDIR
:NFAM
for /f "delims=" %%a in ('dir /b/ad-h "*famicom disk*" "*famicom" "fdc"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NFAM%&& goto :RENAMEDIR
:SNES
for /f "delims=" %%a in ('dir /b/ad-h "snes*" "Super Nes*" "Super Nintendo*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SNES%&& goto :RENAMEDIR
:SFAM
for /f "delims=" %%a in ('dir /b/ad-h "*super famicom*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SFAM%&& goto :RENAMEDIR
:PCFX
for /f "delims=" %%a in ('dir /b/ad-h "*pc-fx*" "*pcfx*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCFX%&& goto :RENAMEDIR
:TAITX
for /f "delims=" %%a in ('dir /b/ad-h "Taito*Type*" "*TYPE*X*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TAITX%&& goto :RENAMEDIR
:SAMC
for /f "delims=" %%a in ('dir /b/ad-h "*SamCoupe*" "Sam Coupe*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SAMC%&& goto :RENAMEDIR
:ACBBC
for /f "delims=" %%a in ('dir /b/ad-h "*BBC*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACBBC%&& goto :RENAMEDIR
:ACELE
for /f "delims=" %%a in ('dir /b/ad-h "Acorn*Electron*" "Electron*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACELE%&& goto :RENAMEDIR
:AT8B
for /f "delims=" %%a in ('dir /b/ad-h "Atari 8Bit*" "Atari*8-Bit*" "8-Bit*Atari*" "8Bit*Atari*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AT8B%&& goto :RENAMEDIR
:AT8H
for /f "delims=" %%a in ('dir /b/ad-h "Atari800*" "Atari*800*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AT8H%&& goto :RENAMEDIR
:ATST
for /f "delims=" %%a in ('dir /b/ad-h "AtariST*" "Atari*ST*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ATST%&& goto :RENAMEDIR
:EMARC
for /f "delims=" %%a in ('dir /b/ad-h "Emerson*" "Arcadia*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%EMARC%&& goto :RENAMEDIR
:BWS
for /f "delims=" %%a in ('dir /b/ad-h "*Wonderswan Games" "*Wonderswan" "*Wonder swan Games" "*Wonder swan" "*Wonderswan Games" "*Wonderswan" "*Bandai Wonderswan Games" "*Bandai Wonderswan"') do if /i "%TOREN%"=="%%~a" SET PROPER=%BWS%&& goto :RENAMEDIR
:BWSC
for /f "delims=" %%a in ('dir /b/ad-h "*Wonderswan Color Games" "*Wonderswan Color" "*Wonder swan Color Games" "*Wonder swan Color" "*Bandai Wonderswan Color Games" "*Bandai Wonderswan Color" "*Color Wonder swan  Games" "*Color Wonder swan" "*Color Wonderswan  Games" "*Color Wonderswan"') do if /i "%TOREN%"=="%%~a" set PROPER=%BWSC%&& goto :RENAMEDIR
:CM64
for /f "delims=" %%a in ('dir /b/ad-h "Commodore64*" "Com64*" "Com 64*" "C64*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CM64%&& goto :RENAMEDIR
:P3DO
for /f "delims=" %%a in ('dir /b/ad-h "*3-do*" "*3do*" "*3 d o*" "*3.d.o*" "*3.d.o*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%P3DO%&& goto :RENAMEDIR
:CDI
for /f "delims=" %%a in ('dir /b/ad-h "*CD-I*" "*CDI*" "*C.D.I*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CDI%&& goto :RENAMEDIR
:FMTOWNS
for /f "delims=" %%a in ('dir /b/ad-h "fm-towns*" "f.m.towns*" "*towns"') do if /i "%TOREN%"=="%%~a" SET PROPER=%FMTOWNS%&& goto :RENAMEDIR
:NEOPKTC
for /f "delims=" %%a in ('dir /b/ad-h "*neo*pocket*color" "*NeoPocket*Color"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOPKTC%&& goto :RENAMEDIR
:NEOPKT
for /f "delims=" %%a in ('dir /b/ad-h "*neo pocket" "*neo*pocket"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOPKT%&& goto :RENAMEDIR
:FLASH
for /f "delims=" %%a in ('dir /b/ad-h "Adobe flash*" "internet games" "*browser*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%FLASH%&& goto :RENAMEDIR
:WIN32
for /f "delims=" %%a in ('dir /b/ad-h "*Windows Games*" "*Games for windows*"') do if /i "%TOREN%"=="%%~a" set PROPER=%WIN32%&& goto :RENAMEDIR
:CAMIG
for /f "delims=" %%a in ('dir /b/ad-h "*amiga Games*" "*amiga roms*" "*amiga*500*" "*amiga*1200*"') do if /i "%TOREN%"=="%%~a" set PROPER=%CAMIG%&& goto :RENAMEDIR
:AMIG32
for /f "delims=" %%a in ('dir /b/ad-h "*cd32*" "*cd 32*" "*cd 32*" "cd-32" "*cd-32*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AMIG32%&& goto :RENAMEDIR
:SEG1K
for /f "delims=" %%a in ('dir /b/ad-h "*SG 1*" "*SG-1000*" "*SG1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEG1K%&& goto :RENAMEDIR
:INTEL
for /f "delims=" %%a in ('dir /b/ad-h "mattel intellivision*" "*intellivision*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%INTEL%&& goto :RENAMEDIR
:COLEC
for /f "delims=" %%a in ('dir /b/ad-h "coleco vision*" "colecovision"') do if /i "%TOREN%"=="%%~a" set PROPER=%COLEC%&& goto :RENAMEDIR
:COLADM
for /f "delims=" %%a in ('dir /b/ad-h "Coleco*ADAM*" "*ADAM*COLECO*"') do if /i "%TOREN%"=="%%~a" set PROPER=%COLADM%&& goto :RENAMEDIR
:CMMAX
for /f "delims=" %%a in ('dir /b/ad-h "*Commo*max*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CMMAX%&& goto :RENAMEDIR
:INTFC
for /f "delims=" %%a in ('dir /b/ad-h "*interact*family" "*interact*computer*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%INTFC%&& goto :RENAMEDIR
:RCAS2
for /f "delims=" %%a in ('dir /b/ad-h "*Studio II*" "RCA Studio*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%RCAS2%&& goto :RENAMEDIR
:SCAS
for /f "delims=" %%a in ('dir /b/ad-h "*cassettevision*" "*cassette vision*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SCAS%&& goto :RENAMEDIR
:PCJR
for /f "delims=" %%a in ('dir /b/ad-h "*PC JR*" "*PCJR*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCJR%&& goto :RENAMEDIR
:GALCO
for /f "delims=" %%a in ('dir /b/ad-h "Galeco*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%GALCO%&& goto :RENAMEDIR
:APFIM
for /f "delims=" %%a in ('dir /b/ad-h "APF*IM*" "APF*MP*" "*imaginiation*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%APFIM%&& goto :RENAMEDIR
:APL2GS
for /f "delims=" %%a in ('dir /b/ad-h "*2gs*" "*IIgs*" "*2*gs*" "*II*gs*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%APL2GS%&& goto :RENAMEDIR
:CMPLNX
for /f "delims=" %%a in ('dir /b/ad-h "*Camputer*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CMPLNX%&& goto :RENAMEDIR
:CC128
for /f "delims=" %%a in ('dir /b/ad-h "*commodore*128*" "*C128*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CC128%&& goto :RENAMEDIR
:CHNF
for /f "delims=" %%a in ('dir /b/ad-h "*ChannelF*" "*Channel*F*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CHNF%&& goto :RENAMEDIR
:DRAG32
for /f "delims=" %%a in ('dir /b/ad-h "*Dragon*"') do if /i "%TOREN%"=="%%~a" set PROPER=%DRAG32%&& goto :RENAMEDIR
:DAPHN
for /f "delims=" %%a in ('dir /b/ad-h "*Daphne*"') do if /i "%TOREN%"=="%%~a" set PROPER=%DAPHN%&& goto :RENAMEDIR
:ATXE
for /f "delims=" %%a in ('dir /b/ad-h "*AtariXE*" "Atari*XE*"') do if /i "%TOREN%"=="%%~a" set PROPER=%ATXE%&& goto :RENAMEDIR
:AT26
for /f "delims=" %%a in ('dir /b/ad-h "*2600*" "a26*"') do if /i "%TOREN%"=="%%~a" set PROPER=%AT26%&& goto :RENAMEDIR
:AT52
for /f "delims=" %%a in ('dir /b/ad-h "*5200*" "*a52*"') do if /i "%TOREN%"=="%%~a" set PROPER=%AT52%&& goto :RENAMEDIR
:AT78
for /f "delims=" %%a in ('dir /b/ad-h "*7800*" "*a78*"') do if /i "%TOREN%"=="%%~a" set PROPER=%AT78%&& goto :RENAMEDIR
:MSX2
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x*2*" "*m s x*2*" "*m.s.x*2" "*msx2" "*msx*2"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MSX2%&& goto :RENAMEDIR
:MSXTR
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x*t*r*" "*m s x*t*r*" "*m.s.x*T*" "*msxtr*" "msx turbo*R"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MSXTR%&& goto :RENAMEDIR
:MSX
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x" "*m s x" "*m.s.x" "*msx" "msx"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MSX%&& goto :RENAMEDIR
:MSDS
for /f "delims=" %%a in ('dir /b/ad-h "msdos*" "dos*" "*d.o.s*" "*dosbox*"') do if /i "%TOREN%"=="%%~a" set PROPER=%MSDS%&& goto :RENAMEDIR
:AMSTR
for /f "delims=" %%a in ('dir /b/ad-h "*amstrad*CPC*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AMSTR%&& goto :RENAMEDIR
:ACAN
for /f "delims=" %%a in ('dir /b/ad-h "Funtech*" "*Super Acan*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACAN%&& goto :RENAMEDIR
:AMSGX
for /f "delims=" %%a in ('dir /b/ad-h "*GX4000*" "*GX*4000*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AMSGX%&& goto :RENAMEDIR
:JAGCD
for /f "delims=" %%a in ('dir /b/ad-h "*jaguar cd*" "*jag*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%JAGCD%&& goto :RENAMEDIR
:JAG
for /f "delims=" %%a in ('dir /b/ad-h "jag" "jaguar" "a*jag" "atari jag Game*" "*jag rom*" "*jaguar rom*" "*jaguar Game*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%JAG%&& goto :RENAMEDIR
:FM7
for /f "delims=" %%a in ('dir /b/ad-h "Fujitsu Micro*" "FM-7*" "FM7*" "FM 7*" "F.M*7*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%FM7%&& goto :RENAMEDIR
:OBOR
for /f "delims=" %%a in ('dir /b/ad-h "*beats*of*rage*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%OBOR%&& goto :RENAMEDIR
:PC982
for /f "delims=" %%a in ('dir /b/ad-h "*pc9821*" "*pc*9821*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC982%&& goto :RENAMEDIR
:PC98
for /f "delims=" %%a in ('dir /b/ad-h "*pc98*" "*pc*98*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC98%&& goto :RENAMEDIR
:X68K
for /f "delims=" %%a in ('dir /b/ad-h "*x68*" "*x*68k*" "Sharp*68*" "*68000*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%X68K%&& goto :RENAMEDIR
:SCUM
for /f "delims=" %%a in ('dir /b/ad-h "*Scumm*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SCUM%&& goto :RENAMEDIR
:MUGN
for /f "delims=" %%a in ('dir /b/ad-h "*Mugen*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MUGN%&& goto :RENAMEDIR
:NSATL
for /f "delims=" %%a in ('dir /b/ad-h "*Satella*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NSATL%&& goto :RENAMEDIR
:PCAP
for /f "delims=" %%a in ('dir /b/ad-h "*Popcap*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCAP%&& goto :RENAMEDIR
:SEG7K
for /f "delims=" %%a in ('dir /b/ad-h "*Super*control*station*" "Sega*SF*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEG7K%&& goto :RENAMEDIR
:MACINT
for /f "delims=" %%a in ('dir /b/ad-h "Apple*Macintosh*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MACINT%&& goto :RENAMEDIR
:MZ8
for /f "delims=" %%a in ('dir /b/ad-h "*mz8*" "*mz*8"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MZ8%&& goto :RENAMEDIR
:MZ7
for /f "delims=" %%a in ('dir /b/ad-h "*mz7*" "*mz*7"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MZ7%&& goto :RENAMEDIR
:JUPA
for /f "delims=" %%a in ('dir /b/ad-h "*jupiter*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%JUPA%&& goto :RENAMEDIR
:GACOM
for /f "delims=" %%a in ('dir /b/ad-h "*game*dot*com*" "*game.com*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%GACOM%&& goto :RENAMEDIR
:VC20
for /f "delims=" %%a in ('dir /b/ad-h "*VIC20*" "Com*VIC*20*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VC20%&& goto :RENAMEDIR
:COM16
for /f "delims=" %%a in ('dir /b/ad-h "Commodore*16*" "*C16*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%COM16%&& goto :RENAMEDIR
:CMPET
for /f "delims=" %%a in ('dir /b/ad-h "*CBM*3*" ""*Super pet*" "*Superpet*" "PET 4*" "PET 2*" "*Commo*pet*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CMPET%&& goto :RENAMEDIR
:ENTP64
for /f "delims=" %%a in ('dir /b/ad-h "Enterprise*64*" "*Enterprise64*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ENTP64%&& goto :RENAMEDIR
:ENTP128
for /f "delims=" %%a in ('dir /b/ad-h "Enterprise*128*" "Enterprise128*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ENTP128%&& goto :RENAMEDIR
:MDUC
for /f "delims=" %%a in ('dir /b/ad-h "*MEGA*DUCK*" "*MEGADUCK*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MDUC%&& goto :RENAMEDIR
:ADVV
for /f "delims=" %%a in ('dir /b/ad-h "*Adv*Visi*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ADVV%&& goto :RENAMEDIR
:ACARC
for /f "delims=" %%a in ('dir /b/ad-h "*Archimedes*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACARC%&& goto :RENAMEDIR
:SSTV
for /f "delims=" %%a in ('dir /b/ad-h "sega*stv*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SSTV%&& goto :RENAMEDIR
:VC4K
for /f "delims=" %%a in ('dir /b/ad-h "Interon*vc*" "*VC*4k*" "*VC 4000*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VC4K%&& goto :RENAMEDIR
:SORD
for /f "delims=" %%a in ('dir /b/ad-h "SORD*5*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SORD%&& goto :RENAMEDIR
:PC81
for /f "delims=" %%a in ('dir /b/ad-h "NEC*8001*" "*PC8001*" "*PC*8001*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC81%&& goto :RENAMEDIR
:PC82
for /f "delims=" %%a in ('dir /b/ad-h "NEC*8201*" "*PC8201*" "*PC*8201*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC82%&& goto :RENAMEDIR
:PC88VA
for /f "delims=" %%a in ('dir /b/ad-h "PC*88v*" "*PC*88*V" "*PC88v" "*PC88*v"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC88%&& goto :RENAMEDIR
:PC88
for /f "delims=" %%a in ('dir /b/ad-h "PC*88*" "*PC*88*" "*PC88*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC88%&& goto :RENAMEDIR
:SHRPX1
for /f "delims=" %%a in ('dir /b/ad-h "SHARP*X1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SHRPX1%&& goto :RENAMEDIR
:ZX81 
for /f "delims=" %%a in ('dir /b/ad-h "*zx81*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ZX81%&& goto :RENAMEDIR
:TRIF
for /f "delims=" %%a in ('dir /b/ad-h "*triforce*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TRIF%&& goto :RENAMEDIR
:TOMYT
for /f "delims=" %%a in ('dir /b/ad-h "*tomy*tutor*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TOMYT%&& goto :RENAMEDIR
:TO8
for /f "delims=" %%a in ('dir /b/ad-h "*Thomson*to8*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TO8%&& goto :RENAMEDIR
:TO7
for /f "delims=" %%a in ('dir /b/ad-h "*Thomson*to7*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TO7%&& goto :RENAMEDIR
:CHIP8
for /f "delims=" %%a in ('dir /b/ad-h "*chip*8*" "*COSMAC*VIP*" "*TELMAC*1800*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CHIP8%&& goto :RENAMEDIR
:VCRV
for /f "delims=" %%a in ('dir /b/ad-h "*creativision*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VCRV%&& goto :RENAMEDIR
:SVIS
for /f "delims=" %%a in ('dir /b/ad-h "*Watara*super*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SVIS%&& goto :RENAMEDIR
:SPECV
for /f "delims=" %%a in ('dir /b/ad-h "*spectra*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SPECV%&& goto :RENAMEDIR
:PC6K
for /f "delims=" %%a in ('dir /b/ad-h "*PC*6001*" "*PC6001*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC6K%&& goto :RENAMEDIR
:X360
for /f "delims=" %%a in ('dir /b/ad-h "*X*BOX*360*" "*XBOX360*" "*XBOX*360*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%X360%&& goto :RENAMEDIR
:XBX
for /f "delims=" %%a in ('dir /b/ad-h "*X-BOX" "*XBOX"') do if /i "%TOREN%"=="%%~a" SET PROPER=%XBX%&& goto :RENAMEDIR
:MITAN
for /f "delims=" %%a in ('dir /b/ad-h "Microtan*65*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MITAN%&& goto :RENAMEDIR
:AQURS
for /f "delims=" %%a in ('dir /b/ad-h "*Aquarius*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AQURS%&& goto :RENAMEDIR
:ORIC
for /f "delims=" %%a in ('dir /b/ad-h "Tangerine*ORIC*" "*Atmos*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ORIC%&& goto :RENAMEDIR
:POCKS
for /f "delims=" %%a in ('dir /b/ad-h "*pocket*station*" "*pocketstation*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%POCKS%&& goto :RENAMEDIR
:ZXSP
for /f "delims=" %%a in ('dir /b/ad-h "*zx*spec*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ZXSP%&& goto :RENAMEDIR
:PVG5K
for /f "delims=" %%a in ('dir /b/ad-h "*VG5000*" "*VG*5000*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PVG5K%&& goto :RENAMEDIR
:PVG74
for /f "delims=" %%a in ('dir /b/ad-h "*Odyssey3*" "*Odyssey 3*" "*Videopac+*" "*i*G7400*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PVG74%&& goto :RENAMEDIR
:PP2K
for /f "delims=" %%a in ('dir /b/ad-h "*Philips*P2*" "*Philips*P*2K*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PP2K%&& goto :RENAMEDIR

exit /b

:MVO
%ROBOCPY% "%GBG%\%GAM%\%CONS%\%TOREN%" "%GBG%\%GAM%\%CONS%\%PROPER%" /R:2 /W:2 /NP /E /IS /MOVE
SET /A UNNUM=-1
exit /b 	

:RNM
rename "%GBG%\%GAM%\%CONS%\%TOREN%" "%PROPER%" && SET /A UNNUM+=-1
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "%TOREN%" --remove
exit /b

:RENAMEDIR
if not exist "%GBG%\%GAM%\%CONS%\%PROPER%" call :RNM

:SETRN
if /I "%GBG%\%GAM%\%CONS%\%TOREN%"=="%GBG%\%GAM%\%CONS%\%PROPER%" exit /b
if "%PREREQ%"=="1" goto :presortfin
if /I "%PROPER%" NEQ "" call :MVO
:presortfin

