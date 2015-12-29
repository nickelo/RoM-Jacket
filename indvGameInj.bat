del /q "%GBC%\arguments.cmd"
del /q "%GBC%\options.cmd"
del /q "%GBC%\opt.dat"
del /q "%GBC%\arg.dat"
if "%DREZX%"=="" call "
goto :EMUCHK

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:MEDNCOPY
pushd "%CUSTCONSPTH%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\%MEDN%*.cfg" "%CUSTCONSPTH%"
for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
%COPYTYPE% "%MEDN%*.cfg" "%%~a"
pushd "%%~a"
if "%GGON%"=="1" "%GBC%\fart.exe" "%MEDN%*.cfg" "[ROMPTH]" "%%~dpnxa"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%MEDN%*.cfg" "[ROMPTH]" --remove
popd
)
exit /b

:MESSCOPY
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
call "%GBC%\MESSjoy.bat">>"%GBC%\logs\MESSjoy.log"
popd
pushd "%CUSTCONSPTH%"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\Mess.ini" "%CUSTCONSPTH%"
for /f "delims=" %%a in ("%CUSTCONSPTH%") do (
if "%GGON%"=="1" "%GBC%\fart.exe" "Mess.ini" "[ROMPTH]" "%%~dpnxa"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "Mess.ini" "[ROMPTH]" --remove
mkdir .cfg
mkdir .ctrlr
mkdir .ini
mkdir .inp
mkdir .hi
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\default.cfg" ".cfg"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%CSTLNCH%\input.cfg" ".ctrlr"
)
popd
exit /b

:RTROCOPY
pushd "%CUSTCONSPTH%"
%COPYTYPE% "%GBC%\net\%LNCH%\Other\retroarch.cfg" "%CUSTCONSPTH%"
%COPYTYPE% "%GBC%\net\%LNCH%\Other\.retroarch-core-options.cfg" "%CUSTCONSPTH%"
attrib -H "retroarch-core-options.cfg"
attrib -H "retroarch.cfg"
if "%GGON%"=="1" call :RTINJ
if "%GGOFF%"=="1" "%GBC%\fart.exe" "retroarch.cfg" "[ROMPTH]" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" --remove
popd
)
exit /b
:RTINJ
if "%CSTCONS%"=="%TGCD%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%PCECD%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%SEGCD%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%NES%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%NFAM%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%ODYS2%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%MSX2%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%MSX%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%P3DO%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%LYNX%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%AT78%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%NEOGE%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%NGBA%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%SG32X%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%SSAT%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%PCFX%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%PS1%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" ":\system"
if "%CSTCONS%"=="%SEGDC%" "%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" "%CUSTCONSPTH%"
"%GBC%\fart.exe" "retroarch.cfg" "[SYSTEM]" "%CUSTCONSPTH%"
"%GBC%\fart.exe" "retroarch.cfg" "[ROMPTH]" "%CUSTCONSPTH%"
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:EMUCHK
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call "%GBC%\altsettings.bat">>"%GBC%\logs\altsettings.log"
if /I "%CEMU%"=="Mess64ui" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="Mess64" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="Messui" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="Mess" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="UME" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="UME64" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
IF /i "%CEMU%"=="%MESS%" call "%GBC%\messInj.bat">>"%GBC%\logs\messInj.log"
IF /i "%CEMU%"=="%RTROA%" call "%GBC%\retroarchType.bat">>"%GBC%\logs\retroarchType.log"
if /i "%CEMU%"=="%RTROA%" call :RTROCOPY
if /i "%CEMU%"=="%MESS%" call :MESSCOPY
if "%CSTSUP%"=="1" goto :PREINPUT
IF /i "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\mednInj.log"
if /i "%CEMU%"=="%MEDN%" call :MEDNCOPY
:PREINPUT
set OPTIONS=
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches (These are passed before the rom)" "%EMUOPT%" >"%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
for /f "tokens=1,2 delims= " %%a in ("%OPTIONS%") do (
if "%%~a"=="[MACHINE]" set ALTMESS=1
if "%%~b" NEQ "-[TYP]" set ALTMESS=1
)
pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
popd
call "%GBC%\options.cmd"
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
echo %OPTIONS%>"%GBC%\opt.ini"
for %%R in ("%GBC%\opt.ini") do if %%~zR leq 1 "%GBC%\fart.exe" "zz.bat" [OPT] --remove
popd
goto :emuarg

:emuarg
set ARGUMENTS=
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments (these are passed after the rom)" "%EMUARG%" >"%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
call "%GBC%\arguments.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
echo %ARGUMENTS%>"%GBC%\arg.dat"
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 1 "%GBC%\fart.exe" "zz.bat" [ARG] --remove
popd
goto :rompth1

:rompth1
set fromdir=2
if /I "%CEMU%"=="%RTROA%" set fromdir=1
if /I "%CEMU%"=="Mess64ui" set fromdir=1
if /I "%CEMU%"=="Mess64" set fromdir=1
if /I "%CEMU%"=="Messui" set fromdir=1
if /I "%CEMU%"=="Mess" set fromdir=1
if /I "%CEMU%"=="UME" set fromdir=1
if /I "%CEMU%"=="UME64" set fromdir=1
"%GBC%\Wbox.exe" "RoM-Jacket" "Run Emluator from directory?" "YES;NO" /DB=%fromdir%
if %ERRORLEVEL%==1 goto :FROMDIR
if %ERRORLEVEL%==2 goto :FROMROM
goto :FROMROM

:FROMDIR
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" [IND] --remove
popd
goto :rompth

:FROMROM
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" "[IND]" "REM [IND]"
popd
goto :rompth

:rompth
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\Wbox.exe" "RoM-Jacket" "You can use only the name of the ROM or the FULL PATH of the rom." "FULL;ROM;CUSTOM" /DB=1
if %ERRORLEVEL%==1 goto :FULLPTH
if %ERRORLEVEL%==2 goto :ROMONLY
if %ERRORLEVEL%==3 goto :CUSTROM
goto :INDVCONT

:CUSTROM
"%GBC%\Winput.exe" "set ROMVAR=$input" "Enter the Rom" "[ROM]">"%GBC%\romvar.cmd"
if %ERRORLEVEL%==1 goto :NOROM
pushd "%GBC%"
"%GBC%\fart.exe" "romvar.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "romvar.cmd" ">"" "^>"
popd
call "%GBC%\romvar.cmd"
if "%ROMVAR%"=="" goto :NOROM
if "%ROMVAR%"==" " goto :NOROM
set FULP=0
goto :QUOTECHK


:NOROM
"%GBC%\fart.exe" "zz.bat" [ROM] --remove
goto :CONFIGFILE

:QUOTECHK
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\wbox.exe" "RJ_GUI" "Include quotes?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :QUOTON
if %ERRORLEVEL%==2 goto :QUOTOFF
goto :INDVCONT
:QUOTON
set QUOTON=1
if "%FULP%"=="0" goto :CUSTC
if "%FULP%"=="1" goto :FULPC
if "%FULP%"=="" goto :ROMC
:QUOTOFF
set QUOTON=
if "%FULP%"=="0" goto :CUSTC
if "%FULP%"=="1" goto :FULPC
if "%FULP%"=="" goto :ROMC

:FULLPTH
set FULP=1
goto :QUOTECHK

:FULPC
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if /i "%CEMU%"=="%RTROA%"  "%GBC%\fart.exe" "zz.bat" [ROM] "\"%%ROMF%%"\"
if "%QUOTON%"=="1" "%GBC%\fart.exe" "zz.bat" [ROM] "\"%%ROMF%%"\"
if "%QUOTON%"=="" "%GBC%\fart.exe" "zz.bat" [ROM] "%%ROMF%%"
"%GBC%\fart.exe" "zz.bat" "[ROMPTH]\[ROMN]\*.[EXT]" "%GAMTPATH%"
popd
goto :CONFIGFILE

:CUSTC
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%QUOTON%"=="1" "%GBC%\fart.exe" "zz.bat" [ROM] "\"%ROMVAR%"\"
if "%QUOTON%"=="" "%GBC%\fart.exe" "zz.bat" [ROM] "%ROMVAR%"
goto :CONFIGFILE

:ROMONLY
set FULP=
goto :QUOTECHK

:ROMC
SET ROMPTH="\"^[TMP].[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%QUOTON%"=="1" "%GBC%\fart.exe" "zz.bat" [ROM] "\"%%ROM%%.[EXTN]"\"
if "%QUOTON%"=="" "%GBC%\fart.exe" "zz.bat" [ROM] "%%ROM%%.[EXTN]"
"%GBC%\fart.exe" "zz.bat" [TMP] "%GAMT%"
"%GBC%\fart.exe" "zz.bat" "[ROMPTH]\[ROMN]\*.[EXT]" "%GAMTPATH%"
popd
goto :EXTCHK

:EXTCHK
"%GBC%\Wbox.exe" "RoM-Jacket" "Would you like to use the rom-extension for the rom?" "Yes;No;Custom" /DB=1
if %ERRORLEVEL%==1 goto :EXTON
if %ERRORLEVEL%==2 goto :NOEXT
if %ERRORLEVEL%==3 goto :CSTEXT
goto :INDVCONT

:CSTEXT
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE
call "%GBC%\extSel.cmd"
for %%A in ("%EXTSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6%
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" [EXTN] "%EXTCHK%"
"%GBC%\fart.exe" "zz.bat" [EXT] "%EXTCHK%"
popd
goto :CONFIGFILE

:EXTON
SET EXTCHK=[EXT]
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" .[EXTN] "%GAMTEXT%"
popd

:NOEXT
SET EXTCHK=[EXTN]
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" .[EXTN] --remove
"%GBC%\fart.exe" "zz.bat" .[EXT] --remove
popd
:CONFIGFILE
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to setup PRE and POST launcher custom applications?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :PRECB
if %ERRORLEVEL%==2 goto :CCOMPL
goto :INDVCONT

:PRECB
set PRECA=
if "%CEMU%"=="%CPS3EMU%" set PRECA=[CPSPRE]
set PRECB=
if "%CEMU%"=="%CPS3EMU%" set PRECB=[CPSDAT]
set PRECC=
if "%CEMU%"=="%CPS3EMU%" set PRECC=[CPSINP]
set CSTCA=
if "%CEMU%"=="%CPS3EMU%" set CSTCA=[CPSPOST]
set CSTCB=
if "%CEMU%"=="%CPS3EMU%" set CSTCB=[CPSMEM]
set CSTCC=
if "%CEMU%"=="%CPS3EMU%" set CSTCC=[CPSJOY]
set PRERES=
if "%CUSTREZ%"=="1" set PRERES=[REZAPP][REZFILE]
:PREC12
"%GBC%\Winput.exe" "set PRERES=$input" "enter custom resolution command" "%PRERES%" > "%GBC%\preres.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "preres.cmd" "[REZAPP]" "\"C:\Emulators\Batchscriptlauncher\dc2.exe\" -configure="
"%GBC%\fart.exe" "preres.cmd" "[REZFILE]" "\"C:\Emulators\Batchscriptlauncher\test.xml\""
"%GBC%\fart.exe" "preres.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "preres.cmd" ">"" "^>"
call "%GBC%\preres.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" "REM PRERES" "%PRERES%"
popd
"%GBC%\Winput.exe" "set PRECA=$input" "enter custom command 1 (passed before the emulator)" "%PRECA%" > "%GBC%\prec1.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "prec1.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "prec1.cmd" ">"" "^>"
call "%GBC%\prec1.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%PRECA%"=="" "%GBC%\fart.exe" "zz.bat" "REM PREP1" --remove
if "%PRECA%"==" " "%GBC%\fart.exe" "zz.bat" "REM PREP1" --remove
"%GBC%\fart.exe" "zz.bat" "REM PREP1" " %PRECA%"
if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSPRE] "copy /y Plugins.cfg \"%%EMUL%%\Plugins\""
popd
:PREC22
"%GBC%\Winput.exe" "set PRECB=$input" "enter custom commands (passed before the emulator)" "%PRECB%" > "%GBC%\prec2.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "prec2.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "prec2.cmd" ">"" "^>"
call "%GBC%\prec2.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%PRECB%"=="" "%GBC%\fart.exe" "zz.bat" "REM PREP2" --remove
if "%PRECB%"==" " "%GBC%\fart.exe" "zz.bat" "REM PREP2" --remove
"%GBC%\fart.exe" "zz.bat" "REM PREP2" "%PRECB%"
if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSDAT] "copy /y \".Mem\*.DAT\" \"%%EMUL%%\NVDATA\""
popd
:PREC32
"%GBC%\Winput.exe" "set PRECC=$input" "enter custom commands (passed before the emulator)" "%PRECC%" > "%GBC%\prec3.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "prec3.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "prec3.cmd" ">"" "^>"
call "%GBC%\prec3.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%PRECC%"=="" "%GBC%\fart.exe" "zz.bat" "REM PREP3" --remove
if "%PRECC%"==" " "%GBC%\fart.exe" "zz.bat" "REM PREP3" --remove
"%GBC%\fart.exe" "zz.bat" "REM PREP3" "%PRECB%"
if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSINP] "copy /y *.input \"%%EMUL%%\CFG\""
popd
:CSTC12
"%GBC%\Winput.exe" "set CSTCA=$input" "enter custom command 1 (passed before the emulator)" "%CSTCA%" > "%GBC%\cstc1.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "cstc1.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "cstc1.cmd" ">"" "^>"
call "%GBC%\cstc1.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%CSTCA%"=="" "%GBC%\fart.exe" "zz.bat" "REM CUSTM1" --remove
if "%CSTCA%"==" " "%GBC%\fart.exe" "zz.bat" "REM CUSTM1" --remove
"%GBC%\fart.exe" "zz.bat" "REM CUSTM1" "%CSTCA%"
if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSMEM] "move /y \"%%EMUL%%\NVDATA\*.DAT\" \"%%GAMDIR%%\.Mem""
popd
:CSTC22
"%GBC%\Winput.exe" "set CSTCB=$input" "enter custom command 1 (passed before the emulator)" "%CSTCB%" > "%GBC%\cstc2.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "cstc2.cmd" "\"" "\\"\"
"%GBC%\fart.exe" "cstc2.cmd" ">"" "^>"
call "%GBC%\cstc2.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%CSTCA%"=="" "%GBC%\fart.exe" "zz.bat" "REM CUSTM2" --remove
if "%CSTCA%"==" " "%GBC%\fart.exe" "zz.bat" "REM CUSTM2" --remove
"%GBC%\fart.exe" "zz.bat" "REM CUSTM2" "%CSTCB%"
if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSPOST] "copy /y \"%%EMUL%%\Plugins.cfg\" \"%%GAMDIR%%\""
popd
:CSTC32
"%GBC%\Winput.exe" "set CSTCC=$input" "enter custom command 1 (passed before the emulator)" "%CSTCC%" > "%GBC%\cstc3.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "cstc3.cmd" ">"" "^>"
"%GBC%\fart.exe" "cstc3.cmd" "\"" "\\"\"
call "%GBC%\cstc3.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%CSTCA%"=="" "%GBC%\fart.exe" "zz.bat" "REM CUSTM3" --remove
if "%CSTCA%"==" " "%GBC%\fart.exe" "zz.bat" "REM CUSTM3" --remove
"%GBC%\fart.exe" "zz.bat" "REM CUSTM3" " %CSTCC%"
if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSMEM] "move /y \"%%EMUL%%\NVDATA\*.DAT\" \"%%GAMDIR%%\.Mem""
popd
:CCOMPL
set EMUCFG=
if "%fromdir%"=="1" set EMUCFG=Mess.ini
if /i "%CEMU%"=="%RTROA%" set EMUCFG=*.cfg
"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''" "%EMUCFG%" > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
if not errorlevel 1 call "%GBC%\configfile.cmd"
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%CONFIGFILE%"=="" "%GBC%\fart.exe" "zz.bat" "copy /y" "REM copy /y"
"%GBC%\fart.exe" "zz.bat" [CFG] "%CONFIGFILE%"
echo %OPTIONS%>"%GBC%\opt.dat"
echo %ARGUMENTS%>"%GBC%\arg.dat"
for %%R in ("%GBC%\opt.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zz.bat" [OPT] --remove
for %%R in ("%GBC%\opt.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [OPT] --remove
for %%R in ("%GBC%\arg.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zz.bat" [ARG] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [ARG] --remove
"%GBC%\fart.exe" "zz.bat" [OPT] " %OPTIONS%"
"%GBC%\fart.exe" "zz.bat" [ARG] " %ARGUMENTS%"
popd
exit /b
:INDVCONT
set CANCELLED=1