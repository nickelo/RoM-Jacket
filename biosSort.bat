pushd "%GBC%\net\BIOS"
del /s /q "%GBE%\%EMUZ%\inst.ini"
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"^| sort /r') do rd "%%d"

for /f "delims=" %%a in ('dir /b /ad "%GBE%\%EMUZ%"') do echo %%~a>>"%GBE%\%EMUZ%\inst.ini"
for %%R in ("%GBE%\%EMUZ%\inst.ini") do if %%~zR neq 0 goto :GUESSING
"%GBC%\wbox.exe" "RJ_GUI" "^^No Emulators have been installed.^To install your BIOS files, install an emulator.^" "Thanks" /TM=7
if %ERRORLEVEL%==1 goto :EOF
goto :EOF

:GUESSING
:PCCDGUESS
if exist "%GBE%\%EMUZ%\%MEDN%" goto :PCCD
if exist "%GBG%\%GAM%\%CONS%\%PCECD%" goto :PCCD
if exist "%GBG%\%GAM%\%CONS%\%TGCD%" goto :PCCD
goto :APL2GSGUESS

:PCCD
for /f "delims=" %%a in ("dir /b/a-d/s "*.pce"') do (
SET EMUZN=PCCD
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"

:PCCDCHECKING
for /R %%i in ("*CD-ROM System*.pce") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"
for /R %%i in ("*Super CD-ROM2 System*.pce") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"
for /R %%i in ("*TurboGrafx CD*.pce") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"
for /R %%i in ("SYSCARD3.PCE") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"
if not exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" goto :APL2GSGUESS
for /R %%i in ("*CD-ROM System*.pce") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%RTROA%\SYSCARD3.PCE"
for /R %%i in ("*Super CD-ROM2 System*.pce") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%RTROA%\SYSCARD3.PCE"
for /R %%i in ("*TurboGrafx CD*.pce") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%RTROA%\SYSCARD3.PCE"
for /R %%i in ("SYSCARD3.PCE") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\SYSCARD3.PCE" || "copy /y "%PCECDROMFILE%" "%GBE%\%EMUZ%\%RTROA%\SYSCARD3.PCE"

:APL2GSGUESS
if exist "%GBE%\%EMUZ%\%KEGS%" goto :APL2GS
if exist "%GBG%\%GAM%\%CONS%\%APL2GS%" goto :APL2GS
goto :PCFXGUESS

:APL2GS
set EMUZN=APL2GS
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("*Rom03gd*") do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /R %%i in ("*APPLE2GS*.rom2") do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /R %%i in ("ROM 03") do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /R %%i in ("ROM 01") do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
for /R %%i in ("xgs.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
:PCFXGUESS
if exist "%GBE%\%EMUZ%\%MEDN%" goto :PCFX
if exist "%GBG%\%GAM%\%CONS%\%PCFX%" goto :PCFX
goto :NEOGEOGUESS

:PCFX
SET EMUZN=PCFX
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("*pcfx*.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom" 
for /R %%i in ("*pcfx*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%\pcfx.rom" 
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" for /R %%i in ("*pcfx*.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\pcfx.rom" 
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" for /R %%i in ("*pcfx*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\system\pcfx.rom" 

:NEOGEOGUESS
if exist "%GBE%\%EMUZ%\%MAME%" (goto :NEOGEO)
if exist "%GBG%\%GAM%\%CONS%\%NEOGE%" goto :NEOGEO
goto :AT52GUESS

:NEOGEO
SET EMUZN=NEOGEO
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE" (SET emuExists=1)
for /R %%i in ("neocd.bin") do "%SEVENZIP%" a "neocdz.zip" "%%~i"
for /R %%i in ("000-lo.lo") do "%SEVENZIP%" a "neocdz.zip" "%%~i"
for /R %%i in ("neocd.zip") do copy /Y "%%~i" %GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("neocdz.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NEORAINE%"
for /R %%i in ("neocdz.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /R %%i in ("uni-bios.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /R %%i in ("neocd.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NEORAINE%"
for /R %%i in ("neocd.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /R %%i in ("neocd.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NEORAINE%"
for /R %%i in ("neocd.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /R %%i in ("neogeo.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%FBA%"
for /R %%i in ("neogeo.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("hod2bios.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /R %%i in ("f355bios.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /R %%i in ("airlbios.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /R %%i in ("dc.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /R %%i in ("*naomi*") do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /R %%i in ("awbios.zip") do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /R %%i in ("cpzn1.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("cpzn2.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("cvs.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("decocass.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("pgm.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("playch10.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
for /R %%i in ("skns.zip") do copy /Y "%%~i" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"

:AT8HGUESS
if exist "%GBE%\%EMUZ%\%ALTRA%" goto :AT8H
if exist "%GBG%\%GAM%\%CONS%\%AT8H%" goto :AT8H
goto :ATSTGUESS

:AT8H
SET EMUZN=AT8H
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("*5200*.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /R %%i in ("*5200*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /R %%i in ("*ATARIOSA*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /R %%i in ("*ATARIBAS*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /R %%i in ("*ATARIOSB*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /R %%i in ("*ATARIXL*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"
for /R %%i in ("*ATARIBAS*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%ALTRA%"

:ATSTGUESS
if exist "%GBE%\%EMUZ%\%STEEM%" goto :ATST
if exist "%GBG%\%GAM%\%CONS%\%ATST%" goto :ATST
goto :NGBAGUESS

:ATST
SET EMUZN=STEEM
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("eTOS*.img") do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /R %%i in ("TOS*.img") do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /R %%i in ("TOS*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /R %%i in ("*kaos*.img") do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"
for /R %%i in ("*kaos*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%STEEM%"

:NGBAGUESS
set EMUZN=NGBA
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if exist "%GBE%\%EMUZ%\%NOGBA%" goto :NGBA
if exist "%GBE%\%EMUZ%\%DESMUME%" goto :NGBA
if exist "%GBG%\%GAM%\%CONS%\%NGBA%" goto :NGBA
goto :NDSGUESS

:NGBA
SET EMUZN=NGBA
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("GBA*.rom") do copy /y "%%~i" "%GBE%\%EMUZ%\%VGBA%"

:NDSGUESS
set EMUZN=NDS
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if exist "%GBE%\%EMUZ%\%NOGBA%" goto :NDS
if exist "%GBG%\%GAM%\%CONS%\%NDS%" goto :NDS
goto :AT52GUESS

:NDS
SET EMUZN=NDS
for /R %%i in ("GBA*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
for /R %%i in ("biosnds7.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
for /R %%i in ("biosnds9.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"
for /R %%i in ("firmware.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOGBA%"

:AT52GUESS
if exist "%GBE%\%EMUZ%\%ATRI%" goto :AT52
if exist "%GBG%\%GAM%\%CONS%\%AT52%" goto :AT52
goto :FM7GUESS

:AT52
set EMUZN=AT52
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("5200.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%AT8E%"
for /R %%i in ("5200.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%AT8E%"

:FM7GUESS
if exist "%GBE%\%EMUZ%\%XM7%" (goto :FM7)
if exist "%GBG%\%GAM%\%CONS%\%FM7%" (goto :FM7)
goto :NFAMGUESS

:FM7
SET EMUZN=FM7
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("boot_dos.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("boot_bas.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("boot_mmr.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("dicrom.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("extsub.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("fbasic*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("f-basic*.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("Initiate.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("Kanji.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("Kanji2.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("Subsys_a.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("Subsys_b.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("Subsys_c.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"
for /R %%i in ("SubsysCG.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%XM7%"

:NFAMGUESS
if exist "%GBE%\%EMUZ%\%MEDN%" goto :NFAM
if exist "%GBG%\%GAM%\%CONS%\%NES%" goto :NFAM
if exist "%GBG%\%GAM%\%CONS%\%NFAM%" goto :NFAM
goto :32XGUESS

:NFAM
set EMUZN=NFAM
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("disksys.rom") do copy /y "%%~i" "%GBE%\%EMUZ%\%MEDN%"

:32XGUESS
if exist "%GBE%\%EMUZ%\%FUSN%" (goto :32X)
if exist "%GBG%\%GAM%\%CONS%\%SG32X%" (goto :32X) ELSE (goto :DreamcastGUESS)

:32X
set EMUZN=SG32X
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%FUSN%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*32X*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "32X_M*"') do SET 32XM=%%i
for /f "delims=" %%i in ('dir /b /a-d "32X_S*"') do SET 32XS=%%i
for /f "delims=" %%i in ('dir /b /a-d "32X_G*"') do SET 32XG=%%i

:DreamcastGUESS
if exist "%GBE%\%EMUZ%\%NULLDC%" (call :DC)
if exist "%GBE%\%EMUZ%\%NULLDC%" (call :DC2)
goto :PCFXGUESS

:BMSX
set EMUZN=MSX
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /f "delims=" %%i in ('dir /b /a-d "DISK.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "DISK2.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "DOS.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "FMPAC.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX2.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX2P.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"
for /f "delims=" %%i in ('dir /b /a-d "MSX2PEXT.ROM"') do copy /y "%GBE%\%EMUZ%\%BMSX%"


:DC2
set EMUZN=SEGDC
if not exist "%GBE%\%EMUZ%\%DMUL%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "dc.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
exit /b

:DC
set EMUZN=SEGDC
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%SEGDC%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "DC - BIOS*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data\dc_BIOS.bin"
for /f "delims=" %%i in ('dir /b /a-d "DC - Flash*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data\dc_flash.bin"
for /f "delims=" %%i in ('dir /b /a-d "DC - Utopia CD Loader V1.1*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data"
for /f "delims=" %%i in ('dir /b /a-d "DC - VMS BIOS (Full)*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data"
for /f "delims=" %%i in ('dir /b /a-d "dc_*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%NULLDC%\data"
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" for /f "delims=" %%a in ('dir /b/a-d "*dc_*") do copy /Y "%%~a" "%GBE%\%EMUZ%\%RTROA%\system\dc\%%~a" 
exit /b

:PCFXGUESS
if exist "%GBE%\%EMUZ%\%OOTK%" (goto :PCFX)
if exist "%GBG%\%GAM%\%CONS%\%PCFX%" (goto :PCFX) ELSE (goto :LynxGUESS)

:PCFX
set EMUZN=PCFX
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /f "delims=" %%i in ('dir /b /a-d "*.pce"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%OOTK%"

:LynxGUESS
if exist "%GBE%\%EMUZ%\%MEDN%" (goto :Lynx) 
if exist "%GBG%\%GAM%\%CONS%\%LYNX%" (goto :Lynx) ELSE (goto :NaomiGUESS)

:Lynx
set EMUZN=LNX
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%MEDN%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "lynx*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"

:NaomiGUESS
if exist "%GBE%\%EMUZ%\%DMUL%" (goto :NAOMI)
if exist "%GBG%\%GAM%\%CONS%\%NAOMI%" (goto :NAOMI) ELSE (goto :ATMSGUESS)

:NAOMI
set EMUZN=NAOMI
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%DMUL%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*NAOMI*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms\"
for /f "delims=" %%i in ('dir /b /a-d "f355bios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms\"
for /f "delims=" %%i in ('dir /b /a-d "hod2bios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms\"
for /f "delims=" %%i in ('dir /b /a-d "airlbios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms\"


:HIKARUGUESS
if exist "%GBE%\%EMUZ%\%DMUL%" (goto :HIKARU)
if exist "%GBG%\%GAM%\%CONS%\%HIKARU%" (goto :HIKARU)
goto :X68KGUESS

:HIKARU
set EMUZN=HIKARU
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%DMUL%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*%HIKARU%*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms\"
for /f "delims=" %%i in ('dir /b /a-d "hikaru.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms\"


:ATMSGUESS
if exist "%GBE%\%EMUZ%\%DMUL%" (goto :ATMS)
if exist "%GBG%\%GAM%\%CONS%\%ATMS%" (goto :ATMS)
goto :X68KGUESS

:ATMS
set EMUZN=ATMS
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%DMUL%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*%ATMS%*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"
for /f "delims=" %%i in ('dir /b /a-d "awbios.zip"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\roms"


:X68KGUESS
if exist "%GBE%\%EMUZ%\%XM6%" goto :X68K
if exist "%GBG%\%GAM%\%CONS%\%X68K%" goto :X68K
goto :SegaCDGUESS

:X68K
set EMUZN=X68K
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%XM6%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*X68K*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%DMUL%\"
for /f "delims=" %%i in ('dir /b /a-d "*X68000*"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "*X68000*"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "keyconf.dat"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "iplrom.dat"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "cgrom.dat"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "CG.ROM"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"
for /f "delims=" %%i in ('dir /b /a-d "BOOT.ROM"') do copy "%%~i" "%GBE%\%EMUZ%\%XM6%"

:SegaCDGUESS
if exist "%GBE%\%EMUZ%\%FUSN%" (goto :SEGCD)
if exist "%GBG%\%GAM%\%CONS%\%SEGCD%" (goto :SEGCD) ELSE (goto :SSFGUESS)

:SEGCD
set EMUZN=SEGCD
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%FUSN%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*eu_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*eu_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*jp_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*jp_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*us_scd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
for /f "delims=" %%i in ('dir /b /a-d "*us_segacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FUSN%"
if not exist "%GBE%\%EMUZ%\%RTROA%" goto :SSFGUESS
for /f "delims=" %%i in ('dir /b /a-d "*eu_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_E.bin"
for /f "delims=" %%i in ('dir /b /a-d "*eu_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_E.bin"
for /f "delims=" %%i in ('dir /b /a-d "*jp_mcd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_J.bin"
for /f "delims=" %%i in ('dir /b /a-d "*jp_megacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_J.bin"
for /f "delims=" %%i in ('dir /b /a-d "*us_scd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_U.bin"
for /f "delims=" %%i in ('dir /b /a-d "*us_segacd*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\bios_CD_U.bin"


:SSFGUESS
if exist "%GBE%\%EMUZ%\%SSF%" (goto :SSAT)
if exist "%GBG%\%GAM%\%CONS%\%SSAT%" (goto :SSAT) ELSE (goto :PS2GUESS)

:SSAT
set EMUZN=SSAT
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%SSF%" (SET emuExists=1)
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
for /f "delims=" %%i in ('dir /b /a-d "*Saturn*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
for /f "delims=" %%i in ('dir /b /a-d "BIOS(EUR)*"') do (
SET SSFB=%%i

copy /Y "%SSFB%" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
)

for /f "delims=" %%i in ('dir /b /a-d "BIOS(USA)*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%i
)

for /f "delims=" %%i in ('dir /b /a-d "BIOS(JAP)*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%i
)

for /f "delims=" %%i in ('dir /b /a-d "SS - BIOS V1.00*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%i
)

for /f "delims=" %%i in ('dir /b /a-d "SS - BIOS V1.01*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=%%I
)

for /f "delims=" %%i in ('dir /b /a-d "SS - BIOS V1.02*"') do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
SET SSFB=SS - BIOS V1.02.bin
)

for /R %%i in ("20091.bin") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
SET SSFSTV=%%i
)

for /R %%i in ("stv110.bin") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
SET SSFSTV=%%i
)

:PS2GUESS
if exist "%GBE%\%EMUZ%\%PCSX2%" (goto :PS2)
if exist "%GBG%\%GAM%\%CONS%\%PS2%" (goto :PS2) ELSE (goto :PS1GUESS)

:PS2
set EMUZN=PS2
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%PCSX2%" (SET emuExists=1)
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("EROM.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("PS2 Bios 30004R V6 Pal.bin") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
pushd "%GBE%\%EMUZ%\%PCSX2%"
"%GBC%\inifile.exe" "inis\PCSX2_ui.ini" [Filenames] BIOS=%%i
popd
)

for /R %%i in ("PS2 Bios 30004R V6 Pal.MEC") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("PS2 Bios 30004R V6 Pal.NVM") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("rom1.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("ROM2.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70004_BIOS_V12_PAL_200.BIN") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
pushd "%GBE%\%EMUZ%\%PCSX2%"
"%GBC%\inifile.exe" "inis\PCSX2_ui.ini" [Filenames] BIOS=%%i
popd
)

for /R %%i in ("SCPH-70004_BIOS_V12_PAL_200.EROM") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70004_BIOS_V12_PAL_200.MEC") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70004_BIOS_V12_PAL_200.NVM") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70004_BIOS_V12_PAL_200.ROM1") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70004_BIOS_V12_PAL_200.ROM2") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70012_BIOS_V12_USA_200.bin") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
pushd "%GBE%\%EMUZ%\%PCSX2%"
"%GBC%\inifile.exe" "inis\PCSX2_ui.ini" [Filenames] BIOS=%%i
popd
)

for /R %%i in ("SCPH-70012_BIOS_V12_USA_200.MEC") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("SCPH-70012_BIOS_V12_USA_200.NVM") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("scph10000.bin") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
pushd "%GBE%\%EMUZ%\%PCSX2%"
"%GBC%\inifile.exe" "inis\PCSX2_ui.ini" [Filenames] BIOS=%%i
popd
)

for /R %%i in ("scph10000.NVM") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("scph39001.bin") do (
copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
pushd "%GBE%\%EMUZ%\%PCSX2%"
"%GBC%\inifile.exe" "inis\PCSX2_ui.ini" [Filenames] BIOS=%%i	
popd
)
for /R %%i in ("scph39001.MEC") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
for /R %%i in ("scph39001.NVM") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSX2%\BIOS"

:PS1GUESS
if exist "%GBE%\%EMUZ%\%MEDN%" goto :PS1t
goto :PSXt

:PS1t
set EMUZN=PS1
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /R %%i in ("SCPH5500.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /R %%i in ("Scph5501.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"
for /R %%i in ("Scph5502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%MEDN%"

:PSXt
if exist "%GBE%\%EMUZ%\%PSX%" call :PS1
if exist "%GBE%\%EMUZ%\%PCSXR%" call :PS1D
if exist "%GBE%\%EMUZ%\%EPSXE%" call :PS1E
if exist "%GBE%\%EMUZ%\%RTROA%" call :PS1R
if exist "%GBG%\%GAM%\%CONS%\%PS1%" call :PS1
goto :NGBAGUESS

:PS1D
set EMUZN=PS1
for /R %%i in ("Dtlh3000.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("Dtlh3002.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("SCPH1001.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("SCPH101.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("SCPH5000.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("SCPH5500.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("Scph5501.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("Scph5502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("Scph7000.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("SCPH7001.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("Scph7003.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
for /R %%i in ("scph7502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PCSXR%\BIOS"
exit /b

:PS1
set EMUZN=PS1
for /R %%i in ("Dtlh3000.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("Dtlh3002.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("SCPH1001.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("SCPH101.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("SCPH5000.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("SCPH5500.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("SCPH5501.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("Scph5502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("Scph7000.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("SCPH7001.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("Scph7003.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
for /R %%i in ("scph7502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%PSX%\BIOS"
exit /b


:PS1R
set EMUZN=PS1
for /R %%i in ("SCPH5500.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%\"
for /R %%i in ("SCPH5501.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%"
for /R %%i in ("Scph5502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%RTROA%"
exit /b


:PS1E
for /R %%i in ("Dtlh3000.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("Dtlh3002.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("SCPH1001.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("SCPH101.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("SCPH5000.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("SCPH5500.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("Scph5501.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("Scph5502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("Scph7000.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("SCPH7001.BIN") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("Scph7003.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
for /R %%i in ("scph7502.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%EPSXE%\BIOS"
exit /b

:NGBAGUESS
if exist "%GBE%\%EMUZ%\%VGBA%" (goto :NGBA)
if exist "%GBG%\%GAM%\%CONS%\%NGBA%" (goto :NGBA)
goto :FMUNZGUESS

:NGBA
set EMUZN=NGBA
if not exist "%GBE%\%EMUZ%\%VGBA%" (SET emuExists=1)
for /R %%i in ("gba*.*") do copy /Y "%%~i" "%GBE%\%EMUZ%\%VGBA%"


:FMUNZGUESS
if exist "%GBE%\%EMUZ%\%VGBA%" (goto :FMUNZ)
if exist "%GBG%\%GAM%\%CONS%\%FMUNZ%" (goto :FMUNZ) ELSE (goto :NOSTLGUESS)

:FMUNZ
set EMUZN=FMUNZ
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%VGBA%" (SET emuExists=1)
for /R %%i in ("FMT_*") do copy /Y "%%~i" "%GBE%\%EMUZ%\%VGBA%"

:NOSTLGUESS
if exist "%GBE%\%EMUZ%\%NOSTL%" (goto :CDI)
if exist "%GBG%\%GAM%\%CONS%\%INTEL%" (goto :NOSTL) ELSE (goto :WCDIGUESS)

:NOSTL
set EMUZN=INTEL
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%NOSTL%" (SET emuExists=1)
for /R %%i in ("grom.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOSTL%\"
for /R %%i in ("exec.bin") do copy /Y "%%~i" "%GBE%\%EMUZ%\%NOSTL%\"

:WCDIGUESS
if exist "%GBE%\%EMUZ%\%WCDI%" goto :WCDI
if exist "%GBG%\%GAM%\%CONS%\%CDI%" (goto :WCDI) ELSE (goto :FMUNZGUESS)

:WCDI
set EMUZN=CDI
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /f "delims=" %%i in ("cdi200a.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ("cdi200b.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ("cdi490a.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ("cdi910.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ("impega.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ("vmpega.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"
for /f "delims=" %%i in ("xmpegx.rom") do copy /Y "%%~i" "%GBE%\%EMUZ%\%WCDI%\rom"


:FMUNZGUESS
if exist "%GBE%\%EMUZ%\%FMUNZ%" (goto :FMUNZ)
if exist "%GBG%\%GAM%\%CONS%\%FMTOWNS%" (goto :FMUNZ) ELSE (goto :JaguarCDGUESS)

:FMUNZ
set EMUZN=FMTOWNS
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%FMUNZ%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "FMT*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%FMUNZ%"

:JaguarCDGUESS
if exist "%GBE%\%EMUZ%\%PTMPS%" (goto :JAGCD)
if exist "%GBG%\%GAM%\%CONS%\%JAGCD%" (goto :JAGCD) 
goto :EmulatorAlert

:JAGCD
set EMUZN=JAGCD
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%PTMPS%" (SET emuExists=1)
for /f "delims=" %%i in ('dir /b /a-d "*Jaguar*"') do copy /Y "%%~i" "%GBE%\%EMUZ%\%PTMPS%"

:AmigaGUESS
if exist "%GBE%\%EMUZ%\%FSUAE%" (goto :Amiga)
if exist "%GBG%\%GAM%\%CONS%\%CAMIG%" (goto :Amiga) ELSE (goto :Amig32GUESS)


:Amiga
set EMUZN=CAMIG
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%FSUAE%" (SET emuExists=1)
for /f "delims=" %%a in ('dir /b/a-d "*Kick*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A1000*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A1200*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A2500*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A3000*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A4000*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A500*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*A600*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" copy /y "%GBE%\%EMUZ%\%FSUAE%\*Kick*1.3*" "%GBE%\%EMUZ%\%RTROA%\kick.rom"

:Amiga32GUESS
if exist "%GBE%\%EMUZ%\%FSUAE%" (goto :CD32)
if exist "%GBG%\%GAM%\%CONS%\%AMIG32%" (goto :CD32) ELSE (goto :3DOGUESS)

:CD32
set EMUZN=CD32
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
if not exist "%GBE%\%EMUZ%\%FSUAE%" (SET emuExists=1)
for /f "delims=" %%a in ('dir /b/a-d "*EXTENDED*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*CD32*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%" 
for /f "delims=" %%a in ('dir /b/a-d "*CDTV*.rom"') do copy /y "%%~a" "%GBE%\%EMUZ%\%FSUAE%"

:3DOGUESS
if exist "%GBE%\%EMUZ%\%FOURDO%" (goto :3DO)
if exist "%GBG%\%GAM%\%CONS%\%P3DO%" (goto :3DO)

:3DO
set EMUZN=P3DO
REM CALL "%GBC%\BiosCRC.bat">>"%GBC%\logs\BiosCRC.log"
for /f "delims=" %%a in ('dir /b /a-d "*panaf*"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "*sanyo*"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "bios.rom"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "*3DO*.bin"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%" 
for /f "delims=" %%a in ('dir /b /a-d "Goldstar.bin"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%FOURDO%"


:7800GUESS
if exist "%GBE%\%EMUZ%\%PROSYS%" (goto :7800)
if exist "%GBE%\%EMUZ%\%RTROA%" (goto :7800)
if exist "%GBG%\%CONS%\%AT78%" (goto :7800)

:7800
set EMUZN=PROSYS
for /f "delims=" %%a in ('dir /b /a-d "*7800*"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%PROSYS%" 
if exist "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe" for /f "delims=" %%a in ('dir /b /a-d "7800 BIOS (U).rom"') do copy /Y "%%~a" "%GBE%\%EMUZ%\%RTROA%"
if exist "%GBG%\%GAM%\%CONS%\%MESS%" (goto :MESS) ELSE (goto :EmulatorAlert)

:MESS
SET EMUZN=
call "%GBC%\messbios.bat">>"%GBC%\logs\messbios.log"
if emuExists==1 (goto :EmulatorAlert) ELSE (goto :sortd)

:EmulatorAlert
"%GBC$%\wbox.exe" "RJ_GUI" "^^It appears you have BIOS files for which you have no emulator.^^" "Thanks" /AL /BW=150 /TM=3
if %ERRORLEVEL%==1 "goto :sortd

:sortd
%GBD%
cd "%GBC%\net\BIOS"
