if "%SHRTE%"=="" exit /b
call :%SHRTE%
exit /b
:SETCORE
set EMUOPT=
set EMUARG=-f
REM for %%a in ("cores\%RATYPE%.dll") do set EMUARG=-L %%~a -f
exit /b
:RTROA
set RATYPE=
if /i "%CSTALT%"=="%PSP%" set RATYPE=ppsspp_libretro
if /i "%CSTALT%"=="%SNES%" set RATYPE=snes9x_libretro
if /i "%CSTALT%"=="%SFAM%" set RATYPE=snes9x_libretro
if /i "%CSTALT%"=="%NDS%" set RATYPE=desmume_libretro
if /i "%CSTALT%"=="%BWS%" set RATYPE=mednafen_wswan_libretro
if /i "%CSTALT%"=="%BWSC%" set RATYPE=mednafen_wswan_libretro
if /i "%CSTALT%"=="%NGB%" set RATYPE=gambatte_libretro
if /i "%CSTALT%"=="%NGBC%" set RATYPE=gambatte_libretro
if /i "%CSTALT%"=="%NVB%" set RATYPE=mednafen_vb_libretro
if /i "%CSTALT%"=="%MSX%" set RATYPE=bluemsx_libretro
if /i "%CSTALT%"=="%LYNX%" set RATYPE=handy_libretro
if /i "%CSTALT%"=="%SEGDC%" set RATYPE=reicast_libretro
if /i "%CSTALT%"=="%SEGCD%" set RATYPE=picodrive_libretro
if /i "%CSTALT%"=="%SEGAP%" set RATYPE=picodrive_libretro
if /i "%CSTALT%"=="%SG32X%" set RATYPE=picodrive_libretro
if /i "%CSTALT%"=="%SSAT%" set RATYPE=yabause_libretro
if /i "%CSTALT%"=="%JAG%" set RATYPE=virtualjaguar_libretro
if /i "%CSTALT%"=="%P3DO%" set RATYPE=4do_libretro
if /i "%CSTALT%"=="%SEGMS%" set RATYPE=genesis_plus_gx_libretro
if /i "%CSTALT%"=="%SEGAG%" set RATYPE=genesis_plus_gx_libretro
if /i "%CSTALT%"=="%SEGAMD%" set RATYPE=genesis_plus_gx_libretro
if /i "%CSTALT%"=="%NEOPKT%" set RATYPE=mednafen_ngp_libretro
if /i "%CSTALT%"=="%NEOPKTC%" set RATYPE=mednafen_ngp_libretro
if /i "%CSTALT%"=="%SGFX%" set RATYPE=mednafen_supergrafx_libretro
if /i "%CSTALT%"=="%PCECD%" set RATYPE=mednafen_pce_fast_libretro
if /i "%CSTALT%"=="%PCENG%" set RATYPE=mednafen_pce_fast_libretro
if /i "%CSTALT%"=="%TG16%" set RATYPE=mednafen_pce_fast_libretro
if /i "%CSTALT%"=="%PCFX%" set RATYPE=mednafen_pcfx_libretro
if /i "%CSTALT%"=="%PS1%" set RATYPE=mednafen_psx_libretro
if /i "%CSTALT%"=="%N64%" set RATYPE=mupen64plus_libretro
if /i "%CSTALT%"=="%VECTX%" set RATYPE=vecx_libretro
if /i "%CSTALT%"=="%NFAM%" set RATYPE=nestopia_libretro
if /i "%CSTALT%"=="%NES%" set RATYPE=nestopia_libretro
if /i "%CSTALT%"=="%NGBA%" set RATYPE=mgba_libretro
if /i "%CSTALT%"=="%AT26%" set RATYPE=stella_libretro
if /i "%CSTALT%"=="%ARCD%" set RATYPE=mame_libretro
if /i "%CSTALT%"=="%CPS%" set RATYPE=fb_alpha_cps1_libretro
if /i "%CSTALT%"=="%CPS2%" set RATYPE=fb_alpha_cps2_libretro
if /i "%CSTALT%"=="%CPS3%" set RATYPE=mame_libretro
if /i "%CSTALT%"=="%CAMIG%" set RATYPE=puae_libretro
if /i "%CSTALT%"=="%AMIG32%" set RATYPE=puae_libretro
if /i "%CSTALT%"=="%AT26%" set RATYPE=stella_libretro
if /i "%CSTALT%"=="%NEOGE%" set RATYPE=fb_alpha_neo_libretro
if /i "%CSTALT%"=="%AT52%" set RATYPE=mess_libretro
if /i "%CSTALT%"=="%INTEL%" set RATYPE=mess_libretro
if /i "%CSTALT%"=="%AT78%" set RATYPE=prosystem_libretro
if /i "%CSTALT%"=="%AMSTR%" set RATYPE=mess_libretro
if /i "%CSTALT%"=="%PC98%" set RATYPE=mess_libretro
if /i "%CSTALT%"=="%X68K%" set RATYPE=mess_libretro
if /i "%CSTALT%"=="%ZXSP%" set RATYPE=mess_libretro
call :SETCORE
exit /b

:PPSSPP
set EMUOPT=
set EMUCFG=
set EMUARG=
exit /b

:UNKNOWN
set EMUOPT=
set EMUCFG=
set EMUARG=
exit /b
:AT8E
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ALTRA
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ARCEM
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ARLTR
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ANEX
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:APCL
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:APLWIN
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ATRI
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:BATCHL
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:BEEBEM
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:VIC20
SET EMUOPT=-ntsc +confirmexit -saveres +warp -fullscreen -cartgeneric
SET EMUCFG=
SET EMUARG=
exit /b
:BSNS
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:BMSX
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:CPS3EMU
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:COLEM
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:DMUL
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:DESMUME
SET EMUOPT=
SET EMUCFG=%DESMUME%.ini
SET EMUARG=
exit /b
:DOLX
:DOLPH
SET EMUOPT=/b -e
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:ELECEM
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:EMSEV
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:EPSXE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:PCSXR
SET EMUOPT=-cdfile
SET EMUCFG=
SET EMUARG=
exit /b
:FBA
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:FMUNZ
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:FOURDO
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:FSHPL
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:FRDO
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:FSUAE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:FUSN
SET EMUOPT=
SET EMUCFG=Fusion.ini
SET EMUARG=
exit /b
:FCEUX
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:HATARI
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:INTV
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:JUM52
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:JAGLT
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:JNES
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:JPCSP
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:JZINTV
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:KEGS
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:M88
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:M2EMU
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:MEDN
SET EMUOPT=-fs 1
SET EMUCFG=%MEDN%*.cfg
SET EMUARG=
exit /b
:MENG
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:MAME
SET EMUOPT=-ctrlr input
SET EMUCFG=mame.ini
SET EMUARG=
exit /b
:MESS
set ALTMESS=
call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log"
SET EMUOPT=%MACHN% -%TYP%
SET EMUCFG=mess.ini
exit /b
:MSBOX
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:MUGN
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:NEBULA
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:NEKO
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:NEORAINE
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:RAINE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:NESTP
SET EMUOPT=
SET EMUCFG=nestopia.xml
SET EMUARG=
exit /b
:NOGBA
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:NOSTL
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:NULLDC
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:OOTK
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:OPNMSX
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:PCSX2
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:PCAP
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:MUPEN
SET EMUOPT=
SET EMUCFG=*.cfg
SET EMUARG=
exit /b
:PJ64
SET EMUOPT=
SET EMUCFG=*.cfg
SET EMUARG=
exit /b
:PJVE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:PLAY3DO
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:PROSYS
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:PSSP
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:PSX
SET EMUOPT=
SET EMUCFG=psx.ini
SET EMUARG=
exit /b
:PTMPS
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:SCMVM
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:SIMC
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:SN9X
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:SNESGT
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:SPRM3
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:SSF
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:STEEM
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:STLA
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:SWFPL
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:TURBOE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:VCOLEC
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:VGBA
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:VICE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:VJAG
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:VNES
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:VSVH
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:WCDI
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:WINARC
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:WINAPE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:WINUAE
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:WINX68K
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:XM6
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:XM7
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:XTURB
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ZINC
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b
:ZSNS
SET EMUOPT=
SET EMUCFG=*.ini
SET EMUARG=
exit /b
:ZXSPIN
SET EMUOPT=
SET EMUCFG=
SET EMUARG=
exit /b