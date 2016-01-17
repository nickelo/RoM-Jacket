SET INJSKP=0
CALL "%GBC%\conCheck.bat">>"%GBC%\logs\conCheck.log"
if "%CANCELLED%"=="1" exit /b
if "%INJSKP%"=="1" exit /b

set CASNUM=
set CARTNUM=
set FLPNUM=
set HDNUM=
set QKNUM=
set EXOUT=
set DSKTYPE=hard

for %%a in ("%FMTOWNS%") do if "%CSTCONS%"=="%%~a" set /A HDNUM+=1
for %%a in ("%COLADM%" "%ENTP64%" "%ENTP128%") do if "%CSTCONS%"=="%%~a" set /A CASNUM+=1
for %%a in ("%ACBBC%" "%PC6K%" "%GACOM%" "%MSX%" "%MSX2%" "%MSXT%") do if "%CSTCONS%"=="%%~a" set /A CARTNUM+=1
for %%a in ("%X68K%" "%PC88%" "%PC88VA%" "%PC98%" "%FMTOWNS%" "%APL2GS%" "%APL2E%" "%COLADM%" "%SAMC%" "%ACARC%" "%SPECV%" "%MO5%" "%TOUHU%" "%FM7%" "%DRAG32%") do if "%CSTCONS%"=="%%~a" set /A FLPNUM+=1&&set /A HDNUM+=1
pushd "%CUSTCONSPTH%"

if /i "%CSTCONS%"=="Arcade" attrib +H "SOURCE"
if /i "%CSTCONS%"=="CPS" attrib +H "SOURCE"
if /i "%CSTCONS%"=="CPS 2" attrib +H "SOURCE"
if /i "%CSTCONS%"=="CPS 3" attrib +H "SOURCE"
if /i "%CSTCONS%"=="Sega Model 2" attrib +H "SOURCE"
if /i "%CSTCONS%"=="Sega Model 3" attrib +H "SOURCE"
if /i "%CSTCONS%"=="NeoGeo MVS" attrib +H "SOURCE"

for /f "delims=" %%a in ('dir /b/ad-h "%CUSTCONSPTH%"') do (
set CSTROM=%%~a
set MULTMESS=
call :injextall
)
popd
exit /b

:MEXTENCHK 	 	
if "%ALLEXT%" NEQ ".zip" set MULTIMESS=1
if /I "%ALLEXT%"==".zip" CALL :extracting
for %%a in (".act") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] ct
for %%a in (".hdf") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] sasi
for %%a in (".awd") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] disk1
for %%a in (".hd" ".vhd") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] "hard%HDNUM%"
for %%a in (".cue" ".toc" ".nrg" ".gdi" ".iso" ".cdr") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] cdrm
for %%a in (".ach" ".m65" ".frz" ".plusd.prg" ".sem" ".sit" ".sna" ".snp" ".nas" ".snx" ".ace" ".sp" ".mtx" ".z80" ".zx" ".vz") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] dump
for %%a in (".p00" ".prg" ".mwb" ".comx" ".com" ".tvc" ".pgm" ".raw" ".scr" ".cmd" ".c8" ".ch8" ".nv" ".obj" ".ch8" ".t64" ".app" ".rex" ".ds2") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] "quik%QKNUM%"
for %%a in (".wav" ".mzf" ".mzt" ".tap" ".cas" ".tzx" ".cdt" ".rko" ".rk8" ".rku" ".blk" ".ptp" ".c10" ".p" ".mdv" ".k7" ".81" ".o" ".csw" ".uef") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] "cass%CASNUM%"
for %%a in (".crt" ".col" ".mx1" ".rom" ".bin" ".epr" ".emr" ".uze" ".m7" ".80" ".crd" ".tgc" ".z26" ".card" ".e0" ".ic1" ".ccc" ".20" ".40" ".32x" ".st2" ".60" ".gam" ".vec" ".dck" ".a0" ".e0" ".a78" ".a52" ".a26" ".gb" ".nes" ".sgx" ".smc" ".gme" ".gen" ".sc" ".cpr" ".pce" ".unf" ".unif" ".gbc") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] "cart%CARTNUM%"
for %%a in (".image.dc" ".dc42" ".dsk" ".mfi" ".mfm" ".odi" ".2d" ".fdi" ".cqm" ".bbc" ".ssd" ".dsd" ".dsk" ".ima" ".img" ".ufi" ".atr" ".40t" ".nib" ".360" ".d77" ".d88" ".xfd" ".1dd" ".dfi" ".imd" ".ipf" ".mfi" ".mfm" ".td0" ".fds" ".g64" ".d64" ".d71" ".g71" ".1dd" ".td0" ".st" ".msa" ".stx" ".qd" ".sap" ".os9" ".vdk" ".d81" ".dmk" ".do" ".po") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] "flop%FLPNUM%"
for %%a in (".chd") do if /i "%%~a"=="%ALLEXT%" "%GBC%\fart.exe" "*.bat" [TYP] "%DSKTYPE%%HDNUM%"
)
exit /b

:extracting
if "%ALTMESS%"=="1" exit /b
set /A MULTMESS+=1
if "%MULTMESS%"=="1" call "%GBC%\messarc.bat">>"%GBC%\logs\messarc.log"
exit /b

:injextall
if "%CD%"=="%GBC%" exit /b
pushd "%CUSTCONSPTH%\%CSTROM%"
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
SET ALLNAM=%%~a
SET FULLNM=%%~dpnxa
SET ALLEXT=%%~xa
CALL :SETEXT
if "%CEMU%"=="%UME%" CALL :MEXTENCHK
if "%CEMU%"=="%UME%" CALL :MEXTENCHK
if "%CEMU%"=="%MESS%" CALL :MEXTENCHK
)
popd
exit /b

:SETEXT
if /I "%ALLEXT%"==".sgm" exit /b
if /I "%ALLEXT%"==".sav" exit /b
if /I "%ALLEXT%"==".bat" exit /b
if /I "%ALLEXT%"==".ini" exit /b
if /I "%ALLEXT%"==".jpg" exit /b
if /I "%ALLEXT%"==".png" exit /b
if /I "%ALLEXT%"==".xml" exit /b
if /I "%ALLEXT%"==".cfg" exit /b
if /I "%ALLEXT%"==".tbn" exit /b
if /I "%ALLEXT%"==".nfo" exit /b
if /I "%ALLEXT%"==".conf" exit /b
if /I "%ALLEXT%"==".config" exit /b

if /I "%ALLEXT%"==".2D" "%GBC%\fart.exe" "*.bat" [EXT] 2D
if /I "%ALLEXT%"==".st" "%GBC%\fart.exe" "*.bat" [EXT] st
if /I "%ALLEXT%"==".vb" "%GBC%\fart.exe" "*.bat" [EXT] vb
if /I "%ALLEXT%"==".gz" "%GBC%\fart.exe" "*.bat" [EXT] gz
if /I "%ALLEXT%"==".gg" "%GBC%\fart.exe" "*.bat" [EXT] gg
if /I "%ALLEXT%"==".mid" "%GBC%\fart.exe" "*.bat" [EXT] mid
if /I "%ALLEXT%"==".md" "%GBC%\fart.exe" "*.bat" [EXT] md
if /I "%ALLEXT%"==".gb" "%GBC%\fart.exe" "*.bat" [EXT] gb
if /I "%ALLEXT%"==".ws" "%GBC%\fart.exe" "*.bat" [EXT] ws
if /I "%ALLEXT%"==".ds" "%GBC%\fart.exe" "*.bat" [EXT] ds
if /I "%ALLEXT%"==".vb" "%GBC%\fart.exe" "*.bat" [EXT] vb
if /I "%ALLEXT%"==".crt" "%GBC%\fart.exe" "*.bat" [EXT] crt
if /I "%ALLEXT%"==".cas" "%GBC%\fart.exe" "*.bat" [EXT] cas
if /I "%ALLEXT%"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%ALLEXT%"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%ALLEXT%"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%ALLEXT%"==".ccd" "%GBC%\fart.exe" "*.bat" [EXT] ccd
if /I "%ALLEXT%"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%ALLEXT%"==".mdv" "%GBC%\fart.exe" "*.bat" [EXT] mdv
if /I "%ALLEXT%"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%ALLEXT%"==".a26" "%GBC%\fart.exe" "*.bat" [EXT] a26

if /I "%ALLEXT%"==".a52" "%GBC%\fart.exe" "*.bat" [EXT] a52
if /I "%ALLEXT%"==".a78" "%GBC%\fart.exe" "*.bat" [EXT] a78
if /I "%ALLEXT%"==".apd" "%GBC%\fart.exe" "*.bat" [EXT] apd
if /I "%ALLEXT%"==".adf" "%GBC%\fart.exe" "*.bat" [EXT] adf
if /I "%ALLEXT%"==".adz" "%GBC%\fart.exe" "*.bat" [EXT] adz
if /I "%ALLEXT%"==".pki" "%GBC%\fart.exe" "*.bat" [EXT] pki
if /I "%ALLEXT%"==".g16" "%GBC%\fart.exe" "*.bat" [EXT] g16
if /I "%ALLEXT%"==".rk8" "%GBC%\fart.exe" "*.bat" [EXT] rk8
if /I "%ALLEXT%"==".g71" "%GBC%\fart.exe" "*.bat" [EXT] g71
if /I "%ALLEXT%"==".d71" "%GBC%\fart.exe" "*.bat" [EXT] d71
if /I "%ALLEXT%"==".m65" "%GBC%\fart.exe" "*.bat" [EXT] m65
if /I "%ALLEXT%"==".dmk" "%GBC%\fart.exe" "*.bat" [EXT] dmk
if /I "%ALLEXT%"==".stx" "%GBC%\fart.exe" "*.bat" [EXT] stx
if /I "%ALLEXT%"==".hex" "%GBC%\fart.exe" "*.bat" [EXT] hex
if /I "%ALLEXT%"==".rkm" "%GBC%\fart.exe" "*.bat" [EXT] rkm
if /I "%ALLEXT%"==".rkr" "%GBC%\fart.exe" "*.bat" [EXT] rkr
if /I "%ALLEXT%"==".rk" "%GBC%\fart.exe" "*.bat" [EXT] epr
if /I "%ALLEXT%"==".epr" "%GBC%\fart.exe" "*.bat" [EXT] rk
if /I "%ALLEXT%"==".gam" "%GBC%\fart.exe" "*.bat" [EXT] gam
if /I "%ALLEXT%"==".gme" "%GBC%\fart.exe" "*.bat" [EXT] gme
if /I "%ALLEXT%"==".msa" "%GBC%\fart.exe" "*.bat" [EXT] msa
if /I "%ALLEXT%"==".fds" "%GBC%\fart.exe" "*.bat" [EXT] fds
if /I "%ALLEXT%"==".fig" "%GBC%\fart.exe" "*.bat" [EXT] fig
if /I "%ALLEXT%"==".gme" "%GBC%\fart.exe" "*.bat" [EXT] gme
REM if /I "%ALLEXT%"==".srm" "%GBC%\fart.exe" "*.bat" [EXT] srm
if /I "%ALLEXT%"==".swf" "%GBC%\fart.exe" "*.bat" [EXT] swf
if /I "%ALLEXT%"==".smc" "%GBC%\fart.exe" "*.bat" [EXT] smc
if /I "%ALLEXT%"==".sfc" "%GBC%\fart.exe" "*.bat" [EXT] sfc
if /I "%ALLEXT%"==".pbp" "%GBC%\fart.exe" "*.bat" [EXT] pbp
if /I "%ALLEXT%"==".ace" "%GBC%\fart.exe" "*.bat" [EXT] ace
if /I "%ALLEXT%"==".toc" "%GBC%\fart.exe" "*.bat" [EXT] toc
if /I "%ALLEXT%"==".cqm" "%GBC%\fart.exe" "*.bat" [EXT] cqm
if /I "%ALLEXT%"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%ALLEXT%"==".k7" "%GBC%\fart.exe" "*.bat" [EXT] k7
if /I "%ALLEXT%"==".k5" "%GBC%\fart.exe" "*.bat" [EXT] k5
if /I "%ALLEXT%"==".snx" "%GBC%\fart.exe" "*.bat" [EXT] snx
if /I "%ALLEXT%"==".snp" "%GBC%\fart.exe" "*.bat" [EXT] snp
if /I "%ALLEXT%"==".sna" "%GBC%\fart.exe" "*.bat" [EXT] sna
if /I "%ALLEXT%"==".sit" "%GBC%\fart.exe" "*.bat" [EXT] sit
if /I "%ALLEXT%"==".m5" "%GBC%\fart.exe" "*.bat" [EXT] m5
if /I "%ALLEXT%"==".po" "%GBC%\fart.exe" "*.bat" [EXT] po
if /I "%ALLEXT%"==".do" "%GBC%\fart.exe" "*.bat" [EXT] do
if /I "%ALLEXT%"==".td0" "%GBC%\fart.exe" "*.bat" [EXT] td0
if /I "%ALLEXT%"==".sdf" "%GBC%\fart.exe" "*.bat" [EXT] sdf
if /I "%ALLEXT%"==".nas" "%GBC%\fart.exe" "*.bat" [EXT] nas
if /I "%ALLEXT%"==".pgm" "%GBC%\fart.exe" "*.bat" [EXT] pgm
if /I "%ALLEXT%"==".mgt" "%GBC%\fart.exe" "*.bat" [EXT] mgt
if /I "%ALLEXT%"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%ALLEXT%"==".awd" "%GBC%\fart.exe" "*.bat" [EXT] awd
if /I "%ALLEXT%"==".jag" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%ALLEXT%"==".g64" "%GBC%\fart.exe" "*.bat" [EXT] g64
if /I "%ALLEXT%"==".d64" "%GBC%\fart.exe" "*.bat" [EXT] d64
if /I "%ALLEXT%"==".z26" "%GBC%\fart.exe" "*.bat" [EXT] z26
if /I "%ALLEXT%"==".d81" "%GBC%\fart.exe" "*.bat" [EXT] d81
if /I "%ALLEXT%"==".ptp" "%GBC%\fart.exe" "*.bat" [EXT] ptp
if /I "%ALLEXT%"==".uef" "%GBC%\fart.exe" "*.bat" [EXT] uef
if /I "%ALLEXT%"==".ssd" "%GBC%\fart.exe" "*.bat" [EXT] ssd
if /I "%ALLEXT%"==".prg" "%GBC%\fart.exe" "*.bat" [EXT] prg
if /I "%ALLEXT%"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%ALLEXT%"==".z80" "%GBC%\fart.exe" "*.bat" [EXT] z80
if /I "%ALLEXT%"==".sbd" "%GBC%\fart.exe" "*.bat" [EXT] sbd
if /I "%ALLEXT%"==".cin" "%GBC%\fart.exe" "*.bat" [EXT] cin
if /I "%ALLEXT%"==".os9" "%GBC%\fart.exe" "*.bat" [EXT] os9
if /I "%ALLEXT%"==".vdk" "%GBC%\fart.exe" "*.bat" [EXT] vdk
if /I "%ALLEXT%"==".ch8" "%GBC%\fart.exe" "*.bat" [EXT] ch8
if /I "%ALLEXT%"==".c8" "%GBC%\fart.exe" "*.bat" [EXT] c8
if /I "%ALLEXT%"==".sp" "%GBC%\fart.exe" "*.bat" [EXT] sp
if /I "%ALLEXT%"==".sem" "%GBC%\fart.exe" "*.bat" [EXT] sem
if /I "%ALLEXT%"==".blk" "%GBC%\fart.exe" "*.bat" [EXT] blk
if /I "%ALLEXT%"==".for" "%GBC%\fart.exe" "*.bat" [EXT] for
if /I "%ALLEXT%"==".chf" "%GBC%\fart.exe" "*.bat" [EXT] chf
if /I "%ALLEXT%"==".zx" "%GBC%\fart.exe" "*.bat" [EXT] zx
if /I "%ALLEXT%"==".tzx" "%GBC%\fart.exe" "*.bat" [EXT] tzx
if /I "%ALLEXT%"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if /I "%ALLEXT%"==".wad" "%GBC%\fart.exe" "*.bat" [EXT] wad
if /I "%ALLEXT%"==".cpm" "%GBC%\fart.exe" "*.bat" [EXT] cpm
if /I "%ALLEXT%"==".vec" "%GBC%\fart.exe" "*.bat" [EXT] vec
if /I "%ALLEXT%"==".sbt" "%GBC%\fart.exe" "*.bat" [EXT] sbt
if /I "%ALLEXT%"==".sg" "%GBC%\fart.exe" "*.bat" [EXT] sg
if /I "%ALLEXT%"==".cpr" "%GBC%\fart.exe" "*.bat" [EXT] cpr
if /I "%ALLEXT%"==".cpe" "%GBC%\fart.exe" "*.bat" [EXT] cpe
if /I "%ALLEXT%"==".psf" "%GBC%\fart.exe" "*.bat" [EXT] psf
if /I "%ALLEXT%"==".pmd" "%GBC%\fart.exe" "*.bat" [EXT] pmd
if /I "%ALLEXT%"==".min" "%GBC%\fart.exe" "*.bat" [EXT] min
if /I "%ALLEXT%"==".opk" "%GBC%\fart.exe" "*.bat" [EXT] opk
if /I "%ALLEXT%"==".psx" "%GBC%\fart.exe" "*.bat" [EXT] psx
if /I "%ALLEXT%"==".rex" "%GBC%\fart.exe" "*.bat" [EXT] rex
if /I "%ALLEXT%"==".sgx" "%GBC%\fart.exe" "*.bat" [EXT] sgx
REM if /I "%ALLEXT%"==".sav" "%GBC%\fart.exe" "*.bat" [EXT] sav
if /I "%ALLEXT%"==".pce" "%GBC%\fart.exe" "*.bat" [EXT] pce
if /I "%ALLEXT%"==".32x" "%GBC%\fart.exe" "*.bat" [EXT] 32x
if /I "%ALLEXT%"==".pco" "%GBC%\fart.exe" "*.bat" [EXT] pco
if /I "%ALLEXT%"==".gen" "%GBC%\fart.exe" "*.bat" [EXT] gen
if /I "%ALLEXT%"==".smd" "%GBC%\fart.exe" "*.bat" [EXT] smd
if /I "%ALLEXT%"==".prx" "%GBC%\fart.exe" "*.bat" [EXT] prx
if /I "%ALLEXT%"==".ciso" "%GBC%\fart.exe" "*.bat" [EXT] ciso
if /I "%ALLEXT%"==".cso" "%GBC%\fart.exe" "*.bat" [EXT] cso
if /I "%ALLEXT%"==".jso" "%GBC%\fart.exe" "*.bat" [EXT] jso
if /I "%ALLEXT%"==".gbc" "%GBC%\fart.exe" "*.bat" [EXT] gbc
if /I "%ALLEXT%"==".sgb" "%GBC%\fart.exe" "*.bat" [EXT] sgb
if /I "%ALLEXT%"==".gba" "%GBC%\fart.exe" "*.bat" [EXT] gba
if /I "%ALLEXT%"==".xex" "%GBC%\fart.exe" "*.bat" [EXT] xex
if /I "%ALLEXT%"==".atr" "%GBC%\fart.exe" "*.bat" [EXT] atr
if /I "%ALLEXT%"==".atx" "%GBC%\fart.exe" "*.bat" [EXT] atx
if /I "%ALLEXT%"==".atz" "%GBC%\fart.exe" "*.bat" [EXT] atz
if /I "%ALLEXT%"==".dfi" "%GBC%\fart.exe" "*.bat" [EXT] dfi
if /I "%ALLEXT%"==".chd" "%GBC%\fart.exe" "*.bat" [EXT] chd
if /I "%ALLEXT%"==".1dd" "%GBC%\fart.exe" "*.bat" [EXT] 1dd
if /I "%ALLEXT%"==".mfi" "%GBC%\fart.exe" "*.bat" [EXT] mfi
if /I "%ALLEXT%"==".360" "%GBC%\fart.exe" "*.bat" [EXT] 360
if /I "%ALLEXT%"==".ufi" "%GBC%\fart.exe" "*.bat" [EXT] ufi
if /I "%ALLEXT%"==".ima" "%GBC%\fart.exe" "*.bat" [EXT] ima
if /I "%ALLEXT%"==".hd" "%GBC%\fart.exe" "*.bat" [EXT] hd"
if /I "%ALLEXT%"==".image" "%GBC%\fart.exe" "*.bat" [EXT] image
if /I "%ALLEXT%"==".vz" "%GBC%\fart.exe" "*.bat" [EXT] vz
if /I "%ALLEXT%"==".st2" "%GBC%\fart.exe" "*.bat" [EXT] st2
if /I "%ALLEXT%"==".ccc" "%GBC%\fart.exe" "*.bat" [EXT] ccc
if /I "%ALLEXT%"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%ALLEXT%"==".2mg" "%GBC%\fart.exe" "*.bat" [EXT] 2mg
if /I "%ALLEXT%"==".dc" "%GBC%\fart.exe" "*.bat" [EXT] dc
if /I "%ALLEXT%"==".dcm" "%GBC%\fart.exe" "*.bat" [EXT] dcm
if /I "%ALLEXT%"==".ds40" "%GBC%\fart.exe" "*.bat" [EXT] ds40
if /I "%ALLEXT%"==".ss80" "%GBC%\fart.exe" "*.bat" [EXT] ss80
if /I "%ALLEXT%"==".ds82" "%GBC%\fart.exe" "*.bat" [EXT] ds82
if /I "%ALLEXT%"==".ds84" "%GBC%\fart.exe" "*.bat" [EXT] ds84
if /I "%ALLEXT%"==".mwb" "%GBC%\fart.exe" "*.bat" [EXT] mwb
if /I "%ALLEXT%"==".comx" "%GBC%\fart.exe" "*.bat" [EXT] comx
if /I "%ALLEXT%"==".com" "%GBC%\fart.exe" "*.bat" [EXT] com
if /I "%ALLEXT%"==".mx1" "%GBC%\fart.exe" "*.bat" [EXT] mx1
if /I "%ALLEXT%"==".mx2" "%GBC%\fart.exe" "*.bat" [EXT] mx2
if /I "%ALLEXT%"==".xfd" "%GBC%\fart.exe" "*.bat" [EXT] xfd
if /I "%ALLEXT%"==".pro" "%GBC%\fart.exe" "*.bat" [EXT] pro
if /I "%ALLEXT%"==".bas" "%GBC%\fart.exe" "*.bat" [EXT] bas
if /I "%ALLEXT%"==".card" "%GBC%\fart.exe" "*.bat" [EXT] card
if /I "%ALLEXT%"==".cdr" "%GBC%\fart.exe" "*.bat" [EXT] cdr
if /I "%ALLEXT%"==".unif" "%GBC%\fart.exe" "*.bat" [EXT] unif
if /I "%ALLEXT%"==".unf" "%GBC%\fart.exe" "*.bat" [EXT] unf
if /I "%ALLEXT%"==".nsf" "%GBC%\fart.exe" "*.bat" [EXT] nsf
if /I "%ALLEXT%"==".nes" "%GBC%\fart.exe" "*.bat" [EXT] nes
if /I "%ALLEXT%"==".tgc" "%GBC%\fart.exe" "*.bat" [EXT] tgc
if /I "%ALLEXT%"==".fam" "%GBC%\fart.exe" "*.bat" [EXT] fam
if /I "%ALLEXT%"==".srl" "%GBC%\fart.exe" "*.bat" [EXT] srl
if /I "%ALLEXT%"==".nds" "%GBC%\fart.exe" "*.bat" [EXT] nds
if /I "%ALLEXT%"==".fds" "%GBC%\fart.exe" "*.bat" [EXT] fds
if /I "%ALLEXT%"==".ngp" "%GBC%\fart.exe" "*.bat" [EXT] ngp
if /I "%ALLEXT%"==".npk" "%GBC%\fart.exe" "*.bat" [EXT] npk
if /I "%ALLEXT%"==".ngc" "%GBC%\fart.exe" "*.bat" [EXT] ngc
if /I "%ALLEXT%"==".neo" "%GBC%\fart.exe" "*.bat" [EXT] neo
if /I "%ALLEXT%"==".nd5" "%GBC%\fart.exe" "*.bat" [EXT] nd5
if /I "%ALLEXT%"==".pal" "%GBC%\fart.exe" "*.bat" [EXT] pal
if /I "%ALLEXT%"==".usa" "%GBC%\fart.exe" "*.bat" [EXT] usa
if /I "%ALLEXT%"==".u64" "%GBC%\fart.exe" "*.bat" [EXT] u64
if /I "%ALLEXT%"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%ALLEXT%"==".v64" "%GBC%\fart.exe" "*.bat" [EXT] v64
if /I "%ALLEXT%"==".n64" "%GBC%\fart.exe" "*.bat" [EXT] n64
if /I "%ALLEXT%"==".mzt" "%GBC%\fart.exe" "*.bat" [EXT] mzt
if /I "%ALLEXT%"==".mzf" "%GBC%\fart.exe" "*.bat" [EXT] mzf
if /I "%ALLEXT%"==".mfm" "%GBC%\fart.exe" "*.bat" [EXT] mfm
if /I "%ALLEXT%"==".z64" "%GBC%\fart.exe" "*.bat" [EXT] z64
if /I "%ALLEXT%"==".lnx" "%GBC%\fart.exe" "*.bat" [EXT] lnx
if /I "%ALLEXT%"==".int" "%GBC%\fart.exe" "*.bat" [EXT] int
if /I "%ALLEXT%"==".tap" "%GBC%\fart.exe" "*.bat" [EXT] tap
if /I "%ALLEXT%"==".dsk" "%GBC%\fart.exe" "*.bat" [EXT] dsk
if /I "%ALLEXT%"==".sad" "%GBC%\fart.exe" "*.bat" [EXT] sad
if /I "%ALLEXT%"==".col" "%GBC%\fart.exe" "*.bat" [EXT] col
if /I "%ALLEXT%"==".xdf" "%GBC%\fart.exe" "*.bat" [EXT] xdf
if /I "%ALLEXT%"==".dup" "%GBC%\fart.exe" "*.bat" [EXT] dup
if /I "%ALLEXT%"==".2hd" "%GBC%\fart.exe" "*.bat" [EXT] 2hd
if /I "%ALLEXT%"==".ipf" "%GBC%\fart.exe" "*.bat" [EXT] ipf
if /I "%ALLEXT%"==".dim" "%GBC%\fart.exe" "*.bat" [EXT] dim
if /I "%ALLEXT%"==".imd" "%GBC%\fart.exe" "*.bat" [EXT] imd
if /I "%ALLEXT%"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fdi
if /I "%ALLEXT%"==".hdi" "%GBC%\fart.exe" "*.bat" [EXT] hdi
if /I "%ALLEXT%"==".hdf" "%GBC%\fart.exe" "*.bat" [EXT] hdf
if /I "%ALLEXT%"==".nhd" "%GBC%\fart.exe" "*.bat" [EXT] nhd
if /I "%ALLEXT%"==".thd" "%GBC%\fart.exe" "*.bat" [EXT] thd
if /I "%ALLEXT%"==".raw" "%GBC%\fart.exe" "*.bat" [EXT] raw
if /I "%ALLEXT%"==".m12" "%GBC%\fart.exe" "*.bat" [EXT] m12
if /I "%ALLEXT%"==".rko" "%GBC%\fart.exe" "*.bat" [EXT] rko
if /I "%ALLEXT%"==".drm" "%GBC%\fart.exe" "*.bat" [EXT] drm
if /I "%ALLEXT%"==".g64" "%GBC%\fart.exe" "*.bat" [EXT] g64
if /I "%ALLEXT%"==".e0" "%GBC%\fart.exe" "*.bat" [EXT] e0
if /I "%ALLEXT%"==".a0" "%GBC%\fart.exe" "*.bat" [EXT] a0
if /I "%ALLEXT%"==".ic1" "%GBC%\fart.exe" "*.bat" [EXT] ic1
if /I "%ALLEXT%"==".p00" "%GBC%\fart.exe" "*.bat" [EXT] p00
if /I "%ALLEXT%"==".20" "%GBC%\fart.exe" "*.bat" [EXT] 20
if /I "%ALLEXT%"==".40" "%GBC%\fart.exe" "*.bat" [EXT] 40
if /I "%ALLEXT%"==".60" "%GBC%\fart.exe" "*.bat" [EXT] 60
if /I "%ALLEXT%"==".80" "%GBC%\fart.exe" "*.bat" [EXT] 80
if /I "%ALLEXT%"==".81" "%GBC%\fart.exe" "*.bat" [EXT] 81
if /I "%ALLEXT%"==".qd" "%GBC%\fart.exe" "*.bat" [EXT] qd
if /I "%ALLEXT%"==".fd" "%GBC%\fart.exe" "*.bat" [EXT] fd
if /I "%ALLEXT%"==".sap" "%GBC%\fart.exe" "*.bat" [EXT] sap
if /I "%ALLEXT%"==".cmd" "%GBC%\fart.exe" "*.bat" [EXT] cmd
if /I "%ALLEXT%"==".kcc" "%GBC%\fart.exe" "*.bat" [EXT] kcc
if /I "%ALLEXT%"==".vhd" "%GBC%\fart.exe" "*.bat" [EXT] vhd
if /I "%ALLEXT%"==".obj" "%GBC%\fart.exe" "*.bat" [EXT] obj
if /I "%ALLEXT%"==".ach" "%GBC%\fart.exe" "*.bat" [EXT] ach
if /I "%ALLEXT%"==".plusd" "%GBC%\fart.exe" "*.bat" [EXT] plusd
if /I "%ALLEXT%"==".rim" "%GBC%\fart.exe" "*.bat" [EXT] rim
if /I "%ALLEXT%"==".frz" "%GBC%\fart.exe" "*.bat" [EXT] frz
if /I "%ALLEXT%"==".tcc" "%GBC%\fart.exe" "*.bat" [EXT] tcc
if /I "%ALLEXT%"==".kcm" "%GBC%\fart.exe" "*.bat" [EXT] kcm
if /I "%ALLEXT%"==".kdi" "%GBC%\fart.exe" "*.bat" [EXT] kdi
if /I "%ALLEXT%"==".hdm" "%GBC%\fart.exe" "*.bat" [EXT] hdm
if /I "%ALLEXT%"==".tvc" "%GBC%\fart.exe" "*.bat" [EXT] tvc
if /I "%ALLEXT%"==".hds" "%GBC%\fart.exe" "*.bat" [EXT] hds
if /I "%ALLEXT%"==".d98" "%GBC%\fart.exe" "*.bat" [EXT] d98
if /I "%ALLEXT%"==".2DD" "%GBC%\fart.exe" "*.bat" [EXT] 2DD
if /I "%ALLEXT%"==".typ" "%GBC%\fart.exe" "*.bat" [EXT] typ
if /I "%ALLEXT%"==".dck" "%GBC%\fart.exe" "*.bat" [EXT] dck
if /I "%ALLEXT%"==".lst" "%GBC%\fart.exe" "*.bat" [EXT] lst
if /I "%ALLEXT%"==".vfd" "%GBC%\fart.exe" "*.bat" [EXT] vfd
if /I "%ALLEXT%"==".t77" "%GBC%\fart.exe" "*.bat" [EXT] t77
if /I "%ALLEXT%"==".zmk" "%GBC%\fart.exe" "*.bat" [EXT] zmk
if /I "%ALLEXT%"==".d77" "%GBC%\fart.exe" "*.bat" [EXT] d77
if /I "%ALLEXT%"==".d88" "%GBC%\fart.exe" "*.bat" [EXT] d88
if /I "%ALLEXT%"==".88d" "%GBC%\fart.exe" "*.bat" [EXT] 88d
if /I "%ALLEXT%"==".wsc" "%GBC%\fart.exe" "*.bat" [EXT] wsc
if /I "%ALLEXT%"==".vboy" "%GBC%\fart.exe" "*.bat" [EXT] vboy
if /I "%ALLEXT%"==".wbfs" "%GBC%\fart.exe" "*.bat" [EXT] wbfs
if /I "%ALLEXT%"==".amiga" "%GBC%\fart.exe" "*.bat" [EXT] amiga
if /I "%ALLEXT%"==".p" "%GBC%\fart.exe" "*.bat" [EXT] p
if /I "%ALLEXT%"==".wav" "%GBC%\fart.exe" "*.bat" [EXT] wav
if /I "%ALLEXT%"==".scr" "%GBC%\fart.exe" "*.bat" [EXT] scr
if /I "%ALLEXT%"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
:extinjEND
