set EMEXE=%CEMU%
if /i "%CEMU%"=="%PSX%" set EMEXE=psxfin
if /i "%CEMU%"=="%PLAY3DO%" set EMEXE=3DOEmu
if /i "%CEMU%"=="%WCDI%" set EMEXE=CDIWrapper
if /i "%CEMU%"=="%FSHPL%" set EMEXE=FullScreenFlash
if /i "%CEMU%"=="%FBA%" set EMEXE=fba
if /i "%CEMU%"=="%ELECEM%" set EMEXE=Electron
if /i "%CSTCONS%"=="%NGBA%" set EMEXE=%VGBA%-M
if /i "%CSTCONS%"=="%ATST%" set EMEXE=Steemz
if /i "%CEMU%"=="%STEEM%" set EMEXE=Steemz
if /i "%CEMU%"=="%VICE%" set EMEXE=x64
if /i "%CEMU%"=="%INTV%" set EMEXE=%INTV%32
if /i "%CEMU%"=="%VSVH%" set EMEXE=%VSVH%.Win
if /i "%CEMU%"=="%XTURB%" set EMEXE=X1
if /i "%CSTCONS%"=="%NEOCD%" set EMEXE=%NEORAINE%
if /i "%CEMU%"=="%VGBA%" set EMEXE=%VGBA%-M
if /i "%CEMU%"=="%NEKO%" set EMEXE=np21nt
if /i "%CEMU%"=="%NOGBA%" set EMEXE=NDS
if /i "%CEMU%"=="%PTMPS%" set EMEXE=PTCDWrapper
if /i "%CEMU%"=="%JAG%" set EMEXE=vjag
if /i "%CEMU%"=="%FM7%" set EMEXE=%XM7%
if /i "%CEMU%"=="%DEMUL%" set EMEXE=%HLPR%