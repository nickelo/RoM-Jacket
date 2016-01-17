set EXTYP=e
set ARCMAN=
set CLTLNCH=%CSTCONS%
if "%DLGM%"=="1" goto :CSD
if "%DLGM%"=="0" goto :IND
:FOLDERQUERY
SET DLM= 
:ARCMN
if /i "%CSTCONS%"=="%MSDS%" set EXTYP=x
if /i "%CSTCONS%"=="%MSDS%" goto :AFTER
if /i "%CSTCONS%"=="%ARCD%" goto :KEEP
if /i "%CSTCONS%"=="%NEOGE%" goto :KEEP
if /i "%CSTCONS%"=="%NAOMI%" goto :KEEP
if /i "%CSTCONS%"=="%HIKARU%" goto :KEEP
if /i "%CSTCONS%"=="%GALCO%" goto :KEEP
if /i "%CSTCONS%"=="%ATMS%" goto :KEEP
if /i "%CSTCONS%"=="%SEGM2%" goto :KEEP
if /i "%CSTCONS%"=="%SEGM3%" goto :KEEP
if /i "%CSTCONS%"=="%CPS%" goto :KEEP
if /i "%CSTCONS%"=="%CPS2%" goto :KEEP
if /i "%CSTCONS%"=="%CPS3%" goto :KEEP
if /i "%CSTCONS%"=="%TAITX%" goto :KEEP

set ARCDEC=3
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
if /i "%%~xa"==".7z" set ARCDEC=2
if /i "%%~xa"==".zip" set ARCDEC=2
if /i "%%~xa"==".rar" set ARCDEC=2
)
if "%ARCDEC%"=="3" goto :KEEP
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^### ARCHIVE EXTRACTION ###^RoM-Jacket can extract archives (.zip/.rar/.7z) files found in your libraries in several ways.^^   ### BEFORE ###^Archives will be extracted prior to any folder creation.^^   ### AFTER ###^Archives are moved into a folder and then extracted.^^   ### KEEP ###^Archives are not extracted^^" "BEFORE;AFTER;KEEP" /DB=%ARCDEC%
if %ERRORLEVEL%==1 goto :BEFORE
if %ERRORLEVEL%==2 goto :AFTER
if %ERRORLEVEL%==3 goto :KEEP
if %ERRORLEVEL%==0 goto :ARCMN
goto :EOF

:BEFORE
set ARCMAN=1
goto :FLDGEN

:AFTER
set ARCMAN=2
goto :FLDGEN

:KEEP
set ARCMAN=
goto :FLDGEN

:FLDGEN
if "%ARCMAN%"=="1" goto :UNARC
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^### FOLDER GENERATION ###^^##############^#Consolidate#^#############^Groups ROMs for titles using ()[] standard conventions for a frontend environment.^^############^#Individuate#^############^Each ROM gets it's own folder.^" "Consolidate;Individuate" /DB=1
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
goto :QUITOUT

:UNARC
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES"
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES\RARs"
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES\ZIPs"
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES\RARs\%CSTCONS%"
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES\ZIPs\%CSTCONS% "
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\ZIPs"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\RARs"
%BSTRT% "%WBUSY%" "RJ_GUI" "Extracting archives" /marquee
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/a-d-h "*.zip" "*.7z" "*.001" "*.rar"') do (
set ARCFN=%%~a
if /i "%%~xa"==".rar" call :RARF
if /i "%%~xa"==".zip" call :ZIPF
if /i "%%~xa"==".7z" call :ZIPF
if /i "%%~xa"==".001" call :ZIPF
)
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Extractions Complete" /Stop /timeout:1
set ARCMAN=
goto :FLDGEN

:POSTARC
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES"
attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
for /f "delims=" %%a in ('dir /b/a-d-h "*.zip" "*.7z" "*.001" "*.rar"') do (
set ARCFN=%%~a
if /i "%%~xa"==".rar" call :RARF
if /i "%%~xa"==".zip" call :ZIPF
if /i "%%~xa"==".7z" call :ZIPF
if /i "%%~xa"==".001" call :ZIPF
)
exit /b

:RARF
"%UNRAR%" %EXTYP% -y -o+ "%ARCFN%" "%CD%" && MOVE /Y "%ARCFN%" "%GBG%\%ROMJ%\SORTED ARCHIVES\RARs\%CSTCONS%\%ARCFN%"
exit /b
:ZIPF
"%SEVENZIP%" %EXTYP% -y "%ARCFN%" -o"%CD%" && MOVE /Y "%ARCFN%" "%GBG%\%ROMJ%\SORTED ARCHIVES\ZIPs\%CSTCONS%\%ARCFN%"
exit /b


:regen
SET RCALL=1
goto :generatedlib

:CSD
if "%BYPMG%"=="1" goto :JUSTONE
goto :JUSTONE

:JUSTONE
set FERID=
set DLM=0
goto :FOLDERBEGIN

:IND
set DLM=1
goto :FOLDERBEGIN


:FOLDERBEGIN
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Processing the %CSTCONS% folder." /marquee
popd
pushd "%CUSTCONSPTH%"	
if "%CUSTCONSPTH%"=="" goto :libout
if "%CUSTCONSPTH%"=="%GBC%" goto :libout
CALL :libiterate
popd
call :REQUERY
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "RJ_GUI" "%CSTCONS% folder Processed" /Stop /timeout:1
popd
pushd "%GBG%\%GAM%\%CONS%"
goto :libout


:REQUERY
del /q "%GBC%\remain.ini"
call :SCRAPEDFILES
for /f "delims=" %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%CSTCONS%\*"') do echo."%%~nxa">>"%GBC%\remain.ini"
if not exist "%GBC%\remain.ini" exit /b
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WBUSY%" "RJ_GUI" "#%CSTCONS%#^Archiving unsorted roms in your console's folder to the RJ-Sort Folder." /stop /timeout:1
popd
"%GBC%\wbox.exe" "RJ_GUI" "#%CSTCONS%#^[Jacketize]:^Sort remaining files using the delimited name-based algorithm.^^[Archive]:^Move remaining files into the Sorting folder " "Jacketize;Archive" /DB=1
if %errorlevel%==1 goto :REMAIN
if %errorlevel%==2 goto :REMOVE

:REMAIN
%BSTRT% "%WBUSY%" "RJ_GUI" "Processing the %CSTCONS% folder." /marquee
for /f "delims=" %%a in ('type "%GBC%\remain.ini"') do move /y "%%~a" "%%~na\%%~a"
%BSTRT% "%WFINS%" "RJ_GUI" "%CSTCONS% folder Processed" /Stop /timeout:1
popd
pushd "%GBG%\%GAM%\%CONS%"
goto :libout

:REMOVE
%BSTRT% "%WBUSY%" "RJ_GUI" "Processing the %CSTCONS% folder." /marquee
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b /a-d-h "*.jpg" "*.png" "*.xml" "*.tbn" "*.nfo" "*.srm" "*.ssrm" "*.sg0" "*.mc0" "*.sta" "*.fs" "*.state*" "*.gs1"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a-d "*.pdf"') do if /i "%%~xa"==".pdf" move /y "%%~a" ".Man\%%~a"
for /f "delims=" %%a in ('dir /b /a-d "*.mp4"') do if /i "%%~xa"==".mp4" move /y "%%~a" "backdrops\%%~a"
for /f "delims=" %%a in ('dir /b/a-d-h') do move /y "%%~a" "%GBG%\%ROMJ%"
popd
%BSTRT% "%WBUSY%" "RJ_GUI" "Archived to the RJ-Sort Folder." /stop /timeout:1
exit /b

:libiterate

:CSTINJ
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%RCTFL%"=="1" "%GBC%\fart.exe" "zz.bat" [RCD] 1
"%GBC%\fart.exe" "zz.bat" [SYSTYPE] "%CSTCONS%"
if "%GGON%"=="1" "%GBC%\fart.exe" "zz.bat" [XFG] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XFG]" "REM [XFG]"s
if "%MMON%"=="1" "%GBC%\fart.exe" "zz.bat" [DSP] --remove
if "%MMONOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DSP]" "REM [DSP]"
popd
if "%J2KON%" NEQ "1" goto :j2koff

:jon
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" "[JYZ]" --remove
"%GBC%\fart.exe" "zz.bat" "[XPT]" --remove
"%GBC%\fart.exe" "zz.bat" "REM [XPT]" --remove
"%GBC%\fart.exe" "zz.bat" XPADDER JOY2KEY
"%GBC%\fart.exe" "zz.bat" xpadderprofile cfg
"%GBC%\fart.exe" "zz.bat" "^%^CD%%\%%~na2" --remove
popd
if "%J2KOFF%"=="1" goto :j2koff

:BOTHCHK
if "%XPD2OFF%"=="1" set XPDOFF=1
exit /b
:j2koff
if "%XPD1OFF%"=="1" call :BOTHCHK
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] "REM [XPT]"
REM if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT] "REM [DMT]"
if "%DTON%"=="" "%GBC%\fart.exe" "zz.bat" [DMT] "REM [DMT]"
if "%JOYVAL%" NEQ "" "%GBC%\fart.exe" "zz.bat" "[JYZ]" --remove
if "%XPD1ON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] --remove
if "%AMC1ON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPALT] "1"
if "%AMC2ON%"=="2" "%GBC%\fart.exe" "zz.bat" [XPALT] "1"
if "%AMC1ON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] "REM [XPT]"
if "%AMC2ON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] "REM [XPT]"
if "%XPD1OFF%"=="1" "%GBC%\fart.exe" "zz.bat" "\"%%GAMDIR%%\Player1.xpadderprofile"\" --remove
if "%XPD2OFF%"=="1" "%GBC%\fart.exe" "zz.bat" "\"%%GAMDIR%%\Player2.xpadderprofile"\" --remove
if "%AMC1OFF%"=="1" "%GBC%\fart.exe" "zz.bat" "\"%%GAMDIR%%\Player1.amgp"\" --remove
if "%AMC2OFF%"=="1" "%GBC%\fart.exe" "zz.bat" "\"%%GAMDIR%%\Player2.amgp"\" --remove
REM if "%DTON%"=="1" "%GBC%\fart.exe" "zz.bat" "[DMT] REM"--remove
if "%DTON%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT]--remove
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DMT]" "REM [DMT]"
if "%JOYVAL%"=="" "%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"
popd

:copy
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" [EMUL] "%CSTEML%"
popd

:SETEMUCONT
for %%a in ("%CEMU%") do set CEMZ=%%~a
call "%GBC%\emuname.bat">>"%GBC%\logs\emuname.log"
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" [EMUZ] "%CEMZ%"
REM "%GBC%\fart.exe" "zz.bat" [LOC] "%GBG%\%GAM%\%CONS%\%CSTCONS%"
popd

:injectall
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
"%GBC%\fart.exe" "zz.bat" [DAMVAR] "%DAMVAR%"
if "%JOYVAL%"=="XPADDER" "%GBC%\fart.exe" "zz.bat" [XPD] "%XPADDER%"
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPD] "%ANTMIC%"
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPLT] "1"
if "%JOYVAL%" NEQ "" "%GBC%\fart.exe" "zz.bat" "[JYZ]" --remove
"%GBC%\fart.exe" "zz.bat" [J2K] "%JOY2KEY%"
popd

if "%COPYTYPE%"=="echo n|copy /-y" goto :JOYDEL
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.bat"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.cmd"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.ini"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.conf"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.config"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.cfg"

:JOYDEL
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.amgp"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.xpadderprofile"

pushd "%CUSTCONSPTH%"

:FLDRITERATE
if /i "%CSTCONS%"=="%MSDS%" CALL "%GBC%\MSDSAlias.bat">>"%GBC%\logs\MSDSAlias.log"
if /i "%CSTCONS%"=="%TG16%" CALL "%GBC%\necAlias.bat">>"%GBC%\logs\necAlias.log"
if /i "%CSTCONS%"=="%SEGAG%" CALL "%GBC%\megaDriveAlias.bat">>"%GBC%\logs\megaDriveAlias.log"
if /i "%CSTCONS%"=="%ARCD%" CALL "%GBC%\mameAlias.bat">>"%GBC%\logs\mameAlias.log"
if /i "%CSTCONS%"=="%PCENG%" CALL "%GBC%\necAlias.bat">>"%GBC%\logs\necAlias.log"
if /i "%CSTCONS%"=="%SGFX%" CALL "%GBC%\necAlias.bat">>"%GBC%\logs\necAlias.log"
if /i "%CSTCONS%"=="%CPS%" CALL "%GBC%\cpsAlias.bat">>"%GBC%\logs\cpsAlias.log"
if /i "%CSTCONS%"=="%CPS2%" CALL "%GBC%\cps2Alias.bat">>"%GBC%\logs\cps2Alias.log"
if /i "%CSTCONS%"=="%CPS3%" CALL "%GBC%\cps3Alias.bat">>"%GBC%\logs\cps3Alias.log"
if /i "%CSTCONS%"=="%NEO64%" CALL "%GBC%\HNG64Alias.bat">>"%GBC%\logs\HNG64.log"
if /i "%CSTCONS%"=="%NEOGE%" CALL "%GBC%\neogeoAlias.bat">>"%GBC%\logs\neogeoAlias.log"
if /i "%CSTCONS%"=="%SEGM2%" CALL "%GBC%\model2Alias.bat">>"%GBC%\logs\model2Alias.log"
if /i "%CSTCONS%"=="%SEGM3%" CALL "%GBC%\model3Alias.bat">>"%GBC%\logs\model3Alias.log"
if /i "%CSTCONS%"=="%NAOMI%" CALL "%GBC%\naomiAlias.bat">>"%GBC%\logs\naomiAlias.log"
if /i "%CSTCONS%"=="%ATMS%" CALL "%GBC%\atomisAlias.bat">>"%GBC%\logs\atomisAlias.log"
if /i "%CSTCONS%"=="%HIKARU%" CALL "%GBC%\hikaruAlias.bat">>"%GBC%\logs\hikaruAlias.log"
if /i "%CSTCONS%"=="%GALCO%" CALL "%GBC%\galecoAlias.bat">>"%GBC%\logs\galecoAlias.log"
if /i "%CSTCONS%"=="%SEGAMD%" CALL "%GBC%\megaDriveAlias.bat">>"%GBC%\logs\megaDriveAlias.log"
if /i "%CSTCONS%"=="%TAITX%" CALL "%GBC%\TAITXAlias.bat">>"%GBC%\logs\TAITXAlias.log"

if "%DLM%"=="1" call :hidemeta
if "%DLM%"=="1" call :MOVEONE
if "%DLM%"=="1" exit /b

:MOVEREMAINING
del /q "%GBC%\ROMS*.ini"
for /f "delims=" %%a in ('dir /b /a-d-h') do (
SET SNAME=
SET TOTALCOUNT=
SET RCOUNT=
SET ROMF=%%~na
SET ROMA=%%~a
CALL :DEFCHK
)

:BASE_NAME_PARENTH
for /f "delims=" %%a in ('dir /b /a-d-h "*(*"') do (
SET RCOUNT=
SET TOTALCOUNT=
SET SNAME=
call :hidemeta
SET ROMK=%%~na
SET ROMX=%%~nxa
call :GETPARENTH
call :unhidemeta
)
goto :MOVELIST
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::PROCEDURES:::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:DEFCHK
for /f "tokens=1 delims=[(" %%a in ("%ROMF%") do SET SNAME=%%~nxa
if "%SNAME%" NEQ "%ROMF%" exit /b
for /f "delims=" %%a in ('dir /b/a-d "%ROMF%*"') do SET /A TOTALCOUNT+=1
echo."%ROMF%">>"%GBC%\ROMS-%TOTALCOUNT%-.ini" 
exit /b

:MOVEONE
for /f "delims=" %%a in ('dir /b/a-d-h') do (
md "%%~na" >null
move /y "%%~a" "%%~na"
)
exit /b

:MOVETRANSFORMED
exit /b

:MOVEALL
for %%a in ("%ROMF%") do set FOROM=%%~nxa
for /f "delims=" %%a in ('dir /b /a-d-h "%ROMF%.*"') do (
move "%%~a" "%FOROM%"
)
exit /b

:UPDATE
if "%CLSTR%"=="~0,1" set CLSTR=
if "%CLSTR%"=="" exit /b
if "%CLCHNG%" NEQ "%CLSTR%" %BSTRT% "%WBUSY%" "RJ_GUI" "Foldering the ''%CLSTR%'' cluster of the %CSTCONS% library." /marquee
SET CLCHNG=%CLSTR%
exit /b

:COUNTSHRT
for /f "delims=" %%a in ("%SNAME%") do set SNAME=%%~nxa
for /f "delims=" %%a in ('dir /b/a-d-h "%SNAME%*"') do SET /A TOTALCOUNT+=1
exit /b

:GETPARENTH
for %%a in ("%ROMX:~0,1%") do if "%%~a"=="(" exit /b
SET CLSTR=
SET TOTALCOUNT=
for /f "tokens=1 delims=([" %%a in ("%ROMX%") do (
SET SNAME=%%~nxa
CALL :COUNTSHRT
)

set CLSTR=%SNAME:~0,1%
CALL :UPDATE
CALL :WRITEINI
exit /b

:GETEXTENSION
echo."%SNAME%" | %FNDSTR% /C:"." 1>nul
if errorlevel 0 call :TRANSFORMNAME
exit /b

:WRITEINI
for %%a in ("%SNAME%") do echo."%%~nxa">>"%GBC%\ROMS-%TOTALCOUNT%-.ini"
mkdir "%SNAME%"
exit /b

:MOVELIST
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Consolidating the %CASTNAME% library." /marquee
popd
SET /A NEWNUM=0
:STRT
SET /A NEWNUM+=1
call :chkfor
if %NEWNUM%==500 goto :MOVELISTB
goto :STRT

:MOVELISTB
SET /A NEWNUM=0
:STRTB
SET /A NEWNUM+=1
call :chkforb
if %NEWNUM%==500 CALL :STRAGL
if %NEWNUM%==500 goto :MOVERST
goto :STRTB

:MOVERST
call :hidemeta
goto :MOVEONE

:chkforb
if exist "%GBC%\ROMS-%NEWNUM%-.ini" CALL :COPYINIB
exit /b

:COPYINIB
for /f "delims=" %%a in ('TYPE "%GBC%\ROMS-%NEWNUM%-.ini"') do (
SET TOREN=%%~a
call :RENAMEB
)
exit /b


:chkfor
if exist "%GBC%\ROMS-%NEWNUM%-.ini" CALL :COPYINI
exit /b

:COPYINI
"%GBC%\fart.exe" "%GBC%\ROMS-%NEWNUM%-.ini" \" --remove
for /f "delims=" %%a in ('TYPE "%GBC%\ROMS-%NEWNUM%-.ini"') do (
mkdir "%%~a"
SET TOREN=%%~a
call :RENAME
)
exit /b

:RENAME
for /f "delims=" %%a in ("%TOREN%") do SET SNAME=%%~nxa
move /y "%SNAME%*.*" "%SNAME%"
exit /b

:RENAMEB
for /f "delims=" %%a in ("%TOREN%") do SET SNAME=%%~snxa
move /y "%SNAME%*.*" "%SNAME%"
exit /b

:NUMEND
exit /b


:STRAGL
for /f "delims=" %%a in ('dir /b/a-d-h') do (
set JSTROM=%%~nxa
set JSTRMN=%%~na
CALL :CCTATE
)
exit /b

:CCTATE
set ROMFLD=%JSTRMN:~0,-1%
for %%a in ("%JSTRMN:~-1%") do if "%%~a"=="." call :SPCDIR
exit /b

:SPCDIR
for %%a in ("%ROMFLD:~-1%") do if "%%~a"==" " call :DELDOT
for %%a in ("%ROMFLD:~-1%") do if "%%~a"=="." call :DELDOT
if exist "%JSTROM%" mkdir "%ROMFLD%" && move /y "%JSTROM%" "%ROMFLD%"
exit /b

:DELDOT
for %%a in ("%ROMFLD:~0,-1%") do set ROMFLD=%%~a
goto :SPCDIR
exit /b

:MOVEIN_B
md "%ROMN%" >nul
for /f "delims=" %%a in ('dir /b /a-d-h "%ROMN%*[*"') do (
move "%%~a" "%ROMN%"
)
exit /b

:MOVEIN_P
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d-h "%SNAME%*"') do (
set SNAME=%%~nxa
mkdir "%%~nxa"
)

:CONCATNAME
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d-h "%ROMF%") do set SNAME=%%~nxa
exit /b

:AFTERARC
%BSTRT% "%WBUSY%" "RJ_GUI" "#%CSTCONS%#^Extracting archives" /marquee
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/ad') do (
pushd "%%~a"
call :POSTARC
popd
)
popd
%BSTRT% "%WFINS%" "RJ_GUI" "#%CSTCONS%#^Extractions Complete" /Stop /timeout:1
exit /b
:TRANSFORMNAME
for %%a in ("%SNAME%") do set SNAME=%%~nxa
exit /b

REM for /f "delims=" %%a in ('dir /b /a-d "*.sta"') do if /i "%%~xa"==".sta" set SSTA=%%~a&&call :SSTM
REM for /f "delims=" %%a in ('dir /b /a-d "*.fs"') do if /i "%%~xa"==".fs" set SSTA=%%~a&&call :SSTM

:SCRAPEDFILES
for /f "delims=" %%a in ('dir /b /a "*.srm" "*.sg0" "*.mc0" "*.sta" "*.fs" "*.ssrm" "*.state*" "*.gs*"') do ATTRIB -H "%%~a"
set SAVF=
set SSTA=
set TYPMS=.Mem
for /f "delims=" %%a in ('dir /b /a-d "*.srm"') do if /i "%%~xa"==".srm" set SAVF=%%~a&&call :SAV
for /f "delims=" %%a in ('dir /b /a-d "*.ssrm"') do if /i "%%~xa"==".ssrm" set SAVF=%%~a&&call :SAV1
for /f "delims=" %%a in ('dir /b /a-d "*.sg0"') do if /i "%%~xa"==".sg0" set SSTA=%%~a&&call :SSTF
for /f "delims=" %%a in ('dir /b /a-d "*.mc0"') do if /i "%%~xa"==".mc0" set SSTA=%%~a&&call :SST0
set TYPMS=.sstates
for /f "delims=" %%a in ('dir /b /a-d "*.state*"') do set SVTA=%%~a&&call :SVTA1
for /f "delims=" %%a in ('dir /b /a-d "*.gs*"') do set SVTA=%%~a&&call :SVTA
exit /b
:SAV
if exist "%SAVF:~0,-4%" md "%SAVF:~0,-4%\%TYPMS%" & move /y "%SAVF%" "%SAVF:~0,-4%\%TYPMS%\%SAVF%"
exit /b
:SAV1
if exist "%SAVF:~0,-5%" md "%SAVF:~0,-5%\%TYPMS%" & move /y "%SAVF%" "%SAVF:~0,-5%\%TYPMS%\%SAVF%"
exit /b
:SST0
if exist "%SSTA:~0,-37%" md "%SSTA:~0,-37%\%TYPMS%" & move /y "%SSTA%" "%SSTA:~0,-37%\%TYPMS%\%SAVF%"
exit /b
:SSTF
if exist "%SSTA:~0,-4%" md "%SSTA:~0,-4%\%TYPMS%" & move /y "%SSTA%" "%SSTA:~0,-4%\%TYPMS%\%SAVF%"
exit /b
:SVTA
if exist "%SVTA:~0,-4%" md "%SVTA:~0,-4%\%TYPMS%" & move /y "%SVTA%" "%SVTA:~0,-4%\%TYPMS%\%SVTA%"
exit /b
:SVTA1
if exist "%SVTA:~0,-7%" md "%SVTA:~0,-7%\%TYPMS%" & move /y "%SVTA%" "%SAVF:~0,-7%\%TYPMS%\%SVTA%"
exit /b


:hidemeta
for /f "delims=" %%a in ('dir /b /a "*.settings" "*.config" "*.conf" "*.cfg" "*.ini" "*.jpg" "*.png" "*.xml" "*.tbn" "*.nfo" "*.ssrm" "*.srm" "*.sta" "*.fs" "*.mc0" "*.sg0" "*.state*" "*.gs*"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a-d "*.pdf"') do if /i "%%~xa"==".pdf" move /y "%%~a" ".Man"
for /f "delims=" %%a in ('dir /b /a-d "*.mp4"') do if /i "%%~xa"==".mp4" move /y "%%~a" "backdrops\%%~nxa"
for /f "delims=" %%a in ('dir /b /a-d "*.exe"') do if /i "%%~xa"==".exe" SET EXEFLAG=1
exit /b

:unhidemeta
for /f "delims=" %%a in ('dir /b /a "*.settings" "*.config" "*.conf" "*.cfg" "*.ini" "*.jpg" "*.png" "*.xml" "*.tbn" "*.nfo"') do ATTRIB -H "%%~a"
for /f "delims=" %%a in ('dir /b /a-d "*.pdf"') do if "%%~xa"==".pdf" move /y "%%~a" ".Man"
exit /b
:libout
popd

:generatedlib
if "%ARCMAN%"=="2" call :AFTERARC
:QUITOUT