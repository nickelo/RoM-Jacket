:RESELECT
if "%DEFINEDIR%" NEQ "1" goto :RJCP
echo.-------->"%GBC%\cursel.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\cursel.ini"
"%GBC%\Wselect.exe" "%GBC%\cursel.ini" "Console Destination" "set RJCP=$item" > "%GBC%\cursel.cmd"
call "%GBC%\cursel.cmd"
if "%RJCP%"=="" goto :QUITOUT
if "%RJCP%"=="--------" goto :RESELECT
exit /b

:RJCP
set RJCP=
for /f "delims=" %%a in ('type "%GBC%\conselect.set"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%%~a
if "%RJCP%" NEQ "" exit /b

:TOUHU
for /f "delims=" %%a in ('dir /b/ad-h "*Tohou*" "*Touhou*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%TOUHU%
:VECTX
for /f "delims=" %%a in ('dir /b/ad-h "GCE*" "*Vectrex*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%VECTX%
:TAITX
for /f "delims=" %%a in ('dir /b/ad-h "Taito*Type*" "*TYPE*X*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%TAITX%
:ACBBC
for /f "delims=" %%a in ('dir /b/ad-h "*BBC*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ACBBC%
:ACELE
for /f "delims=" %%a in ('dir /b/ad-h "Acorn*Electron*" "Electron*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ACELE%
:ACARC
for /f "delims=" %%a in ('dir /b/ad-h "*Archimedes*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ACARC%
:SAMC
for /f "delims=" %%a in ('dir /b/ad-h "*SamCoupe*" "Sam Coupe*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ACARC%
:APL2E
for /f "delims=" %%a in ('dir /b/ad-h "*2e*" "*IIe*" "*2*e*" "*II*e*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%APL2E%
:APL2GS
for /f "delims=" %%a in ('dir /b/ad-h "*2gs*" "*IIgs*" "*2*gs*" "*II*gs*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%APL2GS%
:AT8H
for /f "delims=" %%a in ('dir /b/ad-h "Atari800*" "Atari*800*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%AT8H%
:ATST
for /f "delims=" %%a in ('dir /b/ad-h "AtariST*" "Atari*ST*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ATST%
:EMARC
for /f "delims=" %%a in ('dir /b/ad-h "Emerson*" "Arcadia*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%EMARC%
:BWS
for /f "delims=" %%a in ('dir /b/ad-h "Wonderswan Games" "Wonderswan" "Wonder swan Games" "Wonder swan" "Wonderswan Games" "Wonderswan" "Bandai Wonderswan Games" "Bandai Wonderswan"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%BWS%
:BWSC
for /f "delims=" %%a in ('dir /b/ad-h "Wonderswan Color Games" "Wonderswan Color" "Wonder swan Color Games" "Wonder swan Color" "Bandai Wonderswan Color Games" "Bandai Wonderswan Color" "Color Wonder swan  Games" "Color Wonder swan" "Color Wonderswan  Games" "Color Wonderswan"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%BWSC%
:CM64
for /f "delims=" %%a in ('dir /b/ad-h "Commodore64*" "Com64*" "Com 64*" "C64*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%CM64%
:P3DO
for /f "delims=" %%a in ('dir /b/ad-h "*3-do*" "*3do*" "*3 d o*" "*3.d.o*" "*3.d.o*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%P3DO%
:CDI
for /f "delims=" %%a in ('dir /b/ad-h "*CD-I*" "*CDI*" "*C.D.I*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%CDI%
:FMTOWNS
for /f "delims=" %%a in ('dir /b/ad-h "fm-towns*" "f.m.towns*" "towns"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%FMTOWNS%
:NEOPKT
for /f "delims=" %%a in ('dir /b/ad-h "neo pocket Games" "neo pocket" "neo-geo pocket Games" "neo-geo pocket" "NGP Games" "NGP" "NeoGeoPocket Games" "NeoGeoPocket" "Neo Geo Pocket Games" "Neo Geo Pocket"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NEOPKT%
:NEOPKTC
for /f "delims=" %%a in ('dir /b/ad-h "neo pocket color Games" "neo pocket color" "neo-geo pocket color Games" "neo-geo pocket color" "NGPC Games" "NGPC" "NeoPocket Color Games" "NeoGeoPocket Color" "Neo Geo Pocket Color Games" "Neo Geo Pocket Color"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NEOPKTC%
:FLASH
for /f "delims=" %%a in ('dir /b/ad-h "flash*" "flash*" "adobe*" "internet games Games" "*browser*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%FLASH%
:WIN32
for /f "delims=" %%a in ('dir /b/ad-h "*windows*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%WIN32%
:CAMIG
for /f "delims=" %%a in ('dir /b/ad-h "amiga Games" "amiga*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%CAMIG%
:AMIG32
for /f "delims=" %%a in ('dir /b/ad-h "*cd32*" "*cd 32*" "*cd 32*" "cd-32" "*cd-32*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%AMIG32%
:INTEL
for /f "delims=" %%a in ('dir /b/ad-h "mattel intellivision*" "*intellivision*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%INTEL%
:COLEC
for /f "delims=" %%a in ('dir /b/ad-h "coleco vision*" "*colecovision*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%COLEC%
:AT26
for /f "delims=" %%a in ('dir /b/ad-h "*2600*" "*a26*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%AT26%
:AT52
for /f "delims=" %%a in ('dir /b/ad-h "*5200*" "*a52*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%AT52%
:AT78
for /f "delims=" %%a in ('dir /b/ad-h "*7800*" "*a78*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%AT78%
:MSX
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x*" "*m s x*" "*m.s.x*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%MSX%
:ENTP
for /f "delims=" %%a in ('dir /b/ad-h "Enterprise*64*" "Enterprise64*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ENTP%
:MSDS
for /f "delims=" %%a in ('dir /b/ad-h "dos*" "*dos*" "*d.o.s*" "*dosbox*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%MSDS%
:AMSTR
for /f "delims=" %%a in ('dir /b/ad-h "amstrad*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%AMSTR%
:JAGCD
for /f "delims=" %%a in ('dir /b/ad-h "*jaguar cd*" "*jag cd*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%JAGCD%
:JAG
for /f "delims=" %%a in ('dir /b/ad-h "jaguar" "jag Games" "jag" "atari jag Games" "atari jag" "atari jag roms" "*jag roms" "jaguar roms"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%JAG%
:FM7
for /f "delims=" %%a in ('dir /b/ad-h "Fujitsu Micro*" "FM-7*" "FM7*" "FM 7*" "F.M*7*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%FM7%
:SEG1K
for /f "delims=" %%a in ('dir /b/ad-h "*SG 1*" "*SG-1000*" "*SG1*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEG1K%
:LYNX
for /f "delims=" %%a in ('dir /b/ad-h "*lynx*"') do if /i "%HSCHOICE%"=="%%~a" set RJCP=%LYNX%
:N64
for /f "delims=" %%a in ('dir /b/ad-h "nintendo*64*" "n64*" "nintendo64*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%N64%
:NDS
for /f "delims=" %%a in ('dir /b/ad-h "NDS*" "Nintendo*DS*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NDS%
:WII
for /f "delims=" %%a in ('dir /b/ad-h "*Wii*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%WII%
:NGC
for /f "delims=" %%a in ('dir /b/ad-h "*gamecube*" "*game cube*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NGC%
:NVB
for /f "delims=" %%a in ('dir /b/ad-h "*Virtual*boy*" "*Virtualboy*" "*V*boy*" "*Vboy*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NVB%
:NGB
for /f "delims=" %%a in ('dir /b/ad-h "ngb roms" "ngb roms" "*eboy games" "*eboy roms" "*e boy games" "*e boy roms" "gameboy" "game boy" "nintendo gb Games" "nintendo gb"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NGB%
:NGBC
for /f "delims=" %%a in ('dir /b/ad-h "gb color Games" "gb color" "nintendo gb color Games" "nintendo gb color" "gameboy color Games" "gameboy color" "game boy color Games" "game boy color" "nintendo game boy color Games" "nintendo game boy color"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NGBC%
:NGBA
for /f "delims=" %%a in ('dir /b/ad-h "gb advance Games" "gb advance" "gba Games" "gba" "nintendo gba Games" "nintendo gba" "nintendo game boy advance Games" "nintendo game boy advance" "nintendo gb advance Games" "nintendo gb advance"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NGBA%
:NES
for /f "delims=" %%a in ('dir /b/ad-h "*nes*" "n.e.s*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NES%
:NFAM
for /f "delims=" %%a in ('dir /b/ad-h "*famicom disk*" "*famicom" "fdc"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NFAM%
:SNES
for /f "delims=" %%a in ('dir /b/ad-h "snes*" "Super Nes*" "Super Nintendo*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SNES%
:SFAM
for /f "delims=" %%a in ('dir /b/ad-h "*super famicom*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SFAM%
:PCFX
for /f "delims=" %%a in ('dir /b/ad-h "*pc-fx*" "*pcfx*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PCFX%
:PC98
for /f "delims=" %%a in ('dir /b/ad-h "*pc98*" "*pc*98*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PC98%
:SEGAG
for /f "delims=" %%a in ('dir /b/ad-h "*genesis*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGAG%
:SEGAP
for /f "delims=" %%a in ('dir /b/ad-h "*pico*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGAP%
:SEGAMD
for /f "delims=" %%a in ('dir /b/ad-h "*mega drive*" "*megadrive*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGAMD%
:SEGMS
for /f "delims=" %%a in ('dir /b/ad-h "*mastersystem*" "*master*system*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGMS%
:SEGDC
for /f "delims=" %%a in ('dir /b/ad-h "*dreamcast*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGDC%
:SEGG
for /f "delims=" %%a in ('dir /b/ad-h "*gamegear*" "*game*gear*" "sega gg*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGG%
:SEGCD
for /f "delims=" %%a in ('dir /b/ad-h "segacd*" "sega*cd*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGCD%
:SSAT
for /f "delims=" %%a in ('dir /b/ad-h "*saturn*" "*satourne*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SSAT%
:SG32X
for /f "delims=" %%a in ('dir /b/ad-h "*32x*" "*32*X*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SG32X%
:PS1
for /f "delims=" %%a in ('dir /b/ad-h "*psx*" "*ps1*" "*playstation" "*ps*1*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PS1%
:PSP
for /f "delims=" %%a in ('dir /b/ad-h "*psp*" "*playstation*portable*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PSP%
:PS2
for /f "delims=" %%a in ('dir /b/ad-h "*ps2*" "*ps 2*" "*playstation 2*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PS2%
:TG16
for /f "delims=" %%a in ('dir /b/ad-h "*turbografx-16*" "*turbo*grafx*16*" "*tg*16*" "*tg16*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%TG16%
:PCENG
for /f "delims=" %%a in ('dir /b/ad-h "*pce roms" "*pce games" "*pc*engine" "pce"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PCENG%
:SGFX
for /f "delims=" %%a in ('dir /b/ad-h "*supergrafx*" "*super*grafx*" "*sgx*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SGFX%
:TGCD
for /f "delims=" %%a in ('dir /b/ad-h "*turbografx*16 CD*" "*turbografx*CD"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%TGCD%
:PCECD
for /f "delims=" %%a in ('dir /b/ad-h "*pc*engine*CD*" "*pce*cd*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PCECD%
:X68K
for /f "delims=" %%a in ('dir /b/ad-h "*x68*" "*x*68*" "*68000*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%X68K%
:CPS
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*1*" "capcom play system Games" "capcom play system" "cps1*" "CPS*I*" "CPSI*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%CPS%
:CPS2
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*2*" "capcom play system 2*" "cps2*" "CPS*II*" "CPSII*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%CPS2%
:CPS3
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*3*" "capcom play system 3*" "cps3*" "CPS*III*" "CPSIII*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%CPS3%
:ARCD
for /f "delims=" %%a in ('dir /b/ad-h "mame*" "arcade*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ARCD%
:NAOMI
for /f "delims=" %%a in ('dir /b/ad-h "*naomi*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NAOMI%
:SEGM2
for /f "delims=" %%a in ('dir /b/ad-h "*model3*" "*model*3*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGM2%
:SEGM2
for /f "delims=" %%a in ('dir /b/ad-h "*model2*" "*model*2*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SEGM2%
:NEOGE
for /f "delims=" %%a in ('dir /b/ad-h "*NEO*AES*" "*NEO*MVS*" "*NEO*AES*" "*mvs*" "*aes*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NEOGE%
:NEOCD
for /f "delims=" %%a in ('dir /b/ad-h "*neocd*" "*neo*cd*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%NEOCD%
:PC88
for /f "delims=" %%a in ('dir /b/ad-h "*PC*88*" "*PC88*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%PC88%
:SHRPX1
for /f "delims=" %%a in ('dir /b/ad-h "SHARP*X1*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%SHRPX1%
:ZXSP
for /f "delims=" %%a in ('dir /b/ad-h "*zx*spec*"') do if /i "%HSCHOICE%"=="%%~a" SET RJCP=%ZXSP%

:BLNK
if "%RJCP%"=="" call :setoff
exit /b

:setoff
for %%A in ("%HSCHOICE%") do set RJCP=%%~A