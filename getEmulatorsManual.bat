SET EMUINST=Manual
SET INSTBEGIN=0
SET EMUCHOICE=

:MANGET
del /s /q "%GBE%\%EMUZ%\inst.ini"
del /s /q "%GBE%\%EMUZ%\notfound.ini"
call "%GBC%\mkemudirs.bat">>"%GBC%\logs\mkemudirs.log"
if not exist "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe" "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%BATCHL%" "%BATCHL%\%BATCHL%.exe"

:INSTEMU
if "%INSTBEGIN%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%"') do del /q "%GBE%\%EMUZ%\%%~a"
SET INSTBEGIN=1
goto :selemu

:NOEMU
if "%INSTBEGIN%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "%EMUCHOICE% Not Found." /Stop /timeout:1
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%"') do del /q "%GBE%\%EMUZ%\%%~a"
exit /b

:selemu
set LISTSRCH=emuAssign.set
call "%GBC%\emuSearch.bat">>"%GBC%\logs\emuSearch.log"
if not exist "%GBC%\curlist.ini" goto :QUITOUT
if "%ALLEMU%"=="1" goto :get_complete

:listcull
set WGVAR=WGETS
if "%HAVEARC%"=="1" set WGVAR=WGEST
copy /y "%GBC%\curlist.ini" "%GBC%\curtst.ini"
for /f "delims=" %%a in ('type "%GBC%\curtst.ini"') do (
set CEMU=%%~a
call :%WGVAR%
)
if "%HAVEARC%"=="" %BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%"') do del /q "%GBE%\%EMUZ%\%%~a"
del /q "%GBC%\curlist.tmp"
rename "%GBC%\curlist.ini" "curlist.tmp"
for /f "delims=" %%a in ('type "%GBC%\curlist.tmp"') do echo.%%~a>>"%GBC%\curlist.ini"
if "%HAVEARC%"=="" goto :REMAINING

:wget_
exit /b

:REMAINING
if not exist "%GBC%\curlist.ini" goto :get_complete
"%GBC%\Wselect.exe" "%GBC%\curlist.ini" "Select An Emulator to install" "set EMUCHOICE=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :get_complete
CALL "%GBC%\emuAssign.cmd"
for %%A in ("%EMUCHOICE:~0,1%") do set DIREMUCHOICE=%%~A
if /I "%DIREMUCHOICE%"=="#" goto :selemu
if /I "%EMUCHOICE%"=="ALL RECOMMENDED" goto :man_sed
SET INSTBEGIN=1
set CEMU=%EMUCHOICE%	
set EMUNOTHERE=
CALL :wget_%EMUCHOICE%
if "%EMUNOTHERE%"=="1" goto :NOEMU
if "%EMUNOTHERE%"=="" goto :MANGET
exit /b

:WGEST
echo.%CEMU%get>>"%GBC%\callingout.ini"
echo.%CEMU%inst>>"%GBC%\callingout.ini"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\%CEMU%\*.7z"') do set CEMUFILE=%%~a
call :wget_%CEMU%
exit /b

:WGETS
if "%CEMU%"=="" goto :EOF
SET INSTBEGIN=1
set EMUCHOICE=%CEMU%
set EMUNOTHERE=
call :wget_%CEMU%
if "%EMUNOTHERE%"=="1" call :NOEMU
if "%EMUNOTHERE%"=="" %BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%"') do del /q "%GBE%\%EMUZ%\%%~a"
popd
exit /b

:wget_CustomEmulator
goto :selemu

:wget_Fusion
SET EMUNUM=1
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Yabause
set EMUNUM=106
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_PPSSPP
SET EMUNUM=67
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%PSSP%\%PSSP%.exe" move /y "%GBE%\%EMUZ%\%PSSP%\%PSSP%.exe" "%GBE%\%EMUZ%\%PSSP%\%PSSP%Windows.bak"
rename "%GBE%\%EMUZ%\%PSSP%\%PSSP%Windows%ARPOP%.exe" "%PSSP%.exe"
rename "%GBE%\%EMUZ%\%PSSP%\%PSSP%Windows.exe" "%PSSP%.exe"
mkdir "%GBE%\%EMUZ%\%PSSP%\memstick\SYSTEM"
exit /b
:wget_FinalBurnAlpha
SET EMUNUM=65
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%FBA%\config"
mkdir "%GBE%\%EMUZ%\%FBA%\config\games"
exit /b
:wget_cps3emulator
SET EMUNUM=112
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%CPS3EMU%\CFG"
mkdir "%GBE%\%EMUZ%\%CPS3EMU%\SHOTS"
mkdir "%GBE%\%EMUZ%\%CPS3EMU%\STATES"
if exist "%GBE%\%EMUZ%\%CPS3EMU%\%CPS3EMU%.exe" move /y "%GBE%\%EMUZ%\%CPS3EMU%\%CPS3EMU%.exe" "%GBE%\%EMUZ%\%CPS3EMU%\%CPS3EMU%.bak"
rename "%GBE%\%EMUZ%\%CPS3EMU%\emulator.exe" "%CPS3EMU%.exe"
exit /b
:wget_WCDI
SET EMUNUM=14
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b

:wget_m88
SET EMUNUM=100
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b

:wget_X1turbo
SET EMUNUM=99
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XTURB%" "%XTURB%\X1.exe"
exit /b

:wget_Mess
SET EMUNUM=86
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%MESS%\Roms"
exit /b

:wget_hatari
SET EMUNUM=87
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_XM7
SET EMUNUM=88
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
move /y "%GBE%\%EMUZ%\%XM7%\Win32\*" "%GBE%\%EMUZ%\%XM7%"
exit /b
:wget_OpenMSX
SET EMUNUM=25
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_ProjectTempest
SET EMUNUM=4
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTLauncher.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTCDWrapper.exe"
exit /b
:wget_ZXSpin
SET EMUNUM=31
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_nestopia
SET EMUNUM=101
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_psx
SET EMUNUM=37
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_ParaJVE
SET EMUNUM=32
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_pcsxr
SET EMUNUM=115
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
:wget_ePSXe
SET EMUNUM=5
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%EPSXE%" "%EPSXE%\cdrom.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%EPSXE%" "%EPSXE%\image.exe"
exit /b
:wget_Nostalgia
SET EMUNUM=42
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_VirtualColeco
SET EMUNUM=8
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Bliss
SET EMUNUM=30
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Ootake
SET EMUNUM=3
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Anex86
SET EMUNUM=40
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
REG ADD HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers /f /v "%GBE%\%EMUZ%\%ANEX%\%ANEX%.exe" /t REG_SZ /d "WINXPSP3 RUNASADMIN"
exit /b
:wget_3DOPlay
SET EMUNUM=6
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_DOSBox
SET EMUNUM=7
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_VirtualColeco
SET EMUNUM=8
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_WinArcadia
SET EMUNUM=84
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
reaname "%GBE%\%EMUZ%\%WINARC%\wa.exe" "%WINARC%.exe"
exit /b
:wget_VirtualJaguar
SET EMUNUM=82
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%VJAG%" "%VJAG%\vjag.exe"
exit /b
:wget_VirtuaNes
SET EMUNUM=64
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_SNESGT
SET EMUNUM=50
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_snes9x
SET EMUNUM=113
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Zsnes
SET EMUNUM=9
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%ZSNS%\%ZSNS%.exe" move /y "%GBE%\%EMUZ%\%ZSNS%\%ZSNS%.exe" "%ZSNS%.bak"
rename "%GBE%\%EMUZ%\%ZSNS%\%ZSNS%w.exe" "%ZSNS%.exe"
exit /b
:wget_SimCoupe
SET EMUNUM=89
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_SSF
SET EMUNUM=10
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
move /Y "%GBE%\%EMUZ%\%SSF%" "%GBE%\%EMUZ%\%SSF%"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
exit /b
:wget_Project64
SET EMUNUM=11
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Altirra
SET EMUNUM=69
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%.exe" move /y "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%.bak"
if "%ARPOP%"=="32" rename "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%.exe" "%ALTRA%32.exe"
if "%ARPOP%"=="64" rename "%GBE%\%EMUZ%\%ALTRA%\%ALTRA%64.exe" "%ALTRA%.exe"

exit /b
:wget_Arculator
SET EMUNUM=68
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Steem
SET EMUNUM=45
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
move /y "%GBE%\%EMUZ%\%STEEM%\Pasti.dll" "Pasti.dll.bak"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%STEEM%" "%STEEM%\%STEEM%z.exe"
exit /b
:wget_Mame
SET EMUNUM=12
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b	
:wget_Demul
SET EMUNUM=13
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Helper.exe"
REM "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Naomi.exe"
mkdir "%GBE%\%EMUZ%\%DMUL%\roms"
mkdir "%GBE%\%EMUZ%\%DMUL%\nvram"
mkdir "%GBE%\%EMUZ%\%DMUL%\memsaves"
mkdir "%GBE%\%EMUZ%\%DMUL%\scache"
mkdir "%GBE%\%EMUZ%\%DMUL%\snap"
mkdir "%GBE%\%EMUZ%\%DMUL%\sstates"
exit /b
:wget_4DO
SET EMUNUM=41
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Settings"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Saves"
exit /b
:wget_CD-I
SET EMUNUM=14
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
for /f "delims=" %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%WCDI%\wcdi*.exe"') do set WCDIXE=%%~a
if exist "%GBE%\%EMUZ%\%WCDI%\wcdiemu.exe" move /y "%GBE%\%EMUZ%\%WCDI%\wcdiemu.exe" "%GBE%\%EMUZ%\%WCDI%\wcdiemu.bak"
rename "%GBE%\%EMUZ%\%WCDI%\%WCDIXE%" "wcdiemu.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%WCDI%" "%WCDI%\CDIWrapper.exe"
exit /b
:wget_ArcadePCLoader
SET EMUNUM=85
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
for /f "delims=" %%a in ('type "%GBC%\taitx2.set"') do rmdir /q "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
for /f "delims=" %%a in ('type "%GBC%\taitx2.set"') do mklink /d "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a" "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
exit /b
:wget_Unz
SET EMUNUM=15
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%x.exe" move /y "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%x.exe" "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%x.bak" 
rename "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%.exe" "%FMUNZ%x.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%FMUNZ%" "%FMUNZ%\%FMUNZ%.exe"
exit /b
:wget_Supermodel
SET EMUNUM=16
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%SPRM3%\NVRAM"
mkdir "%GBE%\%EMUZ%\%SPRM3%\SAVES"
exit /b
:wget_m2emulator
SET EMUNUM=81
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%M2EMU%\%M2EMU%.exe" move /y "%GBE%\%EMUZ%\%M2EMU%\%M2EMU%.exe" "%GBE%\%EMUZ%\%M2EMU%\%M2EMU%.bak"
if "%ARPOP%"=="64" rename "%GBE%\%EMUZ%\%M2EMU%\emulator_multicpu.exe" "%M2EMU%.exe"
if "%ARPOP%"=="32" rename "%GBE%\%EMUZ%\%M2EMU%\emulator.exe" "%M2EMU%.exe"
exit /b
:wget_VisualBoyAdvance
SET EMUNUM=17
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%VGBA%\%VGBA%.exe" move /y "%GBE%\%EMUZ%\%VGBA%\%VGBA%.exe" "%GBE%\%EMUZ%\%VGBA%\%VGBA%.bak"
rename "%GBE%\%EMUZ%\%VGBA%\%VGBA%-M.exe" "%VGBA%.exe"
exit /b
:wget_Dolphin
SET EMUNUM=18
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
echo..>>"%GBE%\%EMUZ%\%DOLPH%\portable.txt"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\GCPad"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\Wiimote"
exit /b
:wget_Pcsx2
SET EMUNUM=19
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
mkdir "%GBE%\%EMUZ%\%PCSX2%\inis"
mkdir "%GBE%\%EMUZ%\%PCSX2%\bios"
exit /b
:wget_NullDC
SET EMUNUM=20
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_No$GBA
SET EMUNUM=21
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%NOGBA%" "%NOGBA%\NDS.exe"
exit /b
:wget_DesMume
SET EMUNUM=94
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.exe" move /y "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.exe" "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.bak"
rename "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%_x%ARPOP%.exe" "%DESMUME%.exe"
exit /b
:wget_bgb
SET EMUNUM=24
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_FlashPlayer
SET EMUNUM=22
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%SWFPL%" "%SWFPL%\Fullscreenflash.exe"
exit /b
:wget_Atari800
SET EMUNUM=108
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_atari++
SET EMUNUM=28
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_WinBSNS
SET EMUNUM=72
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_WinVICE
SET EMUNUM=38
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Stella
SET EMUNUM=27
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_BlueMSX
SET EMUNUM=39
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" mkdir"%GBE%\%EMUZ%\%RTROA%\system\Databases"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" mkdir"%GBE%\%EMUZ%\%RTROA%\system\Machines"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" %ROBOCPY% "%GBE%\%EMUZ%\%BMSX%\Databases" "%GBE%\%EMUZ%\%RTROA%\system\Databases" /COPY:DAT /NP /IS /R:2 /W:2
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" %ROBOCPY% "%GBE%\%EMUZ%\%BMSX%\Machines" "%GBE%\%EMUZ%\%RTROA%\system\Machines" /COPY:DAT /NP /IS /R:2 /W:2
exit /b
:wget_jpcsp
SET EMUNUM=26
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%JPCSP%\start-*.bat"') do set jpname=%%~a
if exist "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bat" move /y "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bat" "%GBE%\%EMUZ%\%JPCSP%\jpcsp.bak"
rename "%GBE%\%EMUZ%\%JPCSP%\%jpname%" "jpcsp.bat"
pushd "%GBE%\%EMUZ%\%JPCSP%"
"%GBC%\fart.exe" "jpcsp.bat" \"%JAVA_HOME%\bin\java"\" "start /w \"\" \"%JAVA_HOME%\bin\java"\"
popd
exit /b
:wget_ProSystem
SET EMUNUM=91
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_AppleWin
SET EMUNUM=92
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_EMU7800
SET EMUNUM=29
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_PicoDrive
set EMUNUM=104
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Bliss
SET EMUNUM=30
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Mednafen
SET EMUNUM=2
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_XM6
SET EMUNUM=36
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
REM "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XM6%" "%XM6%\XM6Start.exe"
if exist "%GBE%\%EMUZ%\%XM6%\msvcr110.dll" move /y "%GBE%\%EMUZ%\%XM6%\msvcr110.dll" "%GBE%\%EMUZ%\%XM6%\msvcr110.bak
rename "%GBE%\%EMUZ%\%XM6%\msvcr110x%ARPOP%.dll" "msvcr110.dll"
if exist "%GBE%\%EMUZ%\%XM6%\mfc110x%ARPOP%.dll" move /y "%GBE%\%EMUZ%\%XM6%\mfc110.dll" "%GBE%\%EMUZ%\%XM6%\mfc110.bak"
rename "%GBE%\%EMUZ%\%XM6%\mfc110x%ARPOP%.dll" "mfc110.dll"
if exist "%GBE%\%EMUZ%\%XM6%\%XM6%g%ARPOP%.exe" move /y "%GBE%\%EMUZ%\%XM6%\%XM6%.exe" "%GBE%\%EMUZ%\%XM6%\%XM6%.bak"
rename "%GBE%\%EMUZ%\%XM6%\%XM6%g%ARPOP%.exe" "%XM6%.exe"
SET CEMU=M71
SET EMUNUM=83
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o "%GBE%\%EMUZ%\%XM6%"
exit /b
:wget_WinAPE
SET EMUNUM=33
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_WinUAE
SET EMUNUM=23
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_FS-UAE
SET EMUNUM=59
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_WinX68k
SET EMUNUM=34
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_BeebEm
SET EMUNUM=96
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_ElectrEm
SET EMUNUM=97
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Nostalgia
SET EMUNUM=42
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_Neko
SET EMUNUM=35
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_NeoRaine
SET EMUNUM=98
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%.exe" move /y "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%.exe" "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%.bak"
rename "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%32.exe" "%NEORAINE%.exe"
exit /b
:wget_raine
SET EMUNUM=77
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
if exist "%GBE%\%EMUZ%\%RAINE%\%RAINE%.exe" move /y "%GBE%\%EMUZ%\%RAINE%\%RAINE%.exe" "%GBE%\%EMUZ%\%RAINE%\%RAINE%.bak"
rename "%GBE%\%EMUZ%\%RAINE%\%RAINE%32.exe" "%RAINE%.exe"
exit /b
:wget_mupen64plus
set EMUNUM=126
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:wget_retroArch
set EMUNUM=103
if "%HAVEARC%"=="" call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat">>"%GBC%\logs\%CEMU%instemu.log"
exit /b
:get_complete
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"') do rd /q "%%d"
"%GBC%\fart.exe" "locset.ini" "[EIN]" "2"
call "%GBC%\varloc.bat">>"%GBC%\logs\varloc.log"
set EINST=are
if not exist "%GBE%\%EMUZ%\notfound.ini" GOTO :manual_end
"%GBC%\wbox.exe" "RJ_GUI" "^^Some emulators could not be downloaded^^"  "OK;LIST" /DB=2
if %ERRORLEVEL%==1 (GOTO :manual_end)
if %ERRORLEVEL%==2 (GOTO :getNF)
goto :manual_end
:getNF
CALL "%GBC%\notFound.bat">>"%GBC%\logs\notfound.log"
"%GBC%\Wselect.exe" "%GBE%\%EMUZ%\notfound.ini" "Not found" "set NOTFND=$item" > nothere.cmd
if %errorlevel%==0 GOTO :AGTcomplete
CALL nothere.cmd
GOTO :AGTcomplete
:man_sed
CALL "%GBC%\getEmulatorsAUTO.bat">>"%GBC%\logs\getEmulatorsAUTO.log"
:manual_end
for /f "delims=" %%d in ('dir /b /ad "%GBE%\%EMUZ%"') do rd /q "%GBE%\%EMUZ%\%%~d"
del /q "%GBC%\emuchoice.cmd"
"%GBC%\fart.exe" "locset.ini" "[EIN]" "2"
CALL "%GBC%\initialEmuConfig.bat">>"%GBC%\logs\initialEmuConfig.log"
set EINST=are
