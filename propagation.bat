:PROPBEGIN
set GAMEDIR=
set CSTCONS=
del /q "%GBC%\proplist.ini"
echo.--------->"%GBC%\proplist.ini"
echo.OTHER FILE>>"%GBC%\proplist.ini"
echo.--------->>"%GBC%\proplist.ini"
echo.RetroArch>>"%GBC%\proplist.ini"

if exist "%GBE%\%EMUZ%\%MAME%" for /f "delims=" %%a in ("%MAME%/%MESS%") do echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MAME%" goto :MAMESS
if exist "%GBE%\%EMUZ%\%MESS%" for /f "delims=" %%a in ("%MAME%/%MESS%") do echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MESS%" goto :MAMESS
if exist "%GBE%\%EMUZ%\%UME%" for /f "delims=" %%a in ("%MAME%/%MESS%") do echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%UME%" goto :MAMESS
:MAMESS
:NOMAMESS
echo.--------->>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%WINAPE%" for /f "delims=" %%a in ("%AMSTR%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%AMSTR%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%ALTRA%" for /f "delims=" %%a in ("%AT8H%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%AT8H%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%PROSYS%" for /f "delims=" %%a in ("%AT78%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%AT78%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%STEEM%" for /f "delims=" %%a in ("%ATST%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%ATST%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%VICE%" for /f "delims=" %%a in ("%CM64%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%CM64%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FSUAE%" for /f "delims=" %%a in ("%CAMIG%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%CAMIG%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FSUAE%" for /f "delims=" %%a in ("%AMIG32%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%AMIG32%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%BMSX%" for /f "delims=" %%a in ("%COLEC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%COLEC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%BMSX%" for /f "delims=" %%a in ("%MSX%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%MSX%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%XM7%" for /f "delims=" %%a in ("%FM7%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%FM7%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FMUNZ%" for /f "delims=" %%a in ("%FMTOWNS%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%FMTOWNS%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%NEORAINE%" for /f "delims=" %%a in ("%NEOCD%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NEOCD%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%EPSXE%" for /f "delims=" %%a in ("%PS1%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%PS1%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%PCSX2%" for /f "delims=" %%a in ("%PS2%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%PS2%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%PJ64%" for /f "delims=" %%a in ("%N64%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%N64%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%DOLPH%" for /f "delims=" %%a in ("%NGC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NGC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%DOLPH%" for /f "delims=" %%a in ("%WII%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%WII%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%VGBA%" for /f "delims=" %%a in ("%NGBA%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NGBA%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%NULLDC%" for /f "delims=" %%a in ("%SEGDC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGDC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%DMUL%" for /f "delims=" %%a in ("%ATMS%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%ATMS%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%DMUL%" for /f "delims=" %%a in ("%NAOMI%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NAOMI%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%M2EMU%" for /f "delims=" %%a in ("%SEGM2%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGM2%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%SPRM3%" for /f "delims=" %%a in ("%SEGM3%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGM3%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%SSF%" for /f "delims=" %%a in ("%SSAT%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SSAT%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%ZXSPIN%" for /f "delims=" %%a in ("%ZXSP%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%ZXSP%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%SIMC%" for /f "delims=" %%a in ("%SAMC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SAMC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%PPSSPP%" for /f "delims=" %%a in ("%PSP%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%PSP%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%XM6%" for /f "delims=" %%a in ("%X68K%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%X68K%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SG32X%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SG32X%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEGG%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGG%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEGAG%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGAG%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEGAMD%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGAMD%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEGAP%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGAP%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEGCD%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGCD%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEGMS%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEGMS%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%FUSN%" for /f "delims=" %%a in ("%SEG1K%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SEG1K%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%LYNX%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%LYNX%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%BWS%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%BWS%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%BWSC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%BWSC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NEOPKT%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NEOPKT%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NEOPKTC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NEOPKTC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NGB%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NGB%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NGBC%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NGBC%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NFAM%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NFAM%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NES%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NES%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%NVB%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%NVB%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%PCFX%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%PCFX%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%PCENG%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%PCENG%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%PCECD%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%PCECD%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%SFAM%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SFAM%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%SNES%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SNES%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%SGFX%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%SGFX%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%TG16%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%TG16%" echo.%%~a>>"%GBC%\proplist.ini"
if exist "%GBE%\%EMUZ%\%MEDN%" for /f "delims=" %%a in ("%TGCD%") do cmd /c if exist "%GBG%\%GAM%\%CONS%\%TGCD%" echo.%%~a>>"%GBC%\proplist.ini"

:SELECTSYS
"%GBC%\wselect.exe" "proplist.ini" "Select a system config to propagate" "set CSTCONS=$item" > "%GBC%\syscfg.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\syscfg.cmd"
if "%SYSTEMCFG%"=="---------" goto :SELECTSYS
if "%CSTCONS%"=="%MAME%/%MESS%" goto :ARCD
if "%CSTCONS%"=="OTHER FILE" goto :GENERIC
if "%CSTCONS%"=="RetroArch" goto :RETROARCH
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
goto :%SHRTN%
exit /b

:ARCD
call :GAMESEL
call "%GBC%\UMEProp.bat">>"%GBC%\logs\UMEProp.log"
exit /b

:UME
:LYNX
if not exist "%GBG%\%GAM%\%CONS%\%LYNX%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:SNES
if not exist "%GBG%\%GAM%\%CONS%\%SNES%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NFAM
if not exist "%GBG%\%GAM%\%CONS%\%NFAM%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:SFAM
if not exist "%GBG%\%GAM%\%CONS%\%SFAM%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NES
if not exist "%GBG%\%GAM%\%CONS%\%NES%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NVB
if not exist "%GBG%\%GAM%\%CONS%\%NVB%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NGB
if not exist "%GBG%\%GAM%\%CONS%\%NGB%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NGBC
if not exist "%GBG%\%GAM%\%CONS%\%NGBC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:SAMC
if not exist "%GBG%\%GAM%\%CONS%\%SAMC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\simcProp.bat">>"%GBC%\logs\simcProp.log"
exit /b

:SGFX
if not exist "%GBG%\%GAM%\%CONS%\%SGFX%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:PCENG
if not exist "%GBG%\%GAM%\%CONS%\%PCENG%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:PCECD
if not exist "%GBG%\%GAM%\%CONS%\%PCECD%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:TGCD
if not exist "%GBG%\%GAM%\%CONS%\%TGCD%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:TG16
if not exist "%GBG%\%GAM%\%CONS%\%TG16%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:PCFX
if not exist "%GBG%\%GAM%\%CONS%\%PCFX%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:BWS
if not exist "%GBG%\%GAM%\%CONS%\%BWS%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:BWSC
if not exist "%GBG%\%GAM%\%CONS%\%BWSC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NEOPKT
if not exist "%GBG%\%GAM%\%CONS%\%NEOPKT%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit /b

:NEOPKTC
if not exist "%GBG%\%GAM%\%CONS%\%NEOPKTC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\mednProp.bat">>"%GBC%\logs\mednProp.log"
exit/b
:MSX
if not exist "%GBG%\%GAM%\%CONS%\%COLEC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\bmsxProp.bat">>"%GBC%\logs\bmsxProp.log"
exit/b
:COLEC
if not exist "%GBG%\%GAM%\%CONS%\%COLEC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\bmsxProp.bat">>"%GBC%\logs\bmsxProp.log"
exit/b

:AMSTR
if not exist "%GBG%\%GAM%\%CONS%\%AMSTR%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\winapeProp.bat">>"%GBC%\logs\winapeProp.log"
exit /b

:AT8H
if not exist "%GBG%\%GAM%\%CONS%\%AT8H%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\altraProp.bat">>"%GBC%\logs\altraProp.log"
exit /b

:ATST
if not exist "%GBG%\%GAM%\%CONS%\%ATST%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\steemProp.bat">>"%GBC%\logs\steemProp.log"
exit /b

:AT78
if not exist "%GBG%\%GAM%\%CONS%\%AT78%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\prosysProp.bat">>"%GBC%\logs\prosysProp.log"
exit /b

:CM64
if not exist "%GBG%\%GAM%\%CONS%\%CM64%" goto :NOTEXIST
:CAMIG
if not exist "%GBG%\%GAM%\%CONS%\%CAMIG%" goto :NOTEXIST
:AMIG32
if not exist "%GBG%\%GAM%\%CONS%\%AMIG32%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fsuaeProp.bat">>"%GBC%\logs\fsuaeProp.log"
exit /b

:FM7
if not exist "%GBG%\%GAM%\%CONS%\%FM7%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\xm7Prop.bat">>"%GBC%\logs\xm7Prop.log"
exit /b

:FMTOWNS
if not exist "%GBG%\%GAM%\%CONS%\%FMTOWNS%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\unzProp.bat">>"%GBC%\logs\unzProp.log"
exit /b

:NEOCD
if not exist "%GBG%\%GAM%\%CONS%\%NEOCD%" goto :NOTEXIST
exit /b

:N64
if not exist "%GBG%\%GAM%\%CONS%\%N64%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\pj64Prop.bat">>"%GBC%\logs\pj64Prop.log"
exit /b

:P3DO
if not exist "%GBG%\%GAM%\%CONS%\%P3DO%" goto :NOTEXIST
call "%GBC%\fourdoProp.bat">>"%GBC%\logs\fourdoProp.log"
exit /b

:WII
if not exist "%GBG%\%GAM%\%CONS%\%WII%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\dolphProp.bat">>"%GBC%\logs\dolphProp.log"
exit /b

:NGC
if not exist "%GBG%\%GAM%\%CONS%\%NGC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\dolphProp.bat">>"%GBC%\logs\dolphProp.log"
exit /b

:NGBA
if not exist "%GBG%\%GAM%\%CONS%\%NGBA%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\vbaProp.bat">>"%GBC%\logs\vbaProp.log"
exit /b

:SEGDC
if not exist "%GBG%\%GAM%\%CONS%\%SEGDC%" goto :NOTEXIST
"%GBC%\wbox.exe" "RJ_GUI" "Select a Emulator for Sega Dreamcast" "Demul;Nulldc" /DB=2
if %ERRORLEVEL%==1 goto :DEMUL
if %ERRORLEVEL%==2 goto :NULLDC
goto :QUITOUT
:DEMUL
if not exist "%GBG%\%GAM%\%CONS%\%DEMUL%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\demulPro.bat">>"%GBC%\logs\demulProc.log"
exit /b

:NULLDC
call "%GBC%\nulldcProp.bat">>"%GBC%\logs\nulldcProp.log"
exit /b

:ATMS
set DEMULTEMP=%ATMS%
if not exist "%GBG%\%GAM%\%CONS%\%ATMS%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\dmulProp.bat">>"%GBC%\logs\dmulProp.log"
exit /b

:NAOMI
set DEMULTEMP=%NAOMI%
if not exist "%GBG%\%GAM%\%CONS%\%NAOMI%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\dmulProp.bat">>"%GBC%\logs\dmulProp.log"
exit /b

:SG32X
if not exist "%GBG%\%GAM%\%CONS%\%SG32X%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEG1K
if not exist "%GBG%\%GAM%\%CONS%\%SEG1K%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGAG
if not exist "%GBG%\%GAM%\%CONS%\%SEGAG%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGAMD
if not exist "%GBG%\%GAM%\%CONS%\%SEGAMD%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGMS
if not exist "%GBG%\%GAM%\%CONS%\%SEGMS%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGG
if not exist "%GBG%\%GAM%\%CONS%\%SEGG%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGCD
if not exist "%GBG%\%GAM%\%CONS%\%SEGCD%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGAP
if not exist "%GBG%\%GAM%\%CONS%\%SEGAP%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\fusnProp.bat">>"%GBC%\logs\fusnProp.log"
exit /b

:SEGM2
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\m2emuProp.bat">>"%GBC%\logs\m2emuProp.log"
exit /b

:SEGM3
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\sprm3Prop.bat">>"%GBC%\logs\sprm3Prop.log"
exit /b

:SSAT
if not exist "%GBG%\%GAM%\%CONS%\%SSAT%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\ssfProp.bat">>"%GBC%\logs\ssfProp.log"
exit /b

:ZXSPEC
if not exist "%GBG%\%GAM%\%CONS%\%ZXSPEC%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\zxspinProp.bat">>"%GBC%\logs\zxspinProp.log"
exit /b

:PS1
if not exist "%GBG%\%GAM%\%CONS%\%PS1%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\epsxeProp.bat">>"%GBC%\logs\epsxeProp.log"
exit /b

:PS2
if not exist "%GBG%\%GAM%\%CONS%\%PS2%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\pcsx2Prop.bat">>"%GBC%\logs\pcsx2Prop.log"
exit /b

:PSP
if not exist "%GBG%\%GAM%\%CONS%\%PSP%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\ppssppProp.bat">>"%GBC%\logs\ppssppProp.log"
exit /b

:X68K
if not exist "%GBG%\%GAM%\%CONS%\%X68K%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\xm6Prop.bat">>"%GBC%\logs\xm6Prop.log"
exit /b

:INTEL
if not exist "%GBG%\%GAM%\%CONS%\%INTEL%" goto :NOTEXIST
call :GAMESEL
call "%GBC%\nostProp.bat">>"%GBC%\logs\nostProp.log"
exit /b


:RETROARCH
call :GAMESEL
call "%GBC%\retroProp.bat">>"%GBC%\logs\retroProp.log"
exit /b

:GAMESEL
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to copy settings to a GAME or for ALL games in the %CSTCONS% library?" "Game;All" /DB=2
if %ERRORLEVEL%==1 goto :SELECTEDGAME
if %ERRORLEVEL%==2 exit /b
goto :PROPBEGIN

:SELECTEDGAME
set GAMETOT=
for /f "delims=" %%a in ('Wfolder.exe "SET GAMEDIR=" "%GBG%\%GAM%\%CONS%\%CSTCONS%" "Select the game directory" /noquote') do %%a
if %ERRORLEVEL%==0 goto :PROPBEGIN
if "%GAMEDIR%"=="" goto :PROPBEGIN
for %%a in ("%GAMEDIR%") do set GAMETOT=%%~a
for %%a in ("%GAMEDIR%") do set GAMEDIR=%%~nxa\
exit /b

:GENERIC
del /q "%GBC%\conSelect.ini"
for /f "delims=" %%a in ('Wfile.exe "SET EMUCFGF=" "%GBG%\%GAM%\%CONS%\*.*" "Select a file" /noquote') do %%a
if "%EMUCFGF%"=="" goto ::QUITOUT
for %%a in ("%EMUCFGF%") do (
set EMUCFGN=%%~nxa
if "%%~xa"==".bat" SET ISBAT=1
)
:CONSELECTION
echo.---------->"%GBC%\conselect.ini"
echo.SELECT FOLDER>>"%GBC%\conselect.ini"
echo.---------->>"%GBC%\conselect.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\conSelect.ini"
"%GBC%\Wselect.exe" "%GBC%\conSelect.ini" "Select Console" "set CONAME=$item" > "%GBC%\coname.cmd"
if %errorlevel%==0 goto :LIBRARYSELECTION
CALL "%GBC%\coname.cmd"
if "%CONAME%"=="----------" goto :CONSELECTION
if "%CONAME%"=="" goto :CONSELECTION
if "%CONAME%"=="SELECT FOLDER" goto :ONEFOLDER
SET SUBDIR=
"%GBC%\Winput.exe" "set SUBDIR=$input" "enter subdirectory name">"%GBC%\subdirn.cmd"
call "%GBC%\subdirn.cmd"
if "%SUBDIR%"=="" goto :NOSUBDIR

:SUBDIR
for /f "delims=" %%a in ('dir /b/a-d "%EMUCFGF%"') do set CFGNM=%%~a
"%GBC%\wbox.exe" "RJ_GUI" "Copy ''%CFGNM%'' to every game\%SUBDIR% directory in ''%CONAME%''?" "Update;Overwrite;Cancel" /db=1
if %ERRORLEVEL%==1 goto :updatesub
if %ERRORLEVEL%==2 goto :copytosub
if %ERRORLEVEL%==3 goto :LIBRARYSELECTION
goto :LIBRARYSELECTION

:ONEFOLDER
call :SELECTEDGAME
if "%GAMETOT%"=="" goto :PROPBEGIN
copy /y "%EMUCFGF%" "%GAMETOT%"
exit /b

:copytosub
%BSTRT% "%WBUSY%" "RJ_GUI" "copying ''%CFGNM%'' to game directories in ''%CONAME%''.^" /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do copy /y "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%SUBDIR%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :LIBRARYSELECTION

:updatesub
%BSTRT% "%WBUSY%" "RJ_GUI" "copying ''%CFGNM%'' to game directories in ''%CONAME%''.^" /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do if not exist ""%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%SUBDIR%\%EMUCFGN%" copy "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%SUBDIR%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :LIBRARYSELECTION


:NOSUBDIR
if "%ISBAT%" NEQ "1" goto :TOCOPY
SET BATOVER=1
:TOCOPY
for /f "delims=" %%a in ('dir /b/a-d "%EMUCFGF%"') do set CFGNM=%%~a
"%GBC%\wbox.exe" "RJ_GUI" "Copy ''%CFGNM%'' to every game directory in ''%CONAME%''?" "Update;Overwrite;Cancel" /db=1
if %ERRORLEVEL%==1 goto :updategamdir
if %ERRORLEVEL%==2 goto :copytogamdir
if %ERRORLEVEL%==3 goto :LIBRARYSELECTION
goto :LIBRARYSELECTION

:COPYNAME
"%GBC%\wbox.exe" "RJ_GUI" "##############^BATCH SCRIPT DETECTED^#############^Would you like to copy this file as the name of each folder?^ie: replace the launchers^or^Copy the file as it is named (copy as it is)" "FolderName;CopyAsIs" /DB=2
if %ERRORLEVEL%==1 goto :NAME
if %ERRORLEVEL%==2 goto :copying
goto :quitout

:NAME
set BATOVER=1
goto :copying



:copytogamdir
if "%ISBAT%"=="1" goto :COPYNAME
:copying
%BSTRT% "%WBUSY%" "RJ_GUI" "copying ''%CFGNM%'' to game\%SUBDIR% directories in ''%CONAME%''.^" /marquee
if "%BATOVER%"=="1" goto :FOREV
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do copy /y "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a"
goto :PROPEND
:FOREV
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do copy /y "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%%~a.bat"
:PROPEND
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :LIBRARYSELECTION


:COPYNAME1
"%GBC%\wbox.exe" "RJ_GUI" "##############^BATCH SCRIPT DETECTED^#############^Would you like to copy this file as the name of each folder?^ie: update the launchers^or^Copy the file as it is named (copy as it is)" "FolderName;CopyAsIs" /DB=2
if %ERRORLEVEL%==1 goto :NAME1
if %ERRORLEVEL%==2 goto :updating
goto :quitout

:NAME1
set BATOVER=1
goto :updating

:updategamdir
if "%ISBAT%"=="1" call :COPYNAME1
:updating
%BSTRT% "%WBUSY%" "RJ_GUI" "copying ''%CFGNM%'' to game\%SUBDIR% directories in ''%CONAME%''.^" /marquee
if "%BATOVER%"=="1" goto :FOREV1
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do if not exist ""%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%EMUCFGN%" copy "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a"
goto :PROPEND1
:FOREV1
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do if not exist ""%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%EMUCFGN%" copy "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%%~a.bat"
:PROPEND1
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :QUITOUT

:NOTEXIST
"%GBC%\wbox.exe" "RJ_GUI" "%CSTCONS% does not exist in your library." "Okay" /DB=1 /TM=1
if %ERRORLEVEL%==1 goto :QUITOUT
goto :QUITOUT

:QUITOUT
