call "%GBC%\clearVar.bat">>"%GBC%\logs\clearVar.log"

:SELCUST
set CUSTCONSPTH=
set ALLCONS=
SET CSTDIR=
del /s /q "%GBC%\net\%LNCH%\*.bat"
set PREREQ=
"%GBC%\wbox.exe" "RJ_GUI" "Rename all libraries?^#############^This will rename imported and manually created supported libraries to compatible names^#############^" "Rename;Skip" /DB=2
if %errorlevel%==1 goto :SORT
if %errorlevel%==2 goto :SORTED
goto :INDVOUT
:SORT
%BSTRT% "%WBUSY%" "RJ_GUI" "Renaming libraries" /marquee
call "%GBC%\presort.bat">>"%GBC%\logs\presort.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
:SORTED
call "%GBC%\propname.bat">>"%GBC%\logs\propname.log"
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\%LNCH%.zip" -o"%GBC%\net\%LNCH%"

REM goto :CONSOLETYPE
:QUERYCFG
"%GBC%\wbox.exe" "RJ_GUI" "^#############^CONFIGURATION^#############^^Select [Consoles] to configure^ an individual [Game]^or [ALL] consoles and games^" "Consoles;Game;ALL" /DB=1
if %ERRORLEVEL%==1 goto :CONSOLETYPE
if %ERRORLEVEL%==2 goto :GAMETYPE
if %ERRORLEVEL%==3 goto :ALLCONS
goto :INDVOUT

:GAMETYPE
CALL "%GBC%\indvGame.bat">>"%GBC%\logs\indvGame.log"
goto :INDVOUT

:::::::::::::::::::::::::::::::::::::::::: CHECKS ::::::::::::::::::::::::::::::::::::::::::

:AMC2CST
if "%XPD2CST%"=="0" set BOTHOFF=1
exit /b


:XPD2CST
if "%XPD2CST%"=="0" set BOTHOFF=1
exit /b

:CONEXISTS
set SRCTST=
for /f "delims=" %%a in ('dir /b/a "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do SET SRCTST=%%~a
if "%SRCTST%"=="" goto :NOCUST
GOTO :NOTEMPTY

:EMPTYCHK
SET CHRG=
set SOURCZ=
if "%CONSOLEFOLDER%"=="%CPS%" set SOURCZ=1
if "%CONSOLEFOLDER%"=="%CPS2%" set SOURCZ=1
if "%CONSOLEFOLDER%"=="%CPS3%" set SOURCZ=1
if "%CONSOLEFOLDER%"=="%NEOGE%" set SOURCZ=1
if "%CONSOLEFOLDER%"=="%SEGM2%" set SOURCZ=1
if "%CONSOLEFOLDER%"=="%SEGM3%" set SOURCZ=1
if "%CONSOLEFOLDER%"=="%ARCD%" set SOURCZ=1
if "%SOURCZ%"=="1" rd /q "SOURCE"
for /f "delims=" %%a in ('dir /b/a-h') do if "%%~a" NEQ "" set CHRG=0
if "%CHRG%"=="0" call :CONSF
if "%SOURCZ%"=="1" call :CONSF
exit /b

:CONSF
SET SOURCZ=
set CHKSFC=1
if "%SOURCZ%"=="1" call :CHKSRC
if "%CHKSFC%"=="x" exit /b
for %%a in ("%CONSOLEFOLDER%") do echo."%%~a">>"%GBC%\conexist.ini"
exit /b

:CHKSRC
set SRCTST=
for /f "delims=" %%a in ('dir /b/a "%GBG%\%GAM%\%CONS%\%CSTCONS%\SOURCE"') do SET SRCTST=%%~a
if "%SRCTST%"=="" set CHKSFC=x
exit /b

:CHKCON
if /i "%CONEXST%"=="%CSTCONS%" SET CONISHERE=1
exit /b

:NOCUST
SET NOTEXST=1
"%GBC%\wbox.exe" "RJ_GUI" "^%CASTNAME% is currently unpopulated.^^### Create ###^Create the %CASTNAME% folder and open it in explorer for population.^^### Select ###^Return to console selection menu^" "Create;Select" /DB=1
if %ERRORLEVEL%==1 goto :CSTPOP
if %ERRORLEVEL%==2 goto :SELCUST
goto :INDVOUT

:CSTPOP
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%"
Explorer "%GBG%\%GAM%\%CONS%\%CSTCONS%"
goto :SELCUST

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:ALLCONS
set /A NORF=1
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do set /A NORF+=1
if %NORF% LEQ 3 goto :CONFIRM
"%GBC%\wbox.exe" "RJ_GUI" "^#############^WARNING^#############^Depending on the size of your library, configuring all consoles simultaniously can be time consuming.^^Are you sure you wish to do this?" "Select;Confirm" /DB=1
if %errorlevel%==1 goto :QUERYCFG
if %errorlevel%==2 goto :CONFIRM
goto :QUITOUT

:CONFIRM
set ALLCONS=1

:CONSOLETYPE
del /q "%GBC%\conexist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do rd /q "%GBG%\%GAM%\%CONS%\%%~a"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
SET CONSOLEFOLDER=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :EMPTYCHK
popd
)
goto :CONSOLESELECTION

:CONSOLESELECTION
pushd "%GBC%"
SET CCONS=
"%GBC%\fart.exe" "%GBC%\conexist.ini" "\"" --remove
popd
if "%ALLCONS%"=="1" goto :ROMULATE

del /q "%GBC%\conslctd.ini"
"%GBC%\multisel.exe" "%GBC%\conexist.ini" "%GBC%\conslctd.ini"
if not exist "%GBC%\conslctd.ini" goto :QUITOUT

"%GBC%\wbox.exe" "RJ_GUI" "^[Setup] selected systems with new settings^^[Prev] Setup with previous settings if available^^[Default] low-spec default settings are assigned to selected consoles^" "Setup;Prev;Default" /DB=1
if %errorlevel%==1 goto :NEWDEF
if %errorlevel%==2 goto :USEPRV
if %errorlevel%==3 goto :ALLDEF
goto :QUITOUT

:USEPRV
set PRVST=1
goto :CALLPROC

:NEWDEF
set PRVST=
goto :CALLPROC

:ALLDEF
set PRVST=
set ALLCONSOLES=1
goto :CALLPROC
:CALLPROC
for /f "delims=" %%a in ('type "%GBC%\conslctd.ini"') do (
set CSTCONS=%%~a
call :STACK
) 

goto :INDVOUT

:STACK
for %%a in ("%CSTCONS%") do SET CSTALT=%%~a
for %%a in ("%CSTCONS%") do SET CSTLNCH=%%~a
for %%a in ("%CSTCONS%") do set CASTNAME=%%~a
SET CONISHERE=
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "delims=" %%a in ('type "%GBC%\%CURNTA%"') do (
set CONEXST=%%~a
call :CHKCON
)
IF "%CONISHERE%"=="1" goto :CONTCONS
goto :CCEXST

:ROMULATE
:CALLPROC
call "%GBC%\allProc.bat">>"%GBC%\logs\allProc.log"
exit /b

:CCEXST
SET CCONS=
FOR /F "delims=" %%a in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do (
SET CCONPATH=%%~a
SET CUSTCONSPTH=%%~a
)
SET CSTCONAME=%CSTCONS%
SET CSTLNCH=Other
SET CCONS=1
goto :ROMPTHCONT

:CONTCONS

:NOTEMPTY
for %%A in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do set CUSTCONSPTH=%%~A
for %%A in ("%CUSTCONSPTH:~0,2%") do set CSTDIR=%%~A

:ROMPTHCONT
CALL "%GBC%\indvConf.bat">>"%GBC%\logs\indvConf.log"
if "%CANCELLED%"=="1" goto :INDVOUT

:CSTINJ
call "%GBC%\cfgInj.bat">>"%GBC%\logs\cfgInj.log"
if "%CANCELLED%"=="1" goto :INDVOUT

:copy
if "%CEMU%" NEQ "CustomEmulator" goto :GENERATE
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
set ARBITRARY=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Localizing the %CASTNAME% launchers." /marquee
popd

:INJZZ
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%RCTFL%"=="1" "%GBC%\fart.exe" "zz.bat" [RCD] 1
"%GBC%\fart.exe" "zz.bat" [SYSTYPE] "%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EMUL] "%CSTEML%"
call "%GBC%\emuname.bat">>"%GBC%\logs\emuname.log"
"%GBC%\fart.exe" "zz.bat" [EMUZ] "%CEMZ%"

:injectall
"%GBC%\fart.exe" "zz.bat" [DAMVAR] "%DAMVAR%"
if "%JOYVAL%"=="XPADDER" "%GBC%\fart.exe" "zz.bat" [XPD] "%XPADDER%" 
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPD] "%ANTMIC%" 
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPLT] "1" 

:FLDRITERATE
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
popd

:GENERATE
call "%GBC%\indvGen.bat">>"%GBC%\logs\indvGen.log"
if "%JOYVAL%"=="XPADDER" for %%a in ("%XPROF%") do (
set NPROF=%%~a
set PRFXT=xpadderprofile
set PREFIX=XPD
set JOYVAR=Xpadder
)
if "%JOYVAL%"=="ANTIMIC" for %%a in ("%APROF%") do (
set NPROF=%%~a
set PRFXT=amgp
set PREFIX=AMC
set JOYVAR=antiMicro
)
if "%PREFIX%"=="" SET PREFIX=XPD
if "%XPD1CST%"=="1" goto :%PREFIX%CP
if "%XPD2CST%"=="1" goto :%PREFIX%CP
if "%AMC1CST%"=="1" goto :%PREFIX%CP
if "%AMC2CST%"=="1" goto :%PREFIX%CP

:INDVCONT
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\zz.bat"
if "%CANCELLED%"=="1" goto :CANCELLED

:AMCCP
:XPDCP
if "%XPD1CST%"=="0" call :%PREFIX%2CST
if "%AMC1CST%"=="0" call :%PREFIX%2CST
if "%BOTHOFF%"=="1" goto :folderPrcd
if "%JOYVAL%"=="XPADDER" for %%a in ("%XPROF%") do (
set NPROF=%%~a
set PRFXT=xpadderprofile
set PREFIX=XPD
set JOYVAR=Xpadder
)
if "%JOYVAL%"=="ANTIMIC" for %%a in ("%APROF%") do (
set NPROF=%%~a
set PRFXT=amgp
set PREFIX=AMC
set JOYVAR=antiMicro
)

"%SEVENZIP%" x -y "%GBC%\net\%NPROF%\%NPROF%.zip" -o"%GBC%\net\%NPROF%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\Other\retroArch1.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\Other\retroArch2.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\EMU\Other\retroArch1.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\EMU\Other\retroArch2.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\Other\cps31.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\Other\cps32.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\EMU\Other\cps31.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\EMU\Other\cps32.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\Other\NullDC1.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\Other\NullDC2.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\EMU\Other\NullDC1.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\EMU\Other\NullDC2.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\Other\mess1.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\Other\mess2.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\EMU\Other\mess1.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\EMU\Other\mess2.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
popd
popd
pushd "%CUSTCONSPTH%"
if "%AMC1EF%"=="1" copy /Y "%GBC%\net\%NPROF%\%CSTLNCH%\Player1.%PRFXT%" "%CD%"
if "%AMC1BLNK%"=="1" copy /Y "%GBC%\net\%NPROF%\Blank\Player1.%PRFXT%" "%CD%"
if "%AMC1EMU%"=="1" copy /Y "%GBC%\net\%NPROF%\EMU\%CSTLNCH%\Player1.%PRFXT%" "%CD%"
if "%XPD1EF%"=="1" copy /Y "%GBC%\net\%NPROF%\%CSTLNCH%\Player1.%PRFXT%" "%CD%"
if "%XPD1BLNK%"=="1" copy /Y "%GBC%\net\%NPROF%\Blank\Player1.%PRFXT%" "%CD%"
if "%XPD1EMU%"=="1" copy /Y "%GBC%\net\%NPROF%\EMU\%CSTLNCH%\Player1.%PRFXT%" "%CD%"
for /f "delims=" %%a in ('dir /b /ad-h') do copy /Y "Player1.%PRFXT%" "%%~a"
if "%XPD2EF%"=="1" copy /Y "%GBC%\net\%NPROF%\%CSTLNCH%\Player2.%PRFXT%" "%CD%"
if "%XPD2BLNK%"=="1" copy /Y "%GBC%\net\%NPROF%\Blank\Player2.%PRFXT%" "%CD%"
if "%XPD2EMU%"=="1" copy /Y "%GBC%\net\%NPROF%\EMU\%CSTLNCH%\Player2.%PRFXT%" "%CD%"
if "%AMC2EF%"=="1" copy /Y "%GBC%\net\%NPROF%\%CSTLNCH%\Player2.%PRFXT%" "%CD%"
if "%AMC2BLNK%"=="1" copy /Y "%GBC%\net\%NPROF%\Blank\Player2.%PRFXT%" "%CD%"
if "%AMC2EMU%"=="1" copy /Y "%GBC%\net\%NPROF%\EMU\%CSTLNCH%\Player2.%PRFXT%" "%CD%"
for /f "delims=" %%a in ('dir /b /ad-h') do copy /Y "Player2.%PRFXT%" "%%~a"
if "%CUSTCONSPTH%"=="" goto :CANCELLED
del /q "%CUSTCONSPTH%\Player1.%PRFXT%"
del /q "%CUSTCONSPTH%\Player2.%PRFXT%"
del /s /q "%CUSTCONSPTH%\zz.cfg"
del /s /q "%CUSTCONSPTH%\zz.bat"
del /q "%CUSTCONSPTH%\*.cmd"
if "%NOTEXST%" NEQ "1" goto :folderPrcd

:CANCELLED
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
popd
goto :indvcomplete

:folderPrcd
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WFINS%" "Launcher injections complete." /Stop /timeout:1
popd


:indvcomplete
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Cleaning up..." /marquee
call "%GBC%\indvComplete.bat">>"%GBC%\logs\indvComplete.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd

:INDVOUT
exit /b