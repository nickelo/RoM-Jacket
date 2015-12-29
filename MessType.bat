set CONBCK=
SET EMUHR=
SET MACHN=
SET TYP=
set ALTMESS=
set MESSON=1
if /i "%CSTCONS%"=="Other" set CONBCK=1
if /i "%CSTLNCH%"=="Other" set CSTCONS=%CASTNAME%
CALL "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
set CURNTA=extendedselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "delims=" %%a in ('type "%GBC%\%CURNTA%"') do if "%%~a"=="%CSTCONS%" SET EMUHR=1
if "%EMUHR%"=="1" CALL :%SHRTN%
if "%MACHN%"=="" set MACHN=[MACHINE]
if "%TYP%"=="" set TYP=[MEDIA]
SET EMUOPT=%MACHN% -%TYP%
if "%CONBCK%"=="1" set CSTCONS=Other
if "%EMUARG%"=="" set EMUARG=-ctrlr input
exit /b

:ACAN
SET MACHN=supracan
set TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ATXE
set MACHN=xegs
set TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:EXL1H
set MACHN=exl100
set TYP=cart
SET EMUARG=-ctrlr input
exit /b

:DRAG32
set MACHN=dragon32
set TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:CMPLNX
set MACHN=lynx128k
set TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:INTFC
set MACHN=interact
set TYP=cass
SET EMUARG=-ctrlr input
exit /b

:COLADM
set MACHN=adam
set TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:FM7
set MACHN=fm7
set TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:GACOM
set MACHN=gamecom
set TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ADVV
set MACHN=advision
set TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ENTP128
SET MACHN=ep128
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ENTP64
SET MACHN=ep64
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:APFIM
SET MACHN=apfimag
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:TOUHU
SET MACHN=pc9821xs
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:BALY
SET MACHN=astrocde
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:VECTX
SET MACHN=vectrex
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:JUPA
SET MACHN=jupace
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:MDUC
SET MACHN=megaduck
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:MITAN
SET MACHN=microtan
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ODYS3
SET MACHN=odyssey3
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ODYS2
SET MACHN=odyssey2
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ODYS
SET MACHN=odyssey2
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:POCKS
SET MACHN=pockstat
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:PC6K
SET MACHN=pc6001
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:PC88
SET MACHN=pc88va2
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:PC98
SET MACHN=pc9821xs
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:PCJR
SET MACHN=drpcjr
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SCAS
SET MACHN=scv
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ORIC
SET MACHN=oric1
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:RCAS2
SET MACHN=studio2
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SEG3K
SET MACHN=sc3000
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SEGSF
:SEG7K
SET MACHN=sf7000
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:COM16
SET MACHN=c16
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:CMMAX
SET MACHN=c64
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:CMPET
SET MACHN=pet2001
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:TOMYT
SET MACHN=tutor
set TYP=[TYP]
set EMUARG=-ctrlr input
exit /b

:VC20
SET MACHN=vic20
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:VCRV
SET MACHN=crvision
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:VLAS2
SET MACHN=laser200
SET TYP=[TYP]
SET EMUARG=-mem laser_64k -ctrlr input
exit /b

:VLAS3
SET MACHN=laser310
SET TYP=[TYP]
SET EMUARG=-mem laser_64k -ctrlr input
exit /b

:PVG5K
SET MACHN=vg5k
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:PPC2K
SET MACHN=pc2000
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:MZ7
SET MACHN=mz700
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:MZ8
SET MACHN=mz800
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:PVG74
SET MACHN=videopac
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SUPRGB
SET MACHN=supergb
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:MO5
SET MACHN=mo5
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:MZ7
SET MACHN=mz700
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:MZ8
SET MACHN=mz800
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:MTX
SET MACHN=mtx512
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SORD
SET MACHN=m5p
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SPECV
SET MACHN=svi318
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:POCKS
SET MACHN=
SET TYP=
SET EMUARG=-ctrlr input
exit /b

:ACBBC
SET MACHN=bbcb_us
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ACELE
SET MACHN=electron
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:CLOOP
SET MACHN=casloopy
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:CAS1K
SET MACHN=pv1000
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:CAS2K
SET MACHN=pv2000
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ACARC
SET MACHN=a310
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:CHNF
SET MACHN=channelf
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SAMC
SET MACHN=samcoupe
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:APL2E
SET MACHN=apple2e
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:AQURS
SET MACHN=aquarius
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:APL2GS
SET MACHN=apple2gs
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:AT8H
SET MACHN=a800
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:AT8B
SET MACHN=a1200xl
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ATST
SET MACHN=ste
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:EMARC
SET MACHN=arcadia
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:MO5
SET MACHN=mo5
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:TO7
SET MACHN=to7
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:TO8
SET MACHN=to8
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:BWS
SET MACHN=wswan
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:BWSC
SET MACHN=wscolor
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:CM64
SET MACHN=c64p
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:P3DO
SET MACHN=3do
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:CDI
SET MACHN=cdimono1
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:FMTOWNS
SET MACHN=fmtowns
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:NEOPKT
SET MACHN=ngp
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NEOPKTC
SET MACHN=ngpc
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:ORIC
SET MACHN=orica
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:CAMIG
SET MACHN=a500
SET TYP=flop
SET EMUARG=-ctrlr input
exit /b

:AMIGTV
SET MACHN=cdtv
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:AMIG32
SET MACHN=cd32
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:INTEL
SET MACHN=intv
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:COLEC
SET MACHN=coleco
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:AT26
SET MACHN=a2600
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:AT52
SET MACHN=a5200
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:AT78
SET MACHN=a7800
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:MSX
SET MACHN=ax170
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:MSX2
SET MACHN=ax370
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:MSXTR
SET MACHN=expert3t
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:MSDS
SET MACHN=
SET TYP=
SET EMUARG=-ctrlr input
exit /b

:AMSTR
SET MACHN=cpc664
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:AMSGX
SET MACHN=gx4000
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:JAGCD
SET MACHN=jaguarcd
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:JAG
SET MACHN=jaguar
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:FM7
SET MACHN=fm7
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SEG1K
SET MACHN=sg1000
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:LYNX
SET MACHN=lynx
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:N64
SET MACHN=n64
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:VC4K
SET MACHN=vc4000
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SVIS
set MACHN=svision
set TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NVB
SET MACHN=vboy
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NGB
SET MACHN=gameboy
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NGBC
SET MACHN=gbcolor
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NGBA
SET MACHN=gba
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NES
SET MACHN=nes
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NFAM
SET MACHN=famicom
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SFAM
:NSATL
:SNES
SET MACHN=snes
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:PCFX
SET MACHN=pcfx
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:PC98
SET MACHN=pc9801ux
SET TYP=flop1
SET EMUARG=-ctrlr input
exit /b

:SEGAP
SET MACHN=pico
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SEGAG
SET MACHN=genesis
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SEGAMD
SET MACHN=megadriv
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SEGMS
SET MACHN=sms
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SEGDC
SET MACHN=dc
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:SEGG
SET MACHN=gamegear
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SEGMCD
SET MACHN=megacd
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:SEGCD
SET MACHN=segacd
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:SSAT
SET MACHN=vsaturn
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:SG32X
SET MACHN=32x
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:PS1
SET MACHN=psu
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:TG16
SET MACHN=pce
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:PCENG
SET MACHN=pce
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:SGFX
SET MACHN=sgx
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:TGCD
SET MACHN=tg16
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:PCECD
SET MACHN=pce
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:X68K
SET MACHN=x68000
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:NEOGE
SET MACHN=aes
SET TYP=cart
SET EMUARG=-ctrlr input
exit /b

:NEOCD
SET MACHN=neocd
SET TYP=cdrm
SET EMUARG=-ctrlr input
exit /b

:PC88VA
SET MACHN=pc88va
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:PC88
SET MACHN=pc8801
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SHRPX1
SET MACHN=x1
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:SNQL
SET MACHN=ql
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ZXSP
SET MACHN=spectrum
SET TYP=[TYP]
SET EMUARG=-ctrlr input
exit /b

:ZX81
SET MACHN=zx81
SET TYP=cass
SET EMUARG=-ctrlr input
exit /b

:::::::::::::::::::UNSUPPORTED:::::::::::::::::::::

:NDS
SET MACHN=
SET TYP=
exit /b

:CPS
SET MACHN=
SET TYP=
exit /b

:CPS2
SET MACHN=
SET TYP=
exit /b

:CPS3
SET MACHN=
SET TYP=
exit /b

:ARCD
SET MACHN=
SET TYP=
exit /b

:NAOMI
SET MACHN=
SET TYP=
exit /b

:SEGM2
SET MACHN=
SET TYP=
exit /b

:SEGM3
SET MACHN=
SET TYP=
exit /b

:WII
SET MACHN=
SET TYP=
exit /b

:NGC
SET MACHN=
SET TYP=
exit /b

:PSP
SET MACHN=
SET TYP=
exit /b

:PS2
SET MACHN=
SET TYP=
exit /b

:FLASH
SET MACHN=
SET TYP=
exit /b

:WIN32
SET MACHN=
SET TYP=
exit /b

:TAITX
SET MACHN=
SET TYP=
exit /b

:AMLG
SET MACHN=
SET TYP=
exit /b
