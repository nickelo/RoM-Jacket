SET EMU7Z=
set EMULOC=
set XPDEXST=

:ADDXPDDR
if exist "%GBC%\net\%XPADR%\%XPADR%.7z" call :SETXPD
if "%XPADP%"=="" goto :GETNAMESOFCFGFILES

:GETNAMESOFCFGFILES
pushd "%GBC%\net\%EXECT%\%CSTCONS%"
call "%GBC%\injexe.bat"
CALL "%GBC%\exec%SHRTN%.bat"
if "%INCLU%"=="1" call :INJECTBAT
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%EXECT%\%CSTCONS%"') do (
set GENALL=%%~dpnxa
set GENNAM=%%~nxa
set GENEXT=%%~xa
call :SETCFG
)
pushd "%GBC%\net\%EXECT%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [ROMF] "%ROMF%"
popd
goto :COPYFILES

:INJECTBAT
pushd "%GBC%\net\%EXECT%\%CSTCONS%"
if "%INJROMF%" NEQ "1" exit /b
"%GBC%\fart.exe" "zz.bat" [GSEL] 1
if "%GLBLXE%"=="1" "%GBC%\fart.exe" "zz.bat" [ROMF] "%%ROMF%%"
if "%GLBLXE%"=="" "%GBC%\fart.exe" "zz.bat" [ROMF] "%%ROMF%%"
popd
exit /b

:SETCFG
if "%GENEXT%"==".bak" exit /b
for /f "delims=" %%a in ('type "%GBC%\inclCfg.ini"') do if "%%~a"=="%GENALL%.bak" exit /b
for %%a in ("%GENALL%") do echo.%%~a.bak>>"%GBC%\inclCfg.ini"
echo.del /q "%GENNAM%">>"%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat"
echo.rename "%GENNAM%.bak" "%GENNAM%">>"%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat"
exit /b

:COPYFILES
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%CEMU%\*.7z"') do (
set EMULOC=%%~dpnxa
SET EMU7Z=%%~nxa
)
if "%EMU7Z%"=="" call :UNCREATE
if "%EMU7Z%"=="" goto :COPYFILES
if "%EMU7Z%"=="QUIT" goto :QUITOUT
goto :INCLUDEFILES

:INCLUDEFILES
"%GBC%\fart.exe" "%GBC%\inclCfg.ini" "&" "[@]"
for /f "delims=" %%a in ('type "%GBC%\inclCfg.ini"') do echo|set /p=" "%%~a" ">>"%GBC%\includevar.ini"
"%GBC%\fart.exe" "%GBC%\includevar.ini" "[@]" "&"
goto :CONCATVAR

:CONCATVAR
for /f "delims=" %%a in ('type "%GBC%\includevar.ini"') do if "%%~a" NEQ "" set EMUFILES="%%~a

:INJECTIONS


echo.MODE CON: COLS=15 LINES=1 >>"%GBC%\prefxe.ini"
echo.TITLE LAUNCHER>>"%GBC%\prefxe.ini"
echo.:HOME>>"%GBC%\prefxe.ini"
echo.if exist "firstrun.ini" goto :create>>"%GBC%\prefxe.ini"
for /f "delims=" %%a in ('type "%GBC%\forloop.set"') do echo.%%~a>>"%GBC%\prefxe.ini"
copy /y "%GBC%\forloop.set" "%GBC%\forloop.ini"
if "%GLBLXE%"=="" "%GBC%\fart.exe" "%GBC%\prefxe.ini" [ROMN] "%ROMN%"
if "%GLBLXE%"=="1" "%GBC%\fart.exe" "%GBC%\prefxe.ini" [ROMN] "%SHRTN%_Multi_Game"
echo.mkdir ".Mem">>"%GBC%\prefxe.ini"
echo.mkdir ".patches">>"%GBC%\prefxe.ini"
echo.mkdir ".cheats">>"%GBC%\prefxe.ini"
echo.mkdir ".Man">>"%GBC%\prefxe.ini"
echo.mkdir ".sstates">>"%GBC%\prefxe.ini"
echo.mkdir ".snaps">>"%GBC%\prefxe.ini"
echo.:OPTION>>"%GBC%\prefxe.ini"
echo.if "%%INSTL%%"=="1" goto :OPTIONB>>"%GBC%\prefxe.ini"

echo.wbox.exe "InstRun" "%INSTMTHD%" "%INSTOPT%">>"%GBC%\prefxe.ini"
echo.if %%ERRORLEVEL%% == 1 goto :%INSTO1%>>"%GBC%\prefxe.ini"
echo.if %%ERRORLEVEL%% == 2 goto :%INSTO2%>>"%GBC%\prefxe.ini"
echo.if %%ERRORLEVEL%% == 3 goto :%INSTO3%>>"%GBC%\prefxe.ini"
echo.goto :EOF>>"%GBC%\prefxe.ini"
echo.:OPTIONB>>"%GBC%\prefxe.ini"
if "%INSTO1%"=="INSTALL" echo.goto :CONTINUE>>"%GBC%\prefxe.ini"
echo.wbox.exe "InstRun" "Play the Game?" "Play;QUIT" /db=1 >>"%GBC%\prefxe.ini"
echo.if %%ERRORLEVEL%% == 1 goto :PLAYNOW>>"%GBC%\prefxe.ini"
echo.if %%ERRORLEVEL%% == 2 goto :MKSKT>>"%GBC%\prefxe.ini"
echo.goto :CONTINUE>>"%GBC%\prefxe.ini"

:WRITEINI
echo.:INSTALL>>"%GBC%\injLnch.ini"
echo.call "instExe.bat">>"%GBC%\injLnch.ini"
echo.if "%%CANCL%%"=="1" goto :CONTINUE>>"%GBC%\injLnch.ini"
echo.%%DESTD%%>>"%GBC%\injLnch.ini"
echo.cd "%%DESTNZ%%\%%ROMN%%">>"%GBC%\injLnch.ini"
echo.goto :HOME>>"%GBC%\injLnch.ini"
echo.:IMPORT>>"%GBC%\injLnch.ini"
echo.SET IMPRT=X>>"%GBC%\injLnch.ini"
for %%a in ("%CSTCONS%") do echo.SET CSTCONS=%%~a>>"%GBC%\injLnch.ini"
echo.goto :INSTALL>>"%GBC%\injLnch.ini"
echo.:PLAYNOW>>"%GBC%\injLnch.ini"
echo.SET INSTL=>>"%GBC%\injLnch.ini"
echo.:CONTINUE>>"%GBC%\injLnch.ini"
echo.if "%%IMPRT%%"=="X" exit /b>>"%GBC%\injLnch.ini"
echo.7za.exe x -y "%EMU7Z%" -o"%%CD%%">>"%GBC%\injLnch.ini"
call "%GBC%\specExeEmu.bat">>"%GBC%\logs\specExeEmu.log"
for /f "delims=" %%a in ('type "%GBC%\bioscpy.ini"') do echo.%%~a>>"%GBC%\injLnch.ini"
echo.call "setcfg.bat">>"%GBC%\injLnch.ini"
pushd "%GBC%\net\%EXECT%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/a-d') do (
set CFGFTMP=%%~a
set CFGFTMZ=%%~na
set CFGFTMX=%%~xa
set CFGFTMH=%%~dpa
set CFGFTMZ=%%~dpna
set CFGFTMJ=%%~dpnxa
call :INJALL
)
goto :OUTPUT

:INJALL
for %%a in ("%CFGFTMZ%") do if "%%~xa"==".bin" exit /b
for %%a in ("%CFGFTMZ%") do if "%%~xa"==".rom" exit /b
for %%a in ("%CFGFTMZ%") do if "%%~xa"==".exe" exit /b
for %%a in ("%CFGFTMZ%") do if "%%~xa"==".img" exit /b
set FULLCFG=%GBC%\net\%EXECT%\%CSTCONS%\%CFGFTMP%
if /i "%CFGFTMX%"==".7z" exit /b
if /i "%CFGFTMX%"==".zip" exit /b
if /i "%CFGFTMX%"==".ico" exit /b
if /i "%CFGFTMX%"==".txt" exit /b
if /i "%CFGFTMX%"==".dll" exit /b
if /i "%CFGFTMX%"==".exe" exit /b
if /i "%CFGFTMX%"==".jpg" exit /b
if /i "%CFGFTMX%"==".png" exit /b
if /i "%CFGFTMX%"==".bat" "%GBC%\fart.exe" "%CFGFTMP%" [ROMPTH] "%%CD%%"
if /i "%CFGFTMX%"==".bat" "%GBC%\fart.exe" "%CFGFTMP%" [EMUPTH] "%%CD%%"
if /i "%CFGFTMX%"==".bat" "%GBC%\fart.exe" "%CFGFTMP%" "[DSP]displayswitch /extend" --remove
if /i "%CFGFTMX%"==".bat" "%GBC%\fart.exe" "%CFGFTMP%" "[DSP]displayswitch /internal" --remove
if /i "%CFGFTMX%"==".bat" exit /b
echo.fart.exe "%CFGFTMP%" [ROMPTH] "%%CD%%">>"%GBC%\injLnch.ini"
echo.fart.exe "%CFGFTMP%" [EMUPTH] "%%CD%%">>"%GBC%\injLnch.ini"
exit /b

:OUTPUT
if "%GLBLXE%"=="" "%GBC%\fart.exe" "prefxe.ini" [ROMN] "%ROMN%"
if "%GLBLXE%"=="1" "%GBC%\fart.exe" "prefxe.ini" [ROMN] "%SHRTN%_Multi_Game"
if "%GLBL%"=="" echo.fart.exe "injExeTmpl.bat" [ROMN] "%ROMN%">>"%GBC%\injLnch.ini"
if "%GLBL%"=="1" echo.fart.exe "injExeTmpl.bat" [ROMN] "%SHRTN%_Multi_Game">>"%GBC%\injLnch.ini"
if "%GLBL%"=="" echo.fart.exe "instExe.bat" [ROMN] "%ROMN%">>"%GBC%\injLnch.ini"
if "%GLBL%"=="1" echo.fart.exe "instExe.bat" [ROMN] "%SHRTN%_Multi_Game">>"%GBC%\injLnch.ini"

echo.call "injExeTmpl.bat">>"%GBC%\injLnch.ini"
echo.echo [ON]^>firstrun.ini>>"%GBC%\injLnch.ini"
echo.:create>>"%GBC%\injLnch.ini"
echo.xxmklink.exe "%%CD%%\%%ROMN%%.lnk" "%%CD%%\%%ROMN%%.bat" "" "%%CD%%" GameExecutable 7 "%%CD%%\Folder.ico">>"%GBC%\injLnch.ini"
echo.if "%%DESTNZ%%" NEQ "" xxmklink.exe "%%DESKTOPDIR%%\%%ROMN%%.lnk" "%%DESTNZ%%\%%ROMN%%\%%ROMN%%.bat" "" "%%DESTNZ%%\%%ROMN%%" GameExecutable 7 "%%DESTNZ%%\%%ROMN%%\Folder.ico">>"%GBC%\injLnch.ini"
echo.if "%%INSTL%%"=="1" goto :MKSKT
echo.CALL "%%ROMN%%.bat">>"%GBC%\injLnch.ini"
echo.exit /b>>"%GBC%\injLnch.ini"
echo.:MKSKT>>"%GBC%\injLnch.ini"
echo.xxmklink.exe "%%CD%%\%%ROMN%%.lnk" "%%CD%%\%%ROMN%%.bat" "" "%%CD%%" GameExecutable 7 "%%CD%%\Folder.ico">>"%GBC%\injLnch.ini"
echo.xxmklink.exe "%%DESKTOPDIR%%\%%ROMN%%.lnk" "%%DESTNZ%%\%%ROMN%%\%%ROMN%%.bat" "" "%%DESTNZ%%\%%ROMN%%" GameExecutable 7 "%%DESTNZ%%\%%ROMN%%\Folder.ico">>"%GBC%\injLnch.ini"
pushd "%GBC%\net\%EXECT%\%CSTCONS%"

:BAKRENAME
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%EXECT%\%CSTCONS%"') do (
set GENALL=%%~dpnxa
set GENNAM=%%~nxa
set GENEXT=%%~xa
call :SETCFG
)
goto :ECOUT

:SETXPD
for %%a iN ("%GBC%\net\%XPADR%\%XPADR%.7z") do (
SET XPADPATH=%%~dpa
set XPDEXST=1
"%SEVENZIP%" e -y "%%~dpnxa" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%XPADR%\%XPADR%.exe"
)
for %%a in ("%XPADPATH:~0,-1%") do set XPADP=%%~a
for /f "delims=" %%a in ("%GBC%\net\XPpadCFG") do SET XPADPP=%%~dpnxa
"%SEVENZIP%" e -y "%XPADPP%\XPadCFG.7z" -o"%XPADPP%" "MediaCenter.xpadderprofile" "xbox.bmp" "Joy1.xpaddercontroller" "Joy2.xpaddercontroller" "%XPADR%.ini" "nolayout1.xpadderprofile" "nolayout2.xpadderprofile"
if "%JOYVAL%"=="XPADDER" copy /y "%GBC%\net\%XPROF%\%CSTCONS%\Player*.xpadderprofile" "%GBC%\net\%EXECT%\%CSTCONS%"
if "%JOYVAL%"=="ANTIMIC" copy /y "%GBC%\net\%APROF%\%CSTCONS%\Player*.amgp" "%GBC%\net\%EXECT%\%CSTCONS%"
exit /b

:SETCFG
if "%GENEXT%"==".bat" exit /b
if "%GENEXT%"==".bak" exit /b
rename "%GENALL%" "%GENNAM%.bak"
exit /b

:ECOUT
for /f "delims=" %%a in ('type "%GBC%\prefxe.ini"') do echo.%%~a>>"%GBC%\net\%EXECT%\%CSTCONS%\launch.bat"
for /f "delims=" %%a in ('type "%GBC%\injLnch.ini"') do echo.%%~a>>"%GBC%\net\%EXECT%\%CSTCONS%\launch.bat"
if "%GLBLXE%"=="" copy /y "%GBC%\net\%EXECT%\%CSTCONS%\zz.bat" "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat"
if "%GLBLXE%"=="1" copy /y "%GBC%\net\%EXECT%\%CSTCONS%\zz.bat" "%GBC%\net\%EXECT%\%CSTCONS%\%SHRTN%_Multi_Game.bat"
popd
exit /b

:UNCREATE
%BSTRT% "%WFINS%" "RJ_GUI" "...STOP..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The emulator %CEMU%'s source archive wasn't found." "Download;Quit"
if %ERRORLEVEL%==1 goto :GETEMU
if %ERRORLEVEL%==2 goto :QUITUP
goto :QUITUP

:QUITUP
set EMU7Z=QUIT
exit /b

:GETEMU
set MKEXE=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Compiling Executable" /Marquee
call "%GBC%\getEmulatorsDEPEND.bat"
if "%EMUNOTHERE%" NEQ "1" %BSTRT% "%WFINS%" "RJ_GUI" "Download Complete" /Stop /sound /timeout:1
if "%EMUNOTHERE%"=="1" exit /b
exit /b

:QUITOUT
