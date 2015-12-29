del /q "%GBC%\configfile.cmd"
del /q "%GBC%\arguments.cmd"
del /q "%GBC%\options.cmd"
del /q "%GBC%\opt.dat"
del /q "%GBC%\arg.dat"

pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%DTON%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT] --remove
if "%GGON%"=="1" "%GBC%\fart.exe" "zz.bat" [XFG] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XFG]" "REM [XFG]"
if "%MMON%"=="1" "%GBC%\fart.exe" "zz.bat" [DSP] --remove
if "%MMONOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DSP]" "REM [DSP]"

if "%MANEMU%" NEQ "1" goto :CONFIGFILE
if "%AMCOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [JYZ] "REM [JYZ]"
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [JYZ] "REM [JYZ]"
if "%JOYVAL%" NEQ "" "%GBC%\fart.exe" "zz.bat" [JYZ] --remove
if "%AMCOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] "REM [XPT]"
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] "REM [XPT]"
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT] "REM [DMT]"
if "%XPDON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] --remove
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"
if "%DTON%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT] --remove
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DMT]" "REM [DMT]"
if "%JOYVAL%"=="" "%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"

call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call "%GBC%\altsettings.bat">>"%GBC%\logs\altsettings.log"

:ALLINJECT
if "%EMUOPT%"=="[MACHINE] -[TYP]" goto :NOAUTOINJ
if "%DEFTOPT%"=="1" for %%a in ("%EMUOPT%") do set OPTIONS=%%~a
if "%DEFTOPT%"=="1" goto :OPTPARSE

:NOAUTOINJ
set OPTIONS=
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches (these are passed before the rom)" "%EMUOPT%" > "%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT

:OPTPARSE
for /f "tokens=1,2 delims= " %%a in ("%OPTIONS%") do (
if "%%~a"=="[MACHINE]" set ALTMESS=1
if "%%~b" NEQ "-[TYP]" set ALTMESS=1
)

pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
popd
call "%GBC%\options.cmd"

echo %OPTIONS%>"%GBC%\opt.ini"
for %%R in ("%GBC%\opt.ini") do if %%~zR leq 1 "%GBC%\fart.exe" "zz.bat" [OPT] --remove

if "%DEFTOPT%"=="1" for %%a in ("%EMUARG%") do set ARGUMENTS=%%~a
if "%DEFTOPT%"=="1" goto :ARGPARSE
set ARGUMENTS=
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments (these are passed after the rom)" "%EMUARG%" > "%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
:ARGPARSE
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
call "%GBC%\arguments.cmd"
popd

echo %ARGUMENTS%>"%GBC%\arg.dat"
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 1 "%GBC%\fart.exe" "zz.bat" [ARG] --remove

"%GBC%\fart.exe" "zz.bat" [OPT] " %OPTIONS%"
"%GBC%\fart.exe" "zz.bat" [ARG] " %ARGUMENTS%"

set fromdir=2
if /I "%CEMU%"=="%CPS3EMU%" set fromdir=1
if /I "%CEMU%"=="retroArch" set fromdir=1
if /I "%CSTCONS%"=="%ARCD%" set fromdir=2
if /I "%CEMU%"=="Mess64ui" set fromdir=1
if /I "%CEMU%"=="Mess64" set fromdir=1
if /I "%CEMU%"=="Messui" set fromdir=1
if /I "%CEMU%"=="Mame64" set fromdir=1
if /I "%CEMU%"=="Mame" set fromdir=1
if /I "%CEMU%"=="Mess" set fromdir=1
if /I "%CEMU%"=="UME" set fromdir=1
if /I "%CEMU%"=="UME64" set fromdir=1

if "%DEFTOPT%"=="1" goto :LOCTST

"%GBC%\Wbox.exe" "RJ_GUI" "Run Emluator from directory?" "YES;NO" /DB=%fromdir%
if %ERRORLEVEL%==1 goto :FROMDIR
if %ERRORLEVEL%==2 goto :FROMROM
goto :INDVCONT

:LOCTST
if "%fromdir%"=="1" goto :FROMDIR
if "%CSTCONS%"=="%ARCD%" goto :FROMDIR
goto :FROMROM

:FROMDIR
"%GBC%\fart.exe" "zz.bat" [IND] --remove
goto :rompth

:FROMROM
"%GBC%\fart.exe" "zz.bat" "[IND]" "REM [IND]"
goto :rompth

:rompth
set ROMBUT=1
if "%CEMU%"=="%CPS3EMU%" set ROMBUT=2
if /i "%CEMU%"=="%MAME%" set ROMBUT=2
if /i "%CSTCONS%"=="%ARCD%" set ROMBUT=2
if "%DEFTOPT%"=="1" goto :EXTTEST
"%GBC%\Wbox.exe" "RJ_GUI" "You can use only the name of the ROM or the FULL PATH of the rom.^If you are unsure, use ''FULL''." "FULL;ROM;CUSTOM" /DB=%ROMBUT%
if %ERRORLEVEL%==1 goto :FULLPTH
if %ERRORLEVEL%==2 goto :ROMONLY
if %ERRORLEVEL%==3 goto :CUSTROM
goto :INDVCONT

:EXTTEST
if "%ROMBUT%"=="2" goto :ROMONLY
goto :FULLPTH

:CUSTC
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%QUOTON%"=="1" "%GBC%\fart.exe" "zz.bat" [ROM] "\"%ROMVAR%"\"
if "%QUOTON%"=="" "%GBC%\fart.exe" "zz.bat" [ROM] "%ROMVAR%"
goto :EXTCHK

:FULLPTH
set FULP=1
goto :QUOTECHK

:FULPC
if "%QUOTON%"=="1" SET ROMPTH="\"^%%GAMDIR%%\%%ROM%%.[EXTN]"\"
if "%QUOTON%"=="" SET ROMPTH=%%GAMDIR%%\%%ROM%%.[EXTN]
"%GBC%\fart.exe" "zz.bat" [ROMPTH]\[ROMN] "%^%%%GAMDIR%%%^%"
if /i "%CEMU%"=="%RTROA%"  goto :RATYPCHK     	
"%GBC%\fart.exe" "zz.bat" [ROM] "\"%^%%%GAMDIR%%%^%\%^%%%ROM%%%^%.[EXTN]"\"
goto :EXTCHK

:RATYPCHK
set SRCDIR=
if "%CSTCONS%"=="%ARCD%" set SRCDIR=1
if "%CSTCONS%"=="%CPS%" set SRCDIR=1
if "%CSTCONS%"=="%CPS2%" set SRCDIR=1
if "%CSTCONS%"=="%NEOGE%" set SRCDIR=1
if "%SRCDIR%"=="1" "%GBC%\fart.exe" "zz.bat" [ROM] "\"%^%%%RTROASRC%%%^%\%^%%%ROM%%%^%.[EXTN]"\"
if "%SRCDIR%"=="" "%GBC%\fart.exe" "zz.bat" [ROM] "\"%^%%%GAMDIR%%%^%\%^%%%ROM%%%^%.[EXTN]"\"
goto :EXTCHK

:CUSTROM
"%GBC%\Winput.exe" "set ROMVAR=$input" "Enter the Rom" "[ROM]">"%GBC%\romvar.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
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

:QUOTREM
:QUOTECHK
set QUTSON=1
if "%CEMU%"=="%CPS3EMU%" set QUTSON=2
if "%CEMU%"=="%MAME%" set QUTSON=2
if "%FULP%"=="1" goto :QUOTON
if "%DEFTOPT%"=="1" goto :QUTEST
"%GBC%\wbox.exe" "RJ_GUI" "Include quotes?" "Yes;No" /DB=%QUTSON%
if %ERRORLEVEL%==1 goto :QUOTON
if %ERRORLEVEL%==2 goto :QUOTOFF
goto :INDVCONT

:QUTEST
if "%QUTSON%"=="2" goto :QUOTOFF
goto :QUOTON

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

:ROMONLY
set FULP=
goto :QUOTECHK
:ROMC
"%GBC%\fart.exe" "zz.bat" [ROMPTH]\[ROMN] "%^%%%GAMDIR%%%^%"
if "%QUOTON%"=="1" set ROMPTH="\"^%%ROM%%.[TMPX]"\"
if "%QUOTON%"=="" set ROMPTH=%%ROM%%.[TMPX]
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMPTH%"
goto :EXTCHK

:EXTCHK
set ROMEXTENSION=1
if "%CEMU%"=="%CPS3EMU%" set ROMEXTENSION=2
if "%CEMU%"=="%MAME%" set ROMEXTENSION=2
if "%DEFTOPT%"=="1" goto :USEXTEST
"%GBC%\Wbox.exe" "RJ_GUI" "Would you like RoM-Jacket to use the detected rom-extension for the library?" "Yes;No;Custom" /DB=%ROMEXTENSION%
if %ERRORLEVEL%==1 goto :EXTON
if %ERRORLEVEL%==2 goto :NOEXT
if %ERRORLEVEL%==3 goto :CSTEXT
goto :INDVCONT

:USEXTEST
if "%ROMEXTENSION%"=="2" goto :NOEXT
goto :EXTON

:CSTEXT
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE
call "%GBC%\extSel.cmd"
for %%A in ("%EXTNSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6%
"%GBC%\fart.exe" "zz.bat" [EXT] "%EXTCHK%"
"%GBC%\fart.exe" "zz.bat" [EXTN] "%EXTCHK%"

set EXTONN=
set CLIXT=1
if /I "%CEMU%"=="%MAME%" set CLIXT=2
if /I "%CEMU%"=="%CPS3EMU%" set CLIXT=2
"%GBC%\wbox.exe" "RJ_GUI" "Use the extension for command-line executing?" "Yes;No" /db=%CLIXT%
if %ERRORLEVEL%==1 goto :EXTONN
if %ERRORLEVEL%==2 goto :EXTOFF
goto :INDVCONT

:EXTONN
set EXTONN=1
"%GBC%\fart.exe" "zz.bat" [TMPX] "%EXTCHK%"

:EXTON
set EXTCHK=[EXT]
"%GBC%\fart.exe" "zz.bat" [EXTN] [EXT]
"%GBC%\fart.exe" "zz.bat" [TMPX] "%EXTCHK%"
if "%EXTONN%"=="1" "%GBC%\fart.exe" "zz.bat" [EXT] "%EXTCHK%"
goto :CONFIGFILE

:EXTOFF
set EXTONN=0
"%GBC%\fart.exe" "zz.bat" [TMPX] --remove


:NOEXT
if "%EXTONN%"=="0" goto :QUOTREM
set EXTCHK=[EXTN]

:REMOVEXT
"%GBC%\fart.exe" "zz.bat" .[TMPX] --remove
"%GBC%\fart.exe" "zz.bat" "%%ROM%% " "%%ROM%%"

:CONFIGFILE
set CFGBUT=2
if "%CEMU%"=="%RTROA%" set CFGBUT=1
if "%SRCDIR%"=="1" set CFGBUT=1
REM if "%CEMU%"=="%CPS3EMU%" set CFGBUT=1
if "%DEFTOPT%"=="1" goto :CFGFILE
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to setup PRE and POST launcher custom applications?" "Yes;No" /DB=%CFGBUT%
if %ERRORLEVEL%==1 goto :PREC
if %ERRORLEVEL%==2 goto :CFGFILE
goto :INDVCONT

:PREC
set PRECA=
if "%SRCDIR%"=="1" set PRECA=[RTROASRC]
REM if "%CEMU%"=="%CPS3EMU%" set PRECA=[CPSPRE]
set PRECB=
REM if "%CEMU%"=="%CPS3EMU%" set PRECB=[CPSDAT]
set PRECC=
REM if "%CEMU%"=="%CPS3EMU%" set PRECC=[CPSINP]
set CSTCA=
REM if "%CEMU%"=="%CPS3EMU%" set CSTCA=[CPSPOST]
set CSTCB=
REM if "%CEMU%"=="%CPS3EMU%" set CSTCB=[CPSMEM]
set CSTCC=
REM if "%CEMU%"=="%CPS3EMU%" set CSTCC=[CPSJOY]
set PRERES=
if "%CUSTREZ%"=="1" set PRERES=[REZAPP][REZFILE]
"%GBC%\Winput.exe" "set PRERES=$input" "enter a command to change resolutions" "%PRERES%" > "%GBC%\preres.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "preres.cmd" "[REZAPP]" "\"C:\Emulators\Batchscriptlauncher\dc2.exe\" -configure="
"%GBC%\fart.exe" "preres.cmd" "[REZFILE]" "\"C:\Emulators\Batchscriptlauncher\test.xml\""
"%GBC%\fart.exe" "preres.cmd" ">" "^>"
"%GBC%\fart.exe" "preres.cmd" "\"" "\\"\"
call "%GBC%\preres.cmd"
popd
"%GBC%\fart.exe" "zz.bat" "REM PRERES" " %PRERES%"

:PREC1
del /q "prec.cmd"
if "%CEMU%"=="%RTROA%" set PRECA=[RETROCFG]
"%GBC%\Winput.exe" "set PRECA=$input" "enter custom command 1 (passed before the emulator)" "%PRECA%" > "%GBC%\prec1.cmd"
if %ERRORLEVEL%==1 goto :CSTC1
pushd "%GBC%"
"%GBC%\fart.exe" "prec1.cmd" ">" "^>"
"%GBC%\fart.exe" "prec1.cmd" "\"" "\\"\"
call "%GBC%\prec1.cmd"
popd
if "%RACORE%"=="" set RACORE=%RATYPE%.dll
if "%PRECA%"=="[RETROCFG]" "%GBC%\fart.exe" "zz.bat" "REM PREP1" "copy /y \"%RATYPE%.cfg\" \"%\%%%EMUDIR%%%\%\""
"%GBC%\fart.exe" "zz.bat" "REM PREP1" "%PRECA%"
if "%SRCDIR%"=="1" "%GBC%\fart.exe" "zz.bat" [RTROASRC] "for /f \"delims=\" %%%%a in (\"%^%%%CD%%%^%\..\SOURCE\") do set RTROASRC=%%%%~a"
REM if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSPRE] "copy /y Plugins.cfg \"%%EMUL%%\Plugins\""
:PREC2
del /q "prec2.cmd"
"%GBC%\Winput.exe" "set PRECB=$input" "enter custom command 2 (passed before the emulator)" "%PRECB%" > "%GBC%\prec2.cmd"
if %ERRORLEVEL%==1 goto :CSTC1
pushd "%GBC%"
"%GBC%\fart.exe" "prec2.cmd" ">" "^>"
"%GBC%\fart.exe" "prec2.cmd" "\"" "\\"\"
call "%GBC%\prec2.cmd"
popd
"%GBC%\fart.exe" "zz.bat" "REM PREP2" "%PRECB%"
REM if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSDAT] "copy /y \".Mem\*.DAT\" \"%%EMUL%%\NVDATA\""
:PREC3
del /q "prec3.cmd"
"%GBC%\Winput.exe" "set PRECC=$input" "enter custom command 3 (passed before the emulator)" "%PRECC%" > "%GBC%\prec3.cmd"
if %ERRORLEVEL%==1 goto :CSTC1
pushd "%GBC%"
"%GBC%\fart.exe" "prec3.cmd" ">" "^>"
"%GBC%\fart.exe" "prec3.cmd" "\"" "\\"\"
call "%GBC%\prec3.cmd"
popd
"%GBC%\fart.exe" "zz.bat" "REM PREP3" "%PRECC%"
REM if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSINP] "copy /y *.input \"%%EMUL%%\CFG\""
:CSTC1
if "%CUSTREZ%"=="1" set CSTCA=[REZAPP][REZFILE]
if "%CEMU%"=="%RTROA%" set CSTCA=[CAPTURECFG]
"%GBC%\Winput.exe" "set CSTCA=$input" "enter custom command 4 (passed after the emulator exits)" "%CSTCA%" > "%GBC%\cstc1.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "cstc1.cmd" "[REZAPP]" "\"C:\Emulators\Batchscriptlauncher\dc2.exe\" -configure="
"%GBC%\fart.exe" "cstc1.cmd" "[REZFILE]" "\"C:\Emulators\Batchscriptlauncher\test2.xml\""
"%GBC%\fart.exe" "cstc1.cmd" ">" "^>"
"%GBC%\fart.exe" "cstc1.cmd" "\"" "\\"\"
call "%GBC%\cstc1.cmd"
popd
if "%CSTCA%"=="[CAPTURECFG]" "%GBC%\fart.exe" "zz.bat" "REM CUSTM1" "copy /y \"%RATYPE%.cfg\" \"%\%%%GAMDIR%%%\%\""
"%GBC%\fart.exe" "zz.bat" "REM CUSTM1" "%CSTCA%"
REM if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSPOST] "copy /y \"%%EMUL%%\Plugins.cfg\" \"%%GAMDIR%%\""
:CSTC2
"%GBC%\Winput.exe" "set CSTCB=$input" "enter custom command 5 (passed after the emulator exits)" "%CSTCB%" > "%GBC%\cstc2.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "cstc2.cmd" ">" "^>"
"%GBC%\fart.exe" "cstc2.cmd" "\"" "\\"\"
call "%GBC%\cstc2.cmd"
popd
"%GBC%\fart.exe" "zz.bat" "REM CUSTM2" "%CSTCB%"
REM if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSMEM] "move /y \"%%EMUL%%\NVDATA\*.DAT\" \"%%GAMDIR%%\.Mem""
:CSTC3
"%GBC%\Winput.exe" "set CSTCC=$input" "enter custom command 6 (passed after the emulator exits)" "%CSTCC%" > "%GBC%\cstc3.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
pushd "%GBC%"
"%GBC%\fart.exe" "cstc3.cmd" ">" "^>"
"%GBC%\fart.exe" "cstc3.cmd" "\"" "\\"\"
call "%GBC%\cstc3.cmd"
popd
"%GBC%\fart.exe" "zz.bat" "REM CUSTM3" " %CSTCC%"
REM if "%CEMU%"=="%CPS3EMU%" "%GBC%\fart.exe" "zz.bat" [CPSJOY] "move /y \"%%EMUL%%\CFG\*.input\" \"%%GAMDIR%%\""
:CFGFILE
if "%MANEMU%"=="" goto :CCOMPL
if /I "%CEMU%"=="mame" set EMUCFG=Mame.ini
if /I "%CEMU%"=="%MAME%" set EMUCFG=Mame.ini
if /I "%CEMU%"=="Mess64ui" set EMUCFG=Mess.ini
if /I "%CEMU%"=="Mess64" set EMUCFG=Mess.ini
if /I "%CEMU%"=="Messui" set EMUCFG=Mess.ini
if /I "%CEMU%"=="Mess" set EMUCFG=Mess.ini
if /I "%CEMU%"=="UME" set EMUCFG=Mess.ini
if /I "%CEMU%"=="UME64" set EMUCFG=Mess.ini
if /i "%CEMU%"=="%RTROA%" set EMUCFG=retroarch*.cfg
if "%DEFTOPT%"=="1" goto :CFGFTST

"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''" "%EMUCFG%" > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :INDVCONT
:CONFIGSET
call "%GBC%\configfile.cmd"
if "%CONFIGFILE%"=="" "%GBC%\fart.exe" "zz.bat" "copy /y" "REM copy /y"
"%GBC%\fart.exe" "zz.bat" [CFG] "%CONFIGFILE%"

if /i "%CEMU%"=="%RTROA%" call "%GBC%\retroarchType.bat">>"%GBC%\logs\retroarchType.log"
pushd "%GBC%\net\%LNCH%\Other"
if "%COREOVERIDE%"=="1" "%GBC%\fart.exe" -iC "zz.bat" "REM [CSTINJ]" "for /f \"delims=\" %%%%a in (\"%RACORE%\") do set RATYPE=%%%%~na"
if "%COREOVERIDE%"=="1" "%GBC%\fart.exe" "zz.bat" "REM [CSTINJ2]" "set COREOV=-L cores\%RACORE%"
if "%COREOVERIDE%"=="1" "%GBC%\fart.exe" -iC "zz.bat" "\-f" "\-f %\%%%COREOV%%%\%"
if /i "%CEMU%"=="%MESS%" call "%GBC%\MESSinj.bat">>"%GBC%\logs\MESSinj.log"
if /i "%CEMU%"=="%MAME%" call "%GBC%\MAMEinj.bat">>"%GBC%\logs\MAMEinj.log"
if "%CSTSUP%"=="1" goto :CCOMPL

if /I "%CEMU%"=="%FUSN%" call "%GBC%\fusnInj.bat">>"%GBC%\logs\%CSTCONS%fusnInj.log"
if /I "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
goto :CCOMPL

:CFGFTST
for %%a in ("%EMUCFG%") do set CONFIGFILE=%%~a
goto :CONFIGSET

:INDVCONT
set CANCELLED=1

:CCOMPL