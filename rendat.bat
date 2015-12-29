set DATXTN=.dat
if "%XMLRN%"=="1" set DATXTN=.xml
if "%RENAMEDAT%"=="1" goto :RENDAT
set MVOTYPE=RENAMEDIR
:RENDAT
for %%a in ("%DATFLDR%") do set library=%%~a
set MVOTYPE=RENAMEDAT
goto :DATCHK


for /f "delims=" %%a in ('dir /b /ad-h "%DATFLDR%\*%DATXTN%"') do (
%BSTRT% "%WBUSY%" "RJ_GUI" "Migrating the %%~a library.^" /marquee
set RNDIR=%%~a
CALL :LIBCHK
CALL :%MVOTYPE%
)

:LIBCHK
:TOUHU
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Tohou*%DATXTN%" "*Touhou*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%TOUHU%%OCNT%%DATXTN%"
)
:VECTX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "GCE*Vec*%DATXTN%" "*Vectrex*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%VECTX%%OCNT%%DATXTN%"
)
:TAITX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Taito*Type*%DATXTN%" "*TYPE*X*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%TAITX%%OCNT%%DATXTN%"
)
:ACBBC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*BBC*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ACBBC%%OCNT%%DATXTN%"
)
:ACELE
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Acorn*Electron*%DATXTN%" "Electron*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ACELE%%OCNT%%DATXTN%"
)
:ACARC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Archimedes*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ACARC%%OCNT%%DATXTN%"
)
:SAMC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*SamCoupe*%DATXTN%" "Sam Coupe*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SAMC%%OCNT%%DATXTN%"
)
:APL2E
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*2e*%DATXTN%" "*IIe*%DATXTN%" "*2*e*%DATXTN%" "*II*e*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%APL2E%%OCNT%%DATXTN%"
)
:APL2GS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*2gs*%DATXTN%" "*IIgs*%DATXTN%" "*2*gs*%DATXTN%" "*II*gs*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%APL2GS%%OCNT%%DATXTN%"
)
:AT8H
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Atari800*%DATXTN%" "Atari*800*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AT8H%%OCNT%%DATXTN%"
)
:ATST
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "AtariST*%DATXTN%" "Atari*ST*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ATST%%OCNT%%DATXTN%"
)
:EMARC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Emerson*%DATXTN%" "Arcadia*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%EMARC%%OCNT%%DATXTN%"
)
:BWS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Wonderswan Games*%DATXTN%" "*Wonderswan*%DATXTN%" "*Wonder swan Games*%DATXTN%" "*Wonder swan*%DATXTN%" "*Wonderswan Games*%DATXTN%" "*Wonderswan*%DATXTN%" "*Bandai Wonderswan Games*%DATXTN%" "*Bandai Wonderswan"') do (
set /a OCNT+=1
rename "%%~a" "%BWS%%OCNT%%DATXTN%"
)
:BWSC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Wonderswan Color Games*%DATXTN%" "*Wonderswan Color*%DATXTN%" "*Wonder swan Color Games*%DATXTN%" "*Wonder swan Color*%DATXTN%" "*Bandai Wonderswan Color Games*%DATXTN%" "*Bandai Wonderswan Color*%DATXTN%" "*Color Wonder swan  Games*%DATXTN%" "*Color Wonder swan*%DATXTN%" "*Color Wonderswan  Games*%DATXTN%" "*Color Wonderswan"') do (
set /a OCNT+=1
rename "%%~a" "%BWSC%%OCNT%%DATXTN%"
)
:CM64
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Commodore64*%DATXTN%" "Com64*%DATXTN%" "Com 64*%DATXTN%" "C64*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%CM64%%OCNT%%DATXTN%"
)
:P3DO
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*3-do*%DATXTN%" "*3do*%DATXTN%" "*3 d o*%DATXTN%" "*3.d.o*%DATXTN%" "*3.d.o*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%P3DO%%OCNT%%DATXTN%"
)
:CDI
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*CD-I*%DATXTN%" "*CDI*%DATXTN%" "*C.D.I*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%CDI%%OCNT%%DATXTN%"
)
:FMTOWNS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "fm-towns*%DATXTN%" "f.m.towns*%DATXTN%" "*towns"') do (
set /a OCNT+=1
rename "%%~a" "%FMTOWNS%%OCNT%%DATXTN%"
)
:NEOPKT
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*neo pocket Games*%DATXTN%" "*neo pocket*%DATXTN%" "*neo-geo pocket Games*%DATXTN%" "*neo-geo pocket*%DATXTN%" "*NGP Games*%DATXTN%" "*NGP*%DATXTN%" "*NeoGeoPocket Games*%DATXTN%" "*NeoGeoPocket*%DATXTN%" "*Neo Geo Pocket Games*%DATXTN%" "*Neo Geo Pocket"') do (
set /a OCNT+=1
rename "%%~a" "%NEOPKT%%OCNT%%DATXTN%"
)
:NEOPKTC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*neo pocket color Games*%DATXTN%" "*neo pocket color*%DATXTN%" "*neo-geo pocket color Games*%DATXTN%" "*neo-geo pocket color*%DATXTN%" "*NGPC Games*%DATXTN%" "*NGPC*%DATXTN%" "*NeoPocket Color Games*%DATXTN%" "*NeoGeoPocket Color*%DATXTN%" "*Neo Geo Pocket Color Games*%DATXTN%" "*Neo Geo Pocket Color"') do (
set /a OCNT+=1
rename "%%~a" "%NEOPKTC%%OCNT%%DATXTN%"
)
:FLASH
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Adobe flash*%DATXTN%" "internet games*%DATXTN%" "*browser*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%FLASH%%OCNT%%DATXTN%"
)
:WIN32
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Games for windows*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%WIN32%%OCNT%%DATXTN%"
)
:CAMIG
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*amiga Games*%DATXTN%" "*amiga roms*%DATXTN%" "*amiga*500*%DATXTN%" "*amiga*1200*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%CAMIG%%OCNT%%DATXTN%"
)
:AMIG32
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*cd32*%DATXTN%" "*cd 32*%DATXTN%" "*cd 32*%DATXTN%" "cd-32*%DATXTN%" "*cd-32*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AMIG32%%OCNT%%DATXTN%"
)
:INTEL
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "mattel intellivision*%DATXTN%" "*intellivision*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%INTEL%%OCNT%%DATXTN%"
)
:COLEC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "coleco vision*%DATXTN%" "colecovision"') do (
set /a OCNT+=1
rename "%%~a" "%COLEC%%OCNT%%DATXTN%"
)
:AT26
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*2600*%DATXTN%" "a26*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AT26%%OCNT%%DATXTN%"
)
:AT52
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*5200*%DATXTN%" "*a52*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AT52%%OCNT%%DATXTN%"
)
:AT78
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*7800*%DATXTN%" "*a78*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AT78%%OCNT%%DATXTN%"
)
:MSX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x*%DATXTN%" "*m s x*%DATXTN%" "*m.s.x*%DATXTN%" "*msx*%DATXTN%" "msx"') do (
set /a OCNT+=1
rename "%%~a" "%MSX%%OCNT%%DATXTN%"
)
:MSXTR
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x*t*r*%DATXTN%" "*m s x*t*r*%DATXTN%" "*m.s.x*T*%DATXTN%" "*msxtr*%DATXTN%" "msx turbo*R"') do (
set /a OCNT+=1
rename "%%~a" "%MSXTR%%OCNT%%DATXTN%"
)
:MSX2
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*m-s-x*2*%DATXTN%" "*m s x*2*%DATXTN%" "*m.s.x*2*%DATXTN%" "*msx2*%DATXTN%" "*msx*2"') do (
set /a OCNT+=1
rename "%%~a" "%MSX2%%OCNT%%DATXTN%"
)
:ENTP64
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Enterprise*64*%DATXTN%" "Enterprise64*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ENTP64%%OCNT%%DATXTN%"
)
:ENTP128
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Enterprise*128*%DATXTN%" "Enterprise128*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ENTP128%%OCNT%%DATXTN%"
)
:MSDS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "dos*%DATXTN%" "*d.o.s*%DATXTN%" "*dosbox*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%MSDS%%OCNT%%DATXTN%"
)
:AMSTR
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*amstrad*CPC*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AMSTR%%OCNT%%DATXTN%"
)
:AMSGX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*GX4000*%DATXTN%" "*GX*4000*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%AMSGX%%OCNT%%DATXTN%"
)
:JAGCD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*jaguar cd*%DATXTN%" "*jag*cd*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%JAGCD%%OCNT%%DATXTN%"
)
:JAG
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "jag*%DATXTN%" "jaguar*%DATXTN%" "a*jag*%DATXTN%" "atari jag Game*%DATXTN%" "*jag rom*%DATXTN%" "*jaguar rom*%DATXTN%" "*jaguar Game*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%JAG%%OCNT%%DATXTN%"
)
:FM7
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "Fujitsu Micro*%DATXTN%" "FM-7*%DATXTN%" "FM7*%DATXTN%" "FM 7*%DATXTN%" "F.M*7*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%FM7%%OCNT%%DATXTN%"
)
:SEG1K
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*SG 1*%DATXTN%" "*SG-1000*%DATXTN%" "*SG1*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEG1K%%OCNT%%DATXTN%"
)
:LYNX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*lynx*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%LYNX%%OCNT%%DATXTN%"
)
:N64
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "nintendo*64*%DATXTN%" "n64*%DATXTN%" "nintendo64*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%N64%%OCNT%%DATXTN%"
)
:NDS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "NDS*%DATXTN%" "Nintendo*DS*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NDS%%OCNT%%DATXTN%"
)
:WII
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Wii*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%WII%%OCNT%%DATXTN%"
)
:NGC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*gamecube*%DATXTN%" "*game cube*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NGC%%OCNT%%DATXTN%"
)
:NVB
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Virtual*boy*%DATXTN%" "*Virtualboy*%DATXTN%" "*V*boy*%DATXTN%" "*Vboy*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NVB%%OCNT%%DATXTN%"
)
:NGB
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*ngb roms*%DATXTN%" "*eboy game*%DATXTN%" "*eboy rom*%DATXTN%" "*game boy game*%DATXTN%" "*gameboy*%DATXTN%" "*game boy*%DATXTN%" "*nintendo gb Games*%DATXTN%" "*nintendo gb"') do (
set /a OCNT+=1
rename "%%~a" "%NGB%%OCNT%%DATXTN%"
)
:NGBC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*gb color Games*%DATXTN%" "*gb color*%DATXTN%" "*nintendo gb color Games*%DATXTN%" "*nintendo gb color*%DATXTN%" "*gameboy color Games*%DATXTN%" "*gameboy color*%DATXTN%" "*game boy color Game*%DATXTN%" "*game boy color*%DATXTN%" "*nintendo game boy color Game*%DATXTN%" "nintendo game boy color*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NGBC%%OCNT%%DATXTN%"
)
:NGBA
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*gb advance Games*%DATXTN%" "*gb advance*%DATXTN%" "*gba Games*%DATXTN%" "*gba*%DATXTN%" "*nintendo gba Games*%DATXTN%" "*nintendo gba*%DATXTN%" "*nintendo game boy advance Game*%DATXTN%" "*nintendo game boy advance*%DATXTN%" "*nintendo gb advance Games*%DATXTN%" "*nintendo gb advance"') do (
set /a OCNT+=1
rename "%%~a" "%NGBA%%OCNT%%DATXTN%"
)
:NES
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*nes*%DATXTN%" "n.e.s*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NES%%OCNT%%DATXTN%"
)
:NFAM
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*famicom disk*%DATXTN%" "*famicom*%DATXTN%" "fdc"') do (
set /a OCNT+=1
rename "%%~a" "%NFAM%%OCNT%%DATXTN%"
)
:SNES
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "snes*%DATXTN%" "Super Nes*%DATXTN%" "Super Nintendo*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SNES%%OCNT%%DATXTN%"
)
:SFAM
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*super famicom*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SFAM%%OCNT%%DATXTN%"
)
:PCFX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*pc-fx*%DATXTN%" "*pcfx*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PCFX%%OCNT%%DATXTN%"
)
:PC98
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*pc98*%DATXTN%" "*pc*98*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PC98%%OCNT%%DATXTN%"
)
:SEGAP
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*pico*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGAP%%OCNT%%DATXTN%"
)
:SEGAG
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*genesis*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGAG%%OCNT%%DATXTN%"
)
:SEGAMD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*mega drive*%DATXTN%" "*megadrive*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGAMD%%OCNT%%DATXTN%"
)
:SEGMS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*mastersystem*%DATXTN%" "*master*system*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGMS%%OCNT%%DATXTN%"
)
:SEGDC
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*dreamcast*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGDC%%OCNT%%DATXTN%"
)
:SEGG
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*gamegear*%DATXTN%" "*game*gear*%DATXTN%" "sega gg*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGG%%OCNT%%DATXTN%"
)
:SEGCD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "segacd*%DATXTN%" "sega*cd*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGCD%%OCNT%%DATXTN%"
)
:SEGMCD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*megacd*%DATXTN%" "*mega*cd*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SEGMCD%%OCNT%%DATXTN%"
)
:SSAT
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*saturn*%DATXTN%" "*satourne*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SSAT%%OCNT%%DATXTN%"
)
:SG32X
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*32x*%DATXTN%" "*32*X*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SG32X%%OCNT%%DATXTN%"
)
:PS1
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*psx*%DATXTN%" "*ps1*%DATXTN%" "*playstation*%DATXTN%" "*ps*1*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PS1%%OCNT%%DATXTN%"
)
:PSP
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*psp*%DATXTN%" "*playstation*portable*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PSP%%OCNT%%DATXTN%"
)
:PS2
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*ps2*%DATXTN%" "*ps 2*%DATXTN%" "*playstation 2*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PS2%%OCNT%%DATXTN%"
)
:TG16
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*turbografx-16*%DATXTN%" "*turbo*grafx*16*%DATXTN%" "*tg*16*%DATXTN%" "*tg16*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%TG16%%OCNT%%DATXTN%"
)
:PCENG
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*pce rom*%DATXTN%" "*pce game*%DATXTN%" "*pc*engine*%DATXTN%" "pce"') do (
set /a OCNT+=1
rename "%%~a" "%PCENG%%OCNT%%DATXTN%"
)
:SGFX
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*supergrafx*%DATXTN%" "*super*grafx*%DATXTN%" "*sgx"') do (
set /a OCNT+=1
rename "%%~a" "%SGFX%%OCNT%%DATXTN%"
)
:TGCD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*turbografx*16 CD*%DATXTN%" "*turbografx*CD"') do (
set /a OCNT+=1
rename "%%~a" "%TGCD%%OCNT%%DATXTN%"
)
:PCECD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*pc*engine*CD*%DATXTN%" "*pce cd*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PCECD%%OCNT%%DATXTN%"
)
:X68K
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*x68*%DATXTN%" "*x*68*%DATXTN%" "*68000*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%X68K%%OCNT%%DATXTN%"
)
:CPS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*1*%DATXTN%" "*capcom play system Game*%DATXTN%" "*capcom play system*%DATXTN%" "cps1*%DATXTN%" "CPS*I*%DATXTN%" "CPSI*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%CPS%%OCNT%%DATXTN%"
)
:CPS2
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*2*%DATXTN%" "capcom play system 2*%DATXTN%" "*cps2*%DATXTN%" "CPS*II*%DATXTN%" "CPSII*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%CPS2%%OCNT%%DATXTN%"
)
:CPS3
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "c.p.s*3*%DATXTN%" "capcom play system 3*%DATXTN%" "*cps3*%DATXTN%" "CPS*III*%DATXTN%" "CPSIII*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%CPS3%%OCNT%%DATXTN%"
)
:ARCD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "mame*%DATXTN%" "*arcade*%DATXTN%" "arcade*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ARCD%%OCNT%%DATXTN%"
)
:NAOMI
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "naomi*%DATXTN%" "*naomi*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NAOMI%%OCNT%%DATXTN%"
)
:SEGM3
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "model3*""*model3*%DATXTN%" "model 3*%DATXTN%" "*model 3*%DATXTN%" "sm3*%DATXTN%" "sm 3"') do (
set /a OCNT+=1
rename "%%~a" "%SEGM2%%OCNT%%DATXTN%"
)
:SEGM2
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*model2*%DATXTN%" "*model*2*%DATXTN%" "sm2*%DATXTN%" "sm 2"') do (
set /a OCNT+=1
rename "%%~a" "%SEGM2%%OCNT%%DATXTN%"
)
:NEOGE
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "neogeo*%DATXTN%" "neo-geo*%DATXTN%" "neo geo*%DATXTN%" "NEO*AES*%DATXTN%" "NEO*MVS*%DATXTN%" "NEO*AES*%DATXTN%" "SNK*MVS*%DATXTN%" "SNK*aes*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NEOGE%%OCNT%%DATXTN%"
)
:NEOCD
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "SNK*CD*%DATXTN%" "neocd*%DATXTN%" "neo cd*%DATXTN%" "neogeocd*%DATXTN%" "neo-geo cd*%DATXTN%" "*neo*cd*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%NEOCD%%OCNT%%DATXTN%"
)
:PC88
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "PC*88*%DATXTN%" "*PC*88*%DATXTN%" "*PC88*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%PC88%%OCNT%%DATXTN%"
)
:SHRPX1
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "SHARP*X1*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%SHRPX1%%OCNT%%DATXTN%"
)
:ZX81
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*zx81*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ZX81%%OCNT%%DATXTN%"
)
:ZXSP
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*zx*spec*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ZXSP%%OCNT%%DATXTN%"
)
:ATMS
set OCNT=
for /f "delims=" %%a in ('dir /b/ad-h "*Sammy Atom*%DATXTN%" "*Atomis Wave*%DATXTN%"') do (
set /a OCNT+=1
rename "%%~a" "%ATMS%
exit /b