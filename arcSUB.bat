if "%SHRTN%"=="" exit /b
call :%SHRTN%
if "%ARCLNK%"=="" for %%a in ("%DWNPRFX%") do set ARCLNK=%%~a
for /f "delims=" %%a in ("%DWNPRFX%/%ARCLNK%") do if "%ARCLNK%" NEQ "%DWNPRFX%" set ARCLNK=%%~a
if "%SUB1%"=="" exit /b
exit /b

:::::::::::::::::::::::::::::::::NO-INTRO::::::::::::::::::::::::::::::::::::::::::::::::::
:SEGMD
:SEGAG
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Sega - Mega Drive - Genesis.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:AT52
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Atari - 5200.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:SG32X
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Sega - 32X.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NGPKTC
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("SNK - Neo Geo Pocket Color.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:BWSC
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Bandai - WonderSwan Color.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:BWS
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Bandai - WonderSwan.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NGPKT
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("SNK - Neo Geo Pocket.zip") do set SUB1=%%~a
set FOLX=.zip
exit /b

:N64
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Nintendo 64.zip/") do set SUB1=%%~a
set FOLX=.zip

:PCENG
:TG16
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("NEC - PC Engine - TurboGrafx 16.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:SNES
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Super Nintendo Entertainment System.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:LYNX
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Atari - Lynx.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:JAG
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Atari - Jaguar.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NFAM
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Famicom Disk System.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NES
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Nintendo Entertainment System.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NVB
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Virtual Boy.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b
:SGFX
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("NEC - Super Grafx.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NGB
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Game Boy.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NGBC
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Game Boy Color.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NGBA
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Nintendo - Game Boy Advance.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:SEGAMD
:SMS
for /f "delims=" %%a in ("%NOINT%_2015-03-03") do set ARCLNK=%%~a
for /f "delims=" %%a in ("Sega - Master System - Mark III.zip/") do set SUB1=%%~a
X=.zip
exit /b

::::::::::::::::::::::::::MAME & MESS::::::::::::::::::::::::::::::::::
:ARCD
:CPS
:CPS2
:NEOGE
for /f "delims=" %%a in ("MAME_0.151_ROMs") do set ARCLNK=%%~a
for /f "delims=" %%a in ("MAME_0.151_ROMs.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b
:MSX
for /f "delims=" %%a in ("MESS_0.151_Software_List_ROMs") do set ARCLNK=%%~a
for /f "delims=" %%a in ("msx1_cart.zip/") do set SUB1=%%~a
for /f "delims=" %%a in ("msx1_cass.zip/") do set SUB2=%%~a
set FOLX=.zip
exit /b

:MSX2
for /f "delims=" %%a in ("MESS_0.151_Software_List_ROMs") do set ARCLNK=%%~a
for /f "delims=" %%a in ("msx2_cart.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b



:::::::::::::::::::::::::::LIBRARY::::::::::::::::::::::::::::::::::::
:SEGCD
for /f "delims=" %%a in ("MESS_0.149_CHD_segacd") do set ARCLNK=%%~a
for /f "delims=" %%a in ("MESS_0.149_CHD_segacd.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:NEOCD
for /f "delims=" %%a in ("MESS_0.149_CHD_neocd") do set ARCLNK=%%~a
for /f "delims=" %%a in ("MESS_0.149_CHD_neocd.zip/") do set SUB1=%%~a
set FOLX=.zip
exit /b

:SSAT
for /f "delims=" %%a in ("MESS_0.149_CHD_saturn_%SUBNUM%") do set ARCLNK=%%~a
for /f "delims=" %%a in ("MESS_0.149_CHD_saturn_1.zip/") do set SUB1=%%~a
for /f "delims=" %%a in ("MESS_0.149_CHD_saturn_2.zip/") do set SUB2=%%~a
for /f "delims=" %%a in ("MESS_0.149_CHD_saturn_3.zip/") do set SUB3=%%~a
set FOLX=.zip
exit /b

:SEGG
for /f "delims=" %%a in ("gamegear_library") do set ARCLNK=%%~a
set FOLX=.bin
exit /b

:AT26
for /f "delims=" %%a in ("atari_2600_library") do set ARCLNK=%%~a
set FOLX=.bin
exit /b

:AT78
for /f "delims=" %%a in ("atari_7800_library") do set ARCLNK=%%~a
set FOLX=.a78
exit /b

:MSDS
for /f "delims=" %%a in ("softwarelibrary_msdos_games") do set ARCKNK=%%~a
set FOLX=.zip
exit /b

:PS1
for /f "delims=" %%a in ("PSRoms") do set ARCLNK=%%~a
for /f "delims=" %%a in ("PS Roms Pack 1/") do set SUB1=%%~a
for /f "delims=" %%a in ("PS Roms Pack 2/") do set SUB2=%%~a
for /f "delims=" %%a in ("PS Roms Pack 3/") do set SUB3=%%~a
for /f "delims=" %%a in ("PS Roms Pack 4/") do set SUB4=%%~a
for /f "delims=" %%a in ("PS Roms Pack 5/") do set SUB5=%%~a
for /f "delims=" %%a in ("PS Roms Pack 6/") do set SUB6=%%~a
for /f "delims=" %%a in ("PS Roms Pack 7/") do set SUB7=%%~a
for /f "delims=" %%a in ("PS Roms Pack 8/") do set SUB8=%%~a
for /f "delims=" %%a in ("PS Roms Pack 9/") do set SUB9=%%~a
for /f "delims=" %%a in ("PS Roms Pack 10/") do set SUB10=%%~a
for /f "delims=" %%a in ("PS Roms Pack 11/") do set SUB11=%%~a
for /f "delims=" %%a in ("PS Roms Pack 12/") do set SUB12=%%~a
for /f "delims=" %%a in ("PS Roms Pack 13/") do set SUB13=%%~a
for /f "delims=" %%a in ("PS Roms Pack 14/") do set SUB14=%%~a
set FOLX=.zip
exit /b