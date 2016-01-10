for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%"') do del /q "%GBE%\%EMUZ%\%%~a"

SET EMUINST=Auto
del /s /q "%GBE%\%EMUZ%\inst.ini"
del /s /q "%GBE%\%EMUZ%\notfound.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing Emulators"  /marquee

call "%GBC%\mkemudirs.bat">>"%GBC%\logs\mkemudirs.log"

set CEMU=Fusion
SET /A EMUNUM=1
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=Mednafen
SET /A EMUNUM=2
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=bgb
SET /A EMUNUM=24
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"

set CEMU=ProjectTempest
SET /A EMUNUM=4
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTLauncher.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTCDWrapper.exe"

set CEMU=SSF
SET /A EMUNUM=10
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
REM move /Y "%GBE%\%EMUZ%\%SSF%" "%GBE%\%EMUZ%\%SSF%"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"

set CEMU=Project64
SET EMUNUM=11
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=snes9x
SET /A EMUNUM=113
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=Mame
SET /A EMUNUM=12
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=Demul
SET /A EMUNUM=13
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Helper.exe"
REM "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Naomi.exe"

mkdir "%GBE%\%EMUZ%\%DMUL%\roms"
mkdir "%GBE%\%EMUZ%\%DMUL%\nvram"
mkdir "%GBE%\%EMUZ%\%DMUL%\memsaves"
mkdir "%GBE%\%EMUZ%\%DMUL%\scache"
mkdir "%GBE%\%EMUZ%\%DMUL%\snap"
mkdir "%GBE%\%EMUZ%\%DMUL%\sstates"

set CEMU=Unz
SET /A EMUNUM=15
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%x.exe" move /y "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%x.exe" "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%x.bak" 
rename "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%.exe" "%FMUNZ%x.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%FMUNZ%" "%FMUNZ%\%FMUNZ%.exe"

set CEMU=Supermodel
SET /A EMUNUM=16
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">`>"%GBC%\logs\inst%CEMU%.log"
mkdir "%GBE%\%EMUZ%\%SPRM3%\NVRAM"
mkdir "%GBE%\%EMUZ%\%SPRM3%\SAVES"

set CEMU=VisualBoyAdvance
SET /A EMUNUM=17
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%VGBA%\%VGBA%.exe" move /y "%GBE%\%EMUZ%\%VGBA%\%VGBA%.exe" "%GBE%\%EMUZ%\%VGBA%\%VGBA%.bak"
rename "%GBE%\%EMUZ%\%VGBA%\%VGBA%-M.exe" "%VGBA%.exe"

set CEMU=Dolphin
SET /A EMUNUM=18
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
echo..>>"%GBE%\%EMUZ%\%DOLPH%\portable.txt"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\GCPad"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\Wiimote"

set CEMU=Pcsx2
SET /A EMUNUM=19
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
mkdir "%GBE%\%EMUZ%\%PCSX2%\inis"
mkdir "%GBE%\%EMUZ%\%PCSX2%\bios"

set CEMU=NullDC
SET /A EMUNUM=20
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%NULLDC%\%NULLDC%.exe" move /y "%GBE%\%EMUZ%\%NULLDC%\%NULLDC%.exe" "%GBE%\%EMUZ%\%NULLDC%\%NULLDC%.bak"
rename "%GBE%\%EMUZ%\%NULLDC%\nullDC_Win32_Release-NoTrace.exe" "%NULLDC%.exe"

set CEMU=DesMume
SET /A EMUNUM=94
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=FlashPlayer
SET /A EMUNUM=22
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%SWFPL%" "%SWFPL%\Fullscreenflash.exe"

REM set CEMU=jpcsp
REM SET /A EMUNUM=26
REM call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
REM call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
REM for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%JPCSP%\start-*.bat"') do set jpname=%%~a
REM rename "%GBE%\%EMUZ%\%JPCSP%\%jpname%" "jpcsp.bat"
REM if "%JAVA_HOME%"=="" goto :skpjava
REM pushd "%GBE%\%EMUZ%\%JPCSP%"
REM "%GBC%\fart.exe" "jpcsp.bat" \"%JAVA_HOME%\bin\java"\" "start /w \"\" \"%JAVA_HOME%\bin\java"\"
REM popd

set CEMU=Stella
SET /A EMUNUM=27
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=Atari800
SET /A EMUNUM=108
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=WinAPE
SET /A EMUNUM=33
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=WinX68k
SET /A EMUNUM=34
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=ZXSpin
SET /A EMUNUM=31
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=ParaJVE
SET /A EMUNUM=32
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=Neko
SET /A EMUNUM=35
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=XM6
SET /A EMUNUM=36
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
REM "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XM6%" "%XM6%\XM6Start.exe"
if exist "%GBE%\%EMUZ%\%XM6%\msvcr110.dll" move /y "%GBE%\%EMUZ%\%XM6%\msvcr110.dll" "%GBE%\%EMUZ%\%XM6%\msvcr110.bak
rename "%GBE%\%EMUZ%\%XM6%\msvcr110x%ARPOP%.dll" "msvcr110.dll"
if exist "%GBE%\%EMUZ%\%XM6%\mfc110x%ARPOP%.dll" move /y "%GBE%\%EMUZ%\%XM6%\mfc110.dll" "%GBE%\%EMUZ%\%XM6%\mfc110.bak"
rename "%GBE%\%EMUZ%\%XM6%\mfc110x%ARPOP%.dll" "mfc110.dll"
if exist "%GBE%\%EMUZ%\%XM6%\%XM6%g%ARPOP%.exe" move /y "%GBE%\%EMUZ%\%XM6%\%XM6%.exe" "%GBE%\%EMUZ%\%XM6%\%XM6%.bak"
rename "%GBE%\%EMUZ%\%XM6%\%XM6%g%ARPOP%.exe" "%XM6%.exe"
SET CEMU=M71
SET EMUNUM=83
call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o "%GBE%\%EMUZ%\%XM6%"

SET CEMU=ePSXe
SET EMUNUM=5
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%EPSXE%" "%EPSXE%\cdrom.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%EPSXE%" "%EPSXE%\image.exe"

REM SET CEMU=shaderplugin
REM SET EMUNUM=75
REM call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
REM "%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o"%GBE%\%EMUZ%\%EPSXE%\plugins"

REM SET CEMU=soundplugin
REM SET EMUNUM=74
REM call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
REM "%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o"%GBE%\%EMUZ%\%EPSXE%\plugins"

set CEMU=WinVICE
SET /A EMUNUM=38
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=BlueMSX
SET /A EMUNUM=39
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" mkdir"%GBE%\%EMUZ%\%RTROA%\system\Databases"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" mkdir"%GBE%\%EMUZ%\%RTROA%\system\Machines"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" %ROBOCPY% "%GBE%\%EMUZ%\%BMSX%\Databases" "%GBE%\%EMUZ%\%RTROA%\system\Databases" /COPY:DAT /NP /IS /R:2 /W:2
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" %ROBOCPY% "%GBE%\%EMUZ%\%BMSX%\Machines" "%GBE%\%EMUZ%\%RTROA%\system\Machines" /COPY:DAT /NP /IS /R:2 /W:2

set CEMU=4DO
SET /A EMUNUM=41
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Settings"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Saves"

set CEMU=Nostalgia
SET /A EMUNUM=42
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=Steem
SET /A EMUNUM=45
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
move /y "%GBE%\%EMUZ%\%STEEM%\Pasti.dll" "Pasti.dll.bak"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%STEEM%" "%STEEM%\%STEEM%z.exe"

set CEMU=FS-UAE
SET /A EMUNUM=59
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=cps3emulator
SET /A EMUNUM=112
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
mkdir "%GBE%\%EMUZ%\%CPS3EMU%\CFG"
mkdir "%GBE%\%EMUZ%\%CPS3EMU%\SHOTS"
mkdir "%GBE%\%EMUZ%\%CPS3EMU%\STATES"
if exist "%GBE%\%EMUZ%\%CPS3EMU%\%CPS3EMU%.exe" move /y "%GBE%\%EMUZ%\%CPS3EMU%\%CPS3EMU%.exe" "%GBE%\%EMUZ%\%CPS3EMU%\%CPS3EMU%.bak"
rename "%GBE%\%EMUZ%\%CPS3EMU%\emulator.exe" "%CPS3EMU%.exe"

set CEMU=FinalBurnAlpha
SET /A EMUNUM=65
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
mkdir "%GBE%\%EMUZ%\%FBA%\config"
mkdir "%GBE%\%EMUZ%\%FBA%\config\games"

set CEMU=PPSSPP
SET /A EMUNUM=67
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%PSSP%\%PSSP%.exe" move /y "%GBE%\%EMUZ%\%PSSP%\%PSSP%.exe" "%GBE%\%EMUZ%\%PSSP%\%PSSP%Windows.bak"
rename "%GBE%\%EMUZ%\%PSSP%\%PSSP%Windows%ARPOP%.exe" "%PSSP%.exe"
rename "%GBE%\%EMUZ%\%PSSP%\%PSSP%Windows.exe" "%PSSP%.exe"
mkdir "%GBE%\%EMUZ%\%PSSP%\memstick\SYSTEM"

set CEMU=Arculator
SET /A EMUNUM=68
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
mkdir "%GBE%\%EMUZ%\%FBA%\config"
mkdir "%GBE%\%EMUZ%\%FBA%\config\games"

set CEMU=Altirra
SET /A EMUNUM=69
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%.exe" move /y "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%.bak"
if "%ARPOP%"=="64" move /y "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%.exe" "%ALTRA%32.exe"
if "%ARPOP%"=="64" rename "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%64.exe" "%ALTRA%.exe"

set CEMU=m2emulator
SET /A EMUNUM=81
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%M2EMU%\%M2EMU%.exe" move /y "%GBE%\%EMUZ%\%M2EMU%\%M2EMU%.exe" "%GBE%\%EMUZ%\%M2EMU%\%M2EMU%.bak"
if "%ARPOP%"=="64" rename "%GBE%\%EMUZ%\%M2EMU%\emulator_multicpu.exe" "%M2EMU%.exe"
if "%ARPOP%"=="32" rename "%GBE%\%EMUZ%\%M2EMU%\emulator.exe" "%M2EMU%.exe"

set CEMU=VirtualJaguar
SET /A EMUNUM=82
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%VJAG%" "%VJAG%\vjag.exe"

set CEMU=M71
SET /A EMUNUM=83
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o "%GBE%\%EMUZ%\%XM6%"

set CEMU=WinArcadia
SET /A EMUNUM=84
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%WINARC%\%WINARC%.exe" move /y "%GBE%\%EMUZ%\%WINARC%\%WINARC%.exe" "%GBE%\%EMUZ%\%WINARC%\%WINARC%.bak"
rename "%GBE%\%EMUZ%\%WINARC%\wa.exe" "%WINARC%.exe"

set CEMU=ArcadePCLoader
SET /A EMUNUM=85
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
for /f "delims=" %%a in ('type "%GBC%\taitx2.set"') do rmdir /q "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
for /f "delims=" %%a in ('type "%GBC%\taitx2.set"') do call :%LINKR%

set CEMU=Anex86
SET /A EMUNUM=40
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers /f /v "%GBE%\%EMUZ%\%ANEX%\%ANEX%.exe" /t REG_SZ /d "WINXPSP3 RUNASADMIN"

set CEMU=XM7
SET /A EMUNUM=88
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
move /y "%GBE%\%EMUZ%\%XM7%\Win32\*" "%GBE%\%EMUZ%\%XM7%"

set CEMU=SimCoupe
SET /A EMUNUM=89
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=ProSystem
SET /A EMUNUM=91
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=AppleWin
SET /A EMUNUM=92
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=DesMume
SET /A EMUNUM=94
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
if exist "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.exe" move /y "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.exe" "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.bak"
rename "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%_x%ARPOP%.exe" "%DESMUME%.exe"

set CEMU=BeebEm
SET /A EMUNUM=96
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=ElectrEm
SET /A EMUNUM=97
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

set CEMU=NeoRaine
SET EMUNUM=98
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
if exist "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%.exe" move /y "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%.exe" "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%.bak"
rename "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%32.exe" "%NEORAINE%.exe"

set CEMU=X1turbo
SET /A EMUNUM=99
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XTURB%" "%XTURB%\X1.exe"	

set CEMU=m88
SET /A EMUNUM=100
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu%CEMU%.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\inst%CEMU%.log"

if "%HAVEARC%"=="" goto :EXTRAUTO

set CEMU=raine
SET EMUNUM=77
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%RAINE%\%RAINE%.exe" move /y "%GBE%\%EMUZ%\%RAINE%\%RAINE%.exe" "%GBE%\%EMUZ%\%RAINE%\%RAINE%.bak"
rename "%GBE%\%EMUZ%\%RAINE%\%RAINE%32.exe" "%RAINE%.exe"
set CEMU=mupen64plus
set EMUNUM=126
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=retroArch
set EMUNUM=103
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=WinUAE
SET EMUNUM=23
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=EMU7800
SET EMUNUM=29
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=PicoDrive
set EMUNUM=104
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Bliss
SET EMUNUM=30
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=atari++
SET EMUNUM=28
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=WinBSNS
SET EMUNUM=72
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=No$GBA
SET EMUNUM=21
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%NOGBA%" "%NOGBA%\NDS.exe"
set CEMU=VirtuaNes
SET EMUNUM=64
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=SNESGT
SET EMUNUM=50
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=snes9x
SET EMUNUM=113
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Zsnes
SET EMUNUM=9
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%ZSNS%\%ZSNS%.exe" move /y "%GBE%\%EMUZ%\%ZSNS%\%ZSNS%.exe" "%ZSNS%.bak"
rename "%GBE%\%EMUZ%\%ZSNS%\%ZSNS%w.exe" "%ZSNS%.exe"
set CEMU=DOSBox
SET EMUNUM=7
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=VirtualColeco
SET EMUNUM=8
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=3DOPlay
SET EMUNUM=6
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Ootake
SET EMUNUM=3
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=pcsxr
SET EMUNUM=115
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=OpenMSX
SET EMUNUM=25
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Mess
SET EMUNUM=86
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%MESS%\Roms"
set CEMU=hatari
SET EMUNUM=87
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Yabause
set EMUNUM=106
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=jpcsp
SET EMUNUM=26
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%JPCSP%\start-*.bat"') do set jpname=%%~a
if exist "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bat" move /y "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bat" "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bak"
rename "%GBE%\%EMUZ%\%JPCSP%\%jpname%" "jpcsp.bat"
pushd "%GBE%\%EMUZ%\%JPCSP%"
"%GBC%\fart.exe" "jpcsp.bat" \"%JAVA_HOME%\bin\java"\" "start /w \"\" \"%JAVA_HOME%\bin\java"\"
popd

:EXTRAUTO
if "%EXTRAUTO%"=="1" call "%GBC%\getEmulatorsExtra.bat">>"%GBC%\logs\getEmulatorsExtra.log"

:FINS
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /sound /timeout:2
"%GBC%\fart.exe" "locset.ini" "[EIN]" "1"

call "%GBC%\varloc.bat">>"%GBC%\logs\varloc.log"
set EINST=are
if not exist "%GBE%\%EMUZ%\notfound.ini" GOTO :allok
set DWNBTN=2
if "%HAVEARC%"=="1" set DWNBTN=1
"%GBC%\wbox.exe" "RJ_GUI" "^^Some emulators could not be downloaded^^"  "OK;LIST" /DB=%DWNBTN%
if %ERRORLEVEL%==1 (GOTO :AGTcomplete)
if %ERRORLEVEL%==2 (GOTO :getNF)

:getNF
CALL "%GBC%\notFound.bat">>"%GBC%\logs\notfound.log"
"%GBC%\Wselect.exe" "%GBE%\%EMUZ%\notfound.ini" "Not found" "set NOTFND=$item" > nothere.cmd
if %errorlevel%==0 GOTO :AGTcomplete
CALL nothere.cmd
GOTO :AGTcomplete

:allok
"%GBC%\wbox.exe" "RJ_GUI" "^^All emulators installed successfully^^"  "OK" /DB=1 /BW=260 /TM=1
if %ERRORLEVEL%==1 (GOTO :AGTcomplete)

:AGTcomplete
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
exit /b

:WINV
mklink /d "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a" "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
exit /b

:WINLEG
"%GBC%\linkd.exe" "%GBE%\%EMUZ%\%APCL%\Games\%%~a" "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a"
exit /b
