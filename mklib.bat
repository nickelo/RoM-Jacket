SET ROMST=
SET ALTINC=
del /q "%GBC%\dupadd.cmd"
del /q "%GBC%\dupbck.cmd"
del /q "%GBC%\Folder.ico"
del /q "%GBC%\reshack.ini"
del /q "%GBC%\inclCfg.ini"
del /q "%GBC%\injbios.ini"
del /q "%GBC%\includeRoms.ini"
del /q "%GBC%\includevar.ini"
del /q "%GBC%\injLnch.ini"
del /q "%GBC%\bioscpy.ini"
del /q "%GBC%\prefxe.ini"
del /q "%GBC%\gsetup.ini"
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
for %%a in ("%LIBIT%") do set CSTCONS=%%~nxa
set NOTICE=1

:UNSUPPORTED
for /f "delims=" %%a in ('type "%GBC%\conselect.set"') do if "%%~a"=="%CSTCONS%" SET NOTICE=0
if "%NOTICE%"=="1" goto :unnotice

:SUPPORTED
for %%a in ("%SEGM2%" "%CDI%" "%NEOGE%" "%CPS%" "%CPS2%" "%CPS3%" "%DAPH%" "%TAITX%" "%WIN32%" "%ARCD%" "%SSAT%" "%FMTOWNS%") do if "%%~a"=="%CSTCONS%" goto :unnotice
del /q "%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini.*"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat"
goto :UNZIP

:unnotice
"%GBC%\wbox.exe" "RJ_GUI" "Console is Unsupported at this time.^Select another system?" "Select;QUIT"
if %ERRORLEVEL%==1 goto :GETROM
if %ERRORLEVEL%==2 goto :EOF
goto :EOF

:UNZIP
"%SEVENZIP%" x -y "%GBC%\net\%EXECT%\%EXECT%.zip" -o"%GBC%\net\%EXECT%"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\*_Multi_Game.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\*.bak"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\instExe.bat"

:MASSINCLUDE
for /f "delims=" %%a in ('dir /s/b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
set /A ROMSZ=0
set ROMZ=%%~nxa
pushd "%%~a"
call :GETALLROMS
popd
)
goto :INCLUDEXPADDER

:GETALLROMS
for /f "delims=" %%a in ('dir /b/a-d-h') do (
SET ROMU=%%~dpnxa
SET ROME=%%~nxa
SET ROMETP=%%~dpa
SET ROMN=%%~na
SET /A ROMST=%%~za
SET ALLEXT=%%~xa
call :TOLIST
)
exit /b

:TOLIST
for %%A in ("%ROMETP:~0,-1%") do set ROMEP=%%~A
if /i "%ALLEXT%"==".exe" exit /b
if /i "%ALLEXT%"==".png" exit /b
if /i "%ALLEXT%"==".bmp" exit /b
if /i "%ALLEXT%"==".bat" exit /b
if /i "%ALLEXT%"==".jpg" exit /b
if /i "%ALLEXT%"==".xml" exit /b
if /i "%ALLEXT%"==".tbn" exit /b
if /i "%ALLEXT%"==".nfo" exit /b
if /i "%ALLEXT%"==".cfg" exit /b
if /i "%ALLEXT%"==".htm" exit /b
if /i "%ALLEXT%"==".html" exit /b
if /i "%ALLEXT%"==".jpeg" exit /b
if /i "%ALLEXT%"==".conf" exit /b
if /i "%ALLEXT%"==".confg" exit /b
if /i "%ALLEXT%"==".config" exit /b
if /i "%ALLEXT%"==".settings" exit /b
if /i "%ALLEXT%"==".properties" exit /b
call "%GBC%\checkall.bat">>"%GBC%\logs\checkall.log"
if "%GOODEX%"=="1" call :ROME
if "%GOODEX%"=="1" call :ROMU
set /A ROMSZ=(%ROMSZ%+%ROMST%)
SET INCLU=1
SET INJROMF=1
exit /b

:ROME
for %%a in ("%ROME%") do (
call :ALTCHK
)
exit /b

:ALTCHK
for /f "delims=" %%a in ('type "%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"') do (
if "%%~a" =="%ROME%" set ALTINC=
if "%%~a" =="%ROME%" call :RENAMEN
)
if "%ALTINC%"=="" (
echo.%ROME%>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
)
exit /b

:RENAMEN
set /a ALTINC+=1
echo.ALT%ALTINC%_%ROME%>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
echo.rename "%ROMU%" "ALT%ALTINC%_%ROME%">>"%GBC%\dupadd.cmd"
echo.rename "%ROMEP%\ALT%ALTINC%__%ROME%" "%ROME%">>"%GBC%\dupbck.cmd"
exit /b

:ROMU
SET ALTINC=
for /f "delims=" %%a in ('type "%GBC%\net\%EXECT%\%CSTCONS%\inclRoms.ini"') do if "%%~a"=="%ROMU%" goto :ALTINCLROMS
for %%a in ("%ROMU%") do echo.%%~a>>"%GBC%\net\%EXECT%\%CSTCONS%\inclRoms.ini"
exit /b

:ALTINCLROMS
set /a ALTINC+=1
echo.%ROMEP%\ALT%ALTINC%_%ROME%>>"%GBC%\net\%EXECT%\%CSTCONS%\inclRoms.ini"
exit /b


:INCLUDEXPADDER
if "%P1JOYTYPE%"=="KB" set JOY1LOC=
if "%P1JOYTYPE%"=="JOY" set JOY1LOC=EMU\
if "%P1JOYTYPE%"=="Blank" set JOY1LOC=Blank\
if "%P2JOYTYPE%"=="KB" set JOY2LOC=
if "%P2JOYTYPE%"=="JOY" set JOY2LOC=EMU\
if "%P2JOYTYPE%"=="Blank" set JOY2LOC=Blank\

for %%a in ("%GBC%\net\%XPROF%\%CSTCONS%\%JOY1LOC%Player1.xpadderprofile") do (
SET PLAYR=%%~a
if exist "%%~a" set PLYRX="%%~a"
)

:XPD2TYPE
if "%JOYVAL%"=="XPADDER" for %%a in ("%XPROF%") do (
set NPROF=%%~a
set PRFXT=xpadderprofile
)
if "%JOYVAL%"=="ANTIMIC" for %%a in ("%APROF%") do (
set NPROF=%%~a
set PRFXT=amgp
)

for %%a in ("%GBC%\net\%NPROF%\%CSTCONS%\%JOYLOC%Player2.%PRFXT%") do if exist "%%~a" set PLYRX="%PLAYR%"  "%%~a"
goto :ADDINROMS



:ADDINROMS
"%GBC%\fart.exe" "%GBC%\inclRoms.ini" "&" "[@]"
for /f "delims=" %%a in ('type "%GBC%\net\%EXECT%\%CSTCONS%\inclRoms.ini"') do echo|set /p=" "%%~a" ">>"%GBC%\includeRoms.ini"
"%GBC%\fart.exe" "%GBC%\includeRoms.ini" "[@]" "&"
for /f "delims=" %%a in ('type "%GBC%\includeRoms.ini"') do set ADDEDF="%%~a

:EMUSEL
SET INSTOPT=Quick_Run;Install;Import
SET INSTO1=CONTINUE
SET INSTO2=INSTALL
SET INSTO3=IMPORT
SET INSTMTHD=Would you like to run temporarily or install to your disk?
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emudefaults.log"
call "%GBC%\emuexe.bat">>"%GBC%\logs\emuexe.log"
type CustomEmulator>"%GBC%\supportedEmulators.ini"
type "%GBC%\supportedEmulators.set">>"%GBC%\supportedEmulators.ini"
"%GBC%\wbox.exe" "RJ_GUI" "Select the Emulator" "Default;%CEMU%" /db=1 /TM=3
if %ERRORLEVEL%==1 goto :DEFAULTEMU
if %ERRORLEVEL%==2 goto :DEFAULTEMU
goto :DEFAULTEMU

:DEFAULTEMU
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emudefaults.log"
call "%GBC%\emuexe.bat">>"%GBC%\logs\emuexe.log"
if "%CEMU%"=="Default" goto :CHOOSEMU
goto :INIOUT

:CHOOSEMU
echo.CustomEmulator>"%GBC%\supportedEmulators.ini"
for /f "delims=" %%a in ('type "%GBC%\supportedemulators.set"') do echo.%%~a>>"%GBC%\supportedemulators.ini"
"%GBC%\Wselect.exe" "%GBC%\supportedEmulators.ini" "Select An Emulator to associate with %CSTCONS%" "set CEMUZ=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :QUITOUT								
CALL "%GBC%\emuAssign.cmd"
if /i "%CEMUZ%"=="CustomEmulator" goto :CHOOSEMU
if /i "%CEMUZ%"=="Mess" call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log" && SET MESSINJ=1
if /i "%CEMUZ%"=="Mess64" call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log" && SET MESSINJ=1
if /i "%CEMUZ%"=="Messui" call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log" && SET MESSINJ=1
if /i "%CEMUZ%"=="Messui64" call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log" && SET MESSINJ=1
if /i "%CEMUZ%"=="UME" call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log" && SET MESSINJ=1
if /i "%CEMUZ%"=="UME64" call "%GBC%\messtype.bat">>"%GBC%\logs\messtype.log" && SET MESSINJ=1

:INIOUT
%BSTRT% "%WBUSY%" "RJ_GUI" "Compling %CSTCONS% Executable" /Marquee
echo.if exist "firstrun.ini" goto :create>>"%GBC%\prefxe.bat"
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call "%GBC%\genExe.bat">>"%GBC%\logs\genexe.log"

set CVAREMU=%CEMU%
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1

for %%a in ("%GBC%\net\%CEMU%\%CEMU%.7z") do set /A ROMSEZ=%ROMSZ%+%%~za
set /a EXESIZE=%ROMSEZ% / 1000000
"%GBC%\wbox.exe" "RJ_GUI" "^#########################^File size of the exe will be approximately^%EXESIZE% mb^#########################^ Save to the desktop or choose a destination" "Destkop;Choose" /db=1 /bw=170
if %ERRORLEVEL%==1 goto :seldesk
if %ERRORLEVEL%==2 goto :chooseloc
goto :QUITOUT

:GETEMU
for /f "delims=" %%a in ('Wfile.exe "SET CUSTEMU=" "*.*" "Select the Emulator for %CSTCONS%" /noquote') do %%a
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


:GENXE
set ICNINC=
set ICEXT=
set IMGON=
goto :COMPILE

:COMPILE
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7za.exe"
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7zsd.sfx"

pushd "%DESTN%"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico"
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
if exist "%GBC%\net\%FLDR%\%CSTCONS%.png" "%GBC%\any2ico.exe" -img="%GBC%\net\%FLDR%\%CSTCONS%.png" -icon="%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" -formats=32,48,96,128,256 -pngc -stretch
if exist "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" goto :UNCONV
if exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder.png" "%GBC%\any2ico.exe" -img="%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder.png" -icon="%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" -formats=32,48,96,128,256 -pngc -stretch
REM "%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%GBC%\Folder.ico" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder.png"
:UNCONV
if not exist "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" copy /y "%GBC%\exec.ico" "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico"
%BSTRT% "%WBUSY%" "RJ_GUI" "Generating Executable" /Marquee
call "%GBC%\dupadd.cmd">>"%GBC%\logs\dupadd.log"
call "%GBC%\compExe.bat" "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat" "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat" "%GBC%\wbox.exe" "%GBC%\wfolder.exe" "%GBC%\fart.exe" "%GBC%\7za.exe"  "%GBC%\inifile.exe" "%GBC%\wselect.exe" "%GBC%\xxmklink.exe" "%GBC%\net\%EXECT%\%CSTCONS%\%SHRTN%_Multi_Game.bat" "%GBC%\instExe.set" "%GBC%\injExeTmpl.bat" "%GBC%\instExe.bat" "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" "%EMULOC%" "%INROM%" %EMUFILES% %ADDEDF% %ICNADD% %PLYRX%
call "%GBC%\dupbck.cmd">>"%GBC%\logs\dupbck.log"
popd
SET EXENAME=%SHRTN%_Multi_Game
pushd "%GBC%"
"%SEVENZIP%" x -y "%GBC%\ResHack.zip" -o"%GBC%"
copy /y "%GBC%\reshck.set" "%GBC%\reshack.ini"
rename "%DESTN%\launch.exe" "%EXENAME%.exe"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [DESTN] "%DESTN%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ROMN] "%EXENAME%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ICOLOC] "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico"
pushd "%DESTN%"
"%GBC%\ResHacker.exe" -script "%GBC%\reshack.ini"
popd
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
