del /q "%GBC%\inclRoms.ini"
del /q "%GBC%\dupadd.cmd"
del /q "%GBC%\dupbck.cmd"
del /q "%GBC%\duproms.ini"
del /q "%GBC%\reshack.ini"
del /q "%GBC%\inclCfg.ini"
del /q "%GBC%\prefxe.bat"
del /q "%GBC%\injbios.ini"
del /q "%GBC%\includeRoms.ini"
del /q "%GBC%\includevar.ini"
del /q "%GBC%\injLnch.ini"
del /q "%GBC%\bioscpy.ini"
del /q "%GBC%\prefxe.ini"
del /q "%GBC%\gsetup.ini"
SET EXECRT=1
SET ALTINC=
goto :GETROM

set /a dlvar=0
for /f "delims=" %%a in ('type "%GBC%\hundo.set"') do (
call :resets
)
goto :GETROM

:resets
set EMUFILE%dlvar%=
set ADDFILE%dlvar%=
set /a dlvar+=1
if %dlvar%==100 goto :EOF
exit /b

:GETROM
set CSTXE=
set CSTMN=
set CSTROM=
set INROM=
set CSTM=
set CSTLOC=
set ROMF=
set ROMN=
set CSTCONS=
set CUSTCONTMP=
copy /y "%GBC%\conSelect.set" "%GBC%\csl.ini"
for %%a in ("%SEGM2%" "%CDI%" "%NEOGE%" "%CPS2%" "%CPS3%" "%CPS%" "%DAPHN%" "%TAITX%" "%WIN32%" "%ARCD%" "%SSAT%" "%FMTOWNS%") do "%GBC%\fart.exe" "%GBC%\csl.ini" "%%~a" --remove
"%GBC%\wselect.exe" "%GBC%\csl.ini" "Select a System Type" "set CSTCONS=$item" > "%GBC%\suprtd.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\suprtd.cmd"
if "%CSTCONS%"=="" goto :GETROM
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CSTROM=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.*" "Select the ROM" /noquote') do %%a
if /i "%CSTROM%"=="" goto :QUITOUT
for %%a in ("%CSTROM%") do set ROMN=%%~na
for %%a in ("%CSTROM%") do set ROMF=%%~nxa
for /f "delims=" %%a in ("%CSTROM%") do set INROM=%%~dpnxa
for %%a in ("%CSTROM%") do set CSTXE=%%~xa
for /f "delims=" %%a in ("%CSTROM%") do set CUSTCONTMP=%%~dpa
for %%a in ("%CUSTCONTMP:~0,-1%") do set CSTLOC=%%~a
for %%a in ("%CUSTCONTMP:~0,-1%") do set CSTM=%%~a
for %%a in ("%CSTM%") do set CSTMN=%%~nxa
if "%CSTROM%"=="" goto :EOF
set NOTICE=1

:UNSUPPORTED
for /f "delims=" %%a in ('type "%GBC%\conselect.set"') do if "%%~a"=="%CSTCONS%" SET NOTICE=0
if "%NOTICE%"=="1" goto :unnotice

:SUPPORTED
del /q "%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini.*"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat"
goto :UNZIP

:unnotice
"%GBC%\wbox.exe" "RJ_GUI" "%CSTCONS% is not currently supported for execuatble creation.^Select another system?" "Select;QUIT"
if %ERRORLEVEL%==1 goto :GETROM
if %ERRORLEVEL%==2 goto :EOF
goto :######

:UNZIP
"%SEVENZIP%" x -y "%GBC%\net\%EXECT%\%EXECT%.zip" -o"%GBC%\net\%EXECT%"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\*.bak"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\instExe.bat"

for %%a in ("%ROMF%") do echo.%%~a>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
SET ADDEDF=
SET INCLU=

:ADDA
"%GBC%\wbox.exe" "RJ_GUI" "Select Another file to add to your executable?" "Select;Finish" /DB=2
if %ERRORLEVEL%==1 goto :SELECTA
if %ERRORLEVEL%==2 goto :ADDFILES
goto :FINA

:SELECTA

:GETFILE
set ADDFILE=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET ADDFILE=" "%CUSTCONTMP%" "Select addtional file?" /noquote') do %%a
if "%ADDFILE%"=="" goto :ADDFILES
SET INCLU=1
for %%a in ("%ADDFILE%") do set ADDFILEF=%%~nxa
for %%a in ("%ADDFILE%") do set ADDFILET=%%~dpa
for %%a in ("%ADDFILET:~0,-1%") do set ADDFILEP=%%~a
if "%ADDFILE%" NEQ "" call :ADDCHK
if "%DUPEXIST%"=="1" goto :ADDP
for %%a in ("%ADDFILE%") do echo.%%~nxa>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
for /f "delims=" %%a in ('type "%GBC%\inclRoms.ini"') do if "%%~a"=="%ADDFILE%" goto :GETFILE
for %%a in ("%ADDFILE%") do echo.%%~a>>"%GBC%\inclRoms.ini"
goto :ADDA

:ADDP
for %%a in ("ALT%ALTINC%_%ADDFILEF%") do echo.%%~nxa>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
for %%a in ("ALT%ALTINC%_%ADDFILEF%") do echo.%%~nxa>>"%GBC%\inclRoms.ini"
goto :ADDA

:ADDCHK
for /f "delims=" %%a in ('type "%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"') do if "%%~nxa"=="%ADDFILEF%" call :RNAMEALT
exit /b

:RNAMEALT
set /a ALTINC+=1
for %%a in ("%ADDFILE%") do echo.rename "%ADDFILE%" "ALT%ALTINC%_%ADDFILEF%">>"%GBC%\net\%EXECT%\%CSTCONS%\dupadd.cmd"
for %%a in ("%ADDFILE%") do echo.rename "%ADDFILEP%\ALT%ALTINC%__%ADDFILEF%" "%ADDFILE%">>"%GBC%\dupbck.cmd"
exit /b

:MULTIQ 
"%GBC%\wbox.exe" "RJ_GUI" "Are you creating a multi-game executable?" "Yes;No" /db=2
if %ERRORLEVEL%==1 goto :ADDEDGAMES
if %ERRORLEVEL%==2 goto :ADDEDSOURCE
goto :ADDEDSOURCE

:ADDEDGAMES
SET INJROMF=1
exit /b

:ADDEDSOURCE
SET INJROMF=
exit /b

:ADDFILES
if "%INCLU%"=="1" call :MULTIQ
"%GBC%\fart.exe" "%GBC%\inclRoms.ini" "&" "[@]"
"%GBC%\fart.exe" "%GBC%\duproms.ini" "&" "[@]"
for /f "delims=" %%a in ('type "%GBC%\inclRoms.ini"') do echo|set /p=" "%%~a" ">>"%GBC%\includeRoms.ini"
for /f "delims=" %%a in ('type "%GBC%\duproms.ini"') do echo|set /p=" "%%~a" ">>"%GBC%\includeRoms.ini"
"%GBC%\fart.exe" "%GBC%\includeRoms.ini" "[@]" "&"
for /f "delims=" %%a in ('type "%GBC%\includeRoms.ini"') do set ADDEDF="%%~a

if "%JOYVAL%"=="XPADDER" for %%a in ("%XPROF%") do (
set NPROF=%%~a
set PRFXT=xpadderprofile
)
if "%JOYVAL%"=="ANTIMIC" for %%a in ("%APROF%") do (
set NPROF=%%~a
set PRFXT=amgp
)

for %%a in ("%GBC%\net\%NPROF%\%CSTCONS%\Player1.%PRFXT%") do (
SET PLAYR=%%~a
if exist "%%~a" set PLYRX="%%~a"
)

for %%a in ("%GBC%\net\%NPROF%\%CSTCONS%\Player2.%PRFXT%") do if exist "%%~a" set PLYRX= "%PLAYR%"  "%%~a"
for %%a in ("%CSTM%\Player1.%PRFXT%") do (
SET PLAYR=%%~a
if exist "%%~a" set PLYRX="%%~a"
)

for %%a in ("%CSTM%\Player2.%PRFXT%") do if exist "%%~a" set PLYRX= "%PLAYR%" "%%~a"

:EMUSEL
SET INSTOPT=Quick_Run;Install
SET INSTO1=CONTINUE
SET INSTO2=INSTALL
SET INSTMTHD=Would you like to run temporarily or install to your disk?
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emuDefaults.log"
call "%GBC%\emuexe.bat">>"%GBC%\logs\emuexe.log"
type CustomEmulator>"%GBC%\supportedEmulators.ini"
type "%GBC%\supportedEmulators.set">>"%GBC%\supportedEmulators.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Select the Emulator" "Default;%CEMU%" /db=1 /TM=3
if %ERRORLEVEL%==1 goto :DEFAULTEMU
if %ERRORLEVEL%==2 goto :DEFAULTEMU
goto :DEFAULTEMU

:DEFAULTEMU
call "%GBC%\emuDefaults.bat"
call "%GBC%\emuexe.bat"
if "%CEMU%"=="Default" goto :CHOOSEMU
goto :INIOUT

:CHOOSEMU
echo.CustomEmulator>"%GBC%\supportedEmulators.ini"
for /f "delims=" %%a in ('type "%GBC%\supportedemulators.set"') do echo.%%~a>>"%GBC%\supportedemulators.ini"
"%GBC%\Wselect.exe" "%GBC%\supportedEmulators.ini" "Select An Emulator to associate with %ROMN%" "set CEMUZ=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :QUITOUT								
CALL "%GBC%\emuAssign.cmd"
if /i "%CEMUZ%"=="CustomEmulator" goto :CHOOSEMU
if /i "%CEMUZ%"=="Mess" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="Mess64" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="Messui" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="Messui64" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="UME" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="UME64" call "%GBC%\messtype.bat"

:INIOUT
%BSTRT% "%WBUSY%" "RJ_GUI" "Compling Executable" /Marquee
echo.if exist "firstrun.ini" goto :create>>"%GBC%\prefxe.bat"
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call "%GBC%\genExe.bat">>"%GBC%\logs\genexe.log"

set CVAREMU=%CEMU%
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Save to the desktop or choose a destination" "Destkop;Choose" /db=1
if %ERRORLEVEL%==1 goto :seldesk
if %ERRORLEVEL%==2 goto :chooseloc
goto :QUITOUT

:GETEMU
for /f "delims=" %%a in ('Wfile.exe "SET CUSTEMU=" "*.*" "Select the Emulator for %CUSTCONS%" /noquote') do %%a
if "%CUSTEMU%"=="" goto :reassign
for /f "delims=" %%a in ("%CUSTEMU%") do (
SET CUSTEMUEXE=%%~nxa
SET CUSTEMUNEWPATH=%%~dpa
)

:seldesk
for %%a in ("%USKDP%") do set DESTN=%%~a
goto :GENXE

:chooseloc
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET DESTN=" "%USKDP%" "Select the destination for your executable" /noquote') do %%a
popd
goto :GENXE

:ncvrtp
set IMGON=1
set ICEXT=.png
REM "%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.ico" "%CSTM%\Folder%ICEXT%"
"%GBC%\any2ico.exe" -img="%CSTM%\Folder%ICEXT%" -icon="%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.ico" -formats=32,48,96,128,256 -pngc -stretch
exit /b

:ncvrtj
set IMGON=1
set ICEXT=.jpg
"%GBC%\any2ico.exe" -img="%CSTM%\Folder%ICEXT%" -icon="%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" -formats=32,48,96,128,256 -pngc -stretch
exit /b

:GENXE
del /q "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico"
set ICNINC=
set ICEXT=
set IMGON=
if "%INJROMF%"=="1" set IMGON=0
if "%INJROMF%"=="1" goto :COMPILE
if exist "%CSTM%\Folder.jpg" call :ncvrtj
if exist "%CSTM%\Folder.png" call :ncvrtp

:COMPILE
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7za.exe"
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7zsd.sfx"

%BSTRT% "%WBUSY%" "RJ_GUI" "Generating Executable" /Marquee
pushd "%DESTN%"
for %%a in ("%GBC%\net\%EXECT%\%CSTCONS%") do set ICOLOC=%%~a
if "%IMGON%"=="1" goto :UNCONV
if exist "%GBC%\net\%FLDR%\%CSTCONS%.png" "%GBC%\any2ico.exe" -img="%GBC%\net\%FLDR%\%CSTCONS%.png" -icon="%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" -formats=32,48,96,128,256 -pngc -stretch
if exist "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" goto :UNCONV
if exist ""%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder%ICEXT%" "%GBC%\any2ico.exe" -img="%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder%ICEXT%" -icon="%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" -formats=32,48,96,128,256 -pngc -stretch
:UNCONV
if not exist "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" copy /y "%GBC%\exec.ico" "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico"
REM if "%INJROMF%"=="1" "%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder%ICEXT%"
call "%GBC%\net\%EXECT%\%CSTCONS%\dupadd.bat">>"%GBC%\logs\dupadd.log"
call "%GBC%\compExe.bat" "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat" "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat" "%GBC%\wbox.exe" "%GBC%\wfolder.exe" "%GBC%\fart.exe" "%GBC%\7za.exe"  "%GBC%\inifile.exe" "%GBC%\wselect.exe" "%GBC%\xxmklink.exe" "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat" "%GBC%\instExe.set" "%GBC%\injExeTmpl.bat" "%GBC%\instExe.bat" "%ICOLOC%\Folder.ico" "%EMULOC%" "%INROM%" %EMUFILES% %ADDEDF% %ICNADD% %PLYRX%
call "%GBC%\dupbck.cmd">>"%GBC%\logs\dupbck.log"
popd

pushd "%GBC%\net\%EXECT%\%CSTCONS%"
"%SEVENZIP%" x -y "%GBC%\ResHack.zip" -o"%GBC%"
copy /y "%GBC%\reshck.set" "%GBC%\reshack.ini"
rename "%DESTN%\launch.exe" "%ROMN%.exe"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [DESTN] "%DESTN%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ROMN] "%ROMN%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ICOLOC] "%ICOLOC%\Folder.ico"
"%GBC%\ResHacker.exe" -script "%GBC%\reshack.ini"
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Compiled Executable" /stop /timeout:1
