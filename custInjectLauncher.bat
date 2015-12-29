if "%CEMU%" NEQ ""
:MMontst
if "%GBM%"=="0" goto :dmonOFF
goto :dmonON

:dmonON
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" --remove [DSP]
popd
goto :amctst

:dmonOFF
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" "[DSP]" "REM [DSP]"
popd

:amctst
if "%ANTMIC%"=="DISABLED" goto goto :xpdtst
if "%ANTMIC%"=="[AMC]" goto goto :xpdtst
goto :amcen

:amcen
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [XPLT] "1"
"%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"
"%GBC%\fart.exe" "zz.bat" [JYZ] --remove
popd
goto :dtest

:xpdtst
if "%XPADDER%"=="DISABLED" goto :xpdds
if "%XPADDER%"=="[XPD]" goto :xpdds
goto :xpden

:xpden
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [JYZ] --remove
"%GBC%\fart.exe" "zz.bat" [XPT] --remove
popd
goto :dtest

:xpdds
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"
if "%JOYVAL%"=="" "%GBC%\fart.exe" "zz.bat" "[JYZ]" "REM [JYZ]"
popd

:dtest
if "%DAMVAR%"=="DISABLED" goto :dtdel
if "%DAMVAR%"=="[DAM]" goto :dtdel
goto :dten

:dten
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" --remove [DMT]
popd
goto :extchk

:extchk
pushd "%CUSTCONSPTH%"
if "%EXTCHK%"=="[EXTN]" "%GBC%\fart.exe" "zz.bat" .[EXTN] --remove
if "%EXTCHK%"=="[EXT]" "%GBC%\fart.exe" "zz.bat" [EXTN] [EXT]
popd
goto :rominj

:rominj
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMPTH%"
popd
goto :cfgchk

:cfgchk
if "%CONFIGFILE%"=="" goto :reassign
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [CFG] "%CONFIGFILE%"
popd

goto :reassign

:dtdel
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" "[DMT]" "REM [DMT]"
popd

:J2Ktst
if "%XPADDER%" NEQ "DISABLED" goto :reassign
if "%JOY2KEY%"=="DISABLED" goto :J2Kds
if "%JOY2KEY%"=="[J2K]" goto :J2Kds

:J2Ken
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" -r "*.bat" "REM [XPT]" --remove
"%GBC%\fart.exe" -r "*.bat" XPADDER JOY2KEY
"%GBC%\fart.exe" -r "*.bat" xpadderprofile cfg
"%GBC%\fart.exe" -r "*.bat" "^%^CD%%\%%~na2" --remove
popd
:J2Kds
push "%CUSTCONSPTH%"
"%GBC%\fart.exe" "*.bat" "[XPT]" "REM [XPT]"
popd
:reassign
echo %OPTIONS%>"%GBC%\opt.dat"
echo %ARGUMENTS%>"%GBC%\arg.dat"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\opt.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zz.bat" [OPT] --remove
for %%R in ("%GBC%\opt.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [OPT] --remove
for %%R in ("%GBC%\arg.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zz.bat" [ARG] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [ARG] --remove
popd
pushd "%CUSTCONSPTH%"
if "%RCTFL%"=="1" "%GBC%\fart.exe" "zz.bat" [RCD] 1
"%GBC%\fart.exe" "zz.bat" [SYSTYPE] "%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EMUL] "%CUSTEMUPATH%"
"%GBC%\fart.exe" "zz.bat" [EMUZ] "%CUSTEMUEXE%"
"%GBC%\fart.exe" "zz.bat" [DAMVAR] "%DAMVAR%"
if "%JOYVAL%"=="XPADDER" "%GBC%\fart.exe" "zz.bat" [XPD] "%XPADDER%"
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPD] "%ANTMIC%"
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPLT] "1"
"%GBC%\fart.exe" "zz.bat" [LOC] "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [OPT] " %OPTIONS%"
"%GBC%\fart.exe" "zz.bat" [ARG] " %ARGUMENTS%"
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMSET%"
"%GBC%\fart.exe" "zz.bat" [EXT] "%EXTCHK%"
"%GBC%\fart.exe" "zz.bat" [CFG] "%CONFIGFILE%"
popd
:xpdskpinj