set CEMU=Yabause
set EMUNUM=106
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=WCDI
SET EMUNUM=14
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set EMUNUM=103
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
set CEMU=OpenMSX
SET EMUNUM=25
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Ootake
SET EMUNUM=3
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=nestopia
SET EMUNUM=101
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=pcsxr
SET EMUNUM=115
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=VirtualColeco
SET EMUNUM=8
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=Bliss
SET EMUNUM=30
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
set CEMU=3DOPlay
SET EMUNUM=6
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
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
set CEMU=CD-I
SET EMUNUM=14
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%WCDI%\wcdi*.exe"') do set WCDIXE=%%~a
if exist "%GBE%\%EMUZ%\%WCDI%\wcdiemu.exe" move /y "%GBE%\%EMUZ%\%WCDI%\wcdiemu.exe" "%GBE%\%EMUZ%\%WCDI%\wcdiemu.bak"
rename "%GBE%\%EMUZ%\%WCDI%\%WCDIXE%" "wcdiemu.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%WCDI%" "%WCDI%\CDIWrapper.exe"
set CEMU=jpcsp
SET EMUNUM=26
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%JPCSP%\start-*.bat"') do set jpname=%%~a
if exist "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bat" move /y "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bat" "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bak"
rename "%GBE%\%EMUZ%\%JPCSP%\%jpname%" "jpcsp.bat"
pushd "%GBE%\%EMUZ%\%JPCSP%"
"%GBC%\fart.exe" "jpcsp.bat" \"%JAVA_HOME%\bin\java"\" "start /w \"\" \"%JAVA_HOME%\bin\java"\"
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
set CEMU=WinUAE
SET EMUNUM=23
call "%GBC%\getemu.bat">>"%GBC%\logs\%CEMU%getemu.log"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
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







