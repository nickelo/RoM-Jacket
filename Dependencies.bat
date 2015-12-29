pushd "%GBC%"
:JOYCHK
if exist "%PRGF%\Microsoft Xbox 360 Accessories\XBoxStat.exe" set X360EX=1
if exist "%PRGF%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe" set SCPEX=1
if exist "%PRGF%\MotioninJoy\ds3\DIFxAPI.dll" set PS3EX=1
if exist "%PRGF%\MotioninJoy\Better DS3.exe" set BDS3EX=1
if exist "%PRGF%\DS4Windows\DS4Windows.exe" set BDS3EX=1

if "%XPADDER%" NEQ "[XPD]" set XPDEX=1
if "%ANTMIC%" NEQ "[AMC]" set AMCEX=1

if exist "%GBE%\%EMUZ%\Microsoft Xbox 360 Accessories\XBoxStat.exe" set X360EX=1
if exist "%GBE%\%EMUZ%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe" set SCPEX=1
if exist "%GBE%\%EMUZ%\MotioninJoy\ds3\DIFxAPI.dll" set PS3EX=1
if exist "%GBE%\%EMUZ%\MotioninJoy\Better DS3.exe" set BDS3EX=1
if exist "%GBE%\%EMUZ%\DS4Windows\DS4Windows.exe" set BDS3EX=1
if exist "%GBE%\%EMUZ%\Better DS3\Better DS3.exe" set BDS3EX=1
for %%a in ("---------------------DEPENDENCIES------------------------") do echo.%%~a>"DepSelect.ini"
REM for %%a in ("---------------------------------------------------------") do echo.%%~a>>"DepSelect.ini"
REM for %%a in ("ALL DEPENDENCIES") do echo.%%~a>>"DepSelect.ini"
REM for %%a in ("---------------------------------------------------------") do echo.%%~a>>"DepSelect.ini"

for %%a in ("DirectX") do echo.%%~a>>"DepSelect.ini"
for %%a in ("Visual Basic Runtimes") do echo.%%~a>>"DepSelect.ini"
if "%ARPOP%"=="32" goto :INSERTJOY
for %%a in ("---------------------------------------------------------") do echo.%%~a>>"DepSelect.ini"

:INSERTJOY
for %%a in ("-----------------------JOYSTICK--------------------------") do echo.%%~a>>"DepSelect.ini"
for %%a in ("XPadder") do echo.%%~a>>"DepSelect.ini"
for %%a in ("antiMicro") do echo.%%~a>>"DepSelect.ini"
if "%WINVER%"=="8" goto :SCPLST
if "%WINVER%"=="8.1" goto :SCPLST
if "%WINVER%"=="10" goto :SCPLST
for %%a in ("XBox360 Controller Drivers") do echo.%%~a>>"DepSelect.ini"
:SCPLST
for %%a in ("SCP Wrapper (PS3 Sixaxis)") do echo.%%~a>>"DepSelect.ini"
for %%a in ("Better DS3 (PS3 Sixaxis)") do echo.%%~a>>"DepSelect.ini"
for %%a in ("DS4Windows (PS4 Sixaxis)") do echo.%%~a>>"DepSelect.ini"
for %%a in ("x360ce") do echo.%%~a>>"DepSelect.ini"
for %%a in ("---------------------------------------------------------") do echo.%%~a>>"DepSelect.ini"
for %%a in ("---------------------DRIVE EMULATION------------------------") do echo.%%~a>>"DepSelect.ini"
for %%a in ("DaemonTools") do echo.%%~a>>"DepSelect.ini"
for %%a in ("---------------------------------------------------------") do echo.%%~a>>"DepSelect.ini"

:DEPENDSEL
SET DEPALL=
:DEPCHOICE
"%GBC%\Wselect.exe" "%GBC%\DepSelect.ini" "Select the software to install" "set DEPSEL=$item" > "%GBC%\depSel.cmd"
if %errorlevel%==0 exit /b
CALL "%GBC%\depSel.cmd"

if "%DEPSEL%"=="" goto :DEPCHOICE
if "%DEPSEL%"=="-----------------------JOYSTICK--------------------------" goto :DEPCHOICE
if "%DEPSEL%"=="---------------------DEPENDENCIES------------------------" goto :DEPCHOICE
if "%DEPSEL%"=="---------------------DRIVE EMULATION------------------------" goto :DEPCHOICE
if "%DEPSEL%"=="---------------------------------------------------------" goto :DEPCHOICE
if "%DEPSEL%"=="ALL DEPENDENCIES" set DEPALL=1
if "%DEPSEL%"=="Visual Basic Runtimes" goto :VBRUN
if "%DEPSEL%"=="DirectX" goto :D3DX9CHK
if "%DEPSEL%"=="DaemonTools" goto :DaemonTools
if "%DEPSEL%"=="XBox360 Controller Drivers" goto :xbjoyinst
if "%DEPSEL%"=="SCP Wrapper (PS3 Sixaxis)" goto :SCPCHK
if "%DEPSEL%"=="DS4Windows (PS4 Sixaxis)" goto :DS4CHK
if "%DEPSEL%"=="MotioninJoy (PS3 Sixaxis)" goto :PS3CHK
if "%DEPSEL%"=="x360ce" goto :F360
if "%DEPSEL%"=="XPadder" goto :XPDDR
if "%DEPSEL%"=="antiMicro" goto :AMICRO
if "%DEPSEL%"=="Better DS3 (PS3 Sixaxis)" goto :BETTERDS3
if "%DEPSEL%"=="dotNet" goto :DOTNET
if "%DEPSEL%"=="Microsoft Visual C++ 2005" goto :VC2K5CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2008" goto :VC2K8CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2010" goto :VC2K10CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2012" goto :VC2K12CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2013" goto :VC2K13CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2008 x64" goto :VC2K8X64CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2012 x64" goto :VC2K12X64CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2013 x64" goto :VC2K13X64CHK
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Dependencies"  /marquee

:DEPALL
:D3DX9CHK
if "%DEPSEL%" NEQ "ALL DEPENDENCIES" %BSTRT% "%WBUSY%" "RJ_GUI" "Installing Dependencies"  /marquee
set CEMU=%DXWS%
SET EMUNUM=78
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu.log"

:DXWSCONT
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Direct-X^This may take several minutes."  /marquee
mkdir "%GBC%\net\%DXWS%"
%WSTRT% "%ARIA2C%" --connect-timeout=10 --split=1 --file-allocation=none --conditional-get=true --dir="%GBC%\net\%DXWS%" "%MIR7%/%DXWSURL%"
for /f "delims=" %%A in ('dir /b /a-d /s "%GBC%\net\%DXWS%\*.7z"') do set DXWSVZ=%%~A
"%SEVENZIP%" x -y "%DXWSVZ%" -o"%GBC%\net\%DXWS%"
for /f "delims=" %%A in ('dir /b /a-d /s "%GBC%\net\%DXWS%\*.exe"') do set DXWSXE=%%~A
if "%DXWSXE%"=="" goto :DEPENDSEL

:INSTALLD3D
start /w "" "%DXWSXE%" /Q
if "%DEPSEL%" NEQ "ALL DEPENDENCIES" %BSTRT% "%WFINS%" "RJ_GUI" "Dependency Installed" /Stop /timeout:1

if "%DEPSEL%" NEQ "ALL DEPENDENCIES" goto :DEPENDSEL

:VBRUN
set CEMU=vcrs
set EMUNUM=123
call "%GBC%\getemu.bat">>"%GBC%\logs\getemu.log"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Dependencies"  /marquee
for /f "delims=" %%A in ('dir /b /a-d /s "%GBC%\net\vcrs\*.7z"') do (
set VCRZ=%%~A
set VCRNZ=%%~nxA
)
if "%VCRNZ%"=="" goto :NOVBRUN

"%SEVENZIP%" x -y "%VCRZ%" -o"%GBC%\net\vcrs"
for /f "delims=" %%A in ('dir /b /a-d "%GBC%\net\vcrs\*.exe"') do set VCRSXE=%%~A
"%GBC%\net\vcrs\%VCRSXE%" /ai /y
%BSTRT% "%WFINS%" "RJ_GUI" "Dependencies Installed" /Stop /timeout:1
if "%DEPALL%"=="" goto :DEPENDSEL
 
:NOVBRUN
%BSTRT% "%WFINS%" "RJ_GUI" "Visual Basic Runtimes installer has not been found" /Stop /timeout:1
goto :DEPENDSEL

:DaemonTools
:DAMTG
if "%DAMVAR%"=="" goto :continue_DaemonT
if "%DAMVAR%"=="[DAM]" goto :continue_DaemonT
if "%DAMVAR%"=="DISABLED" (set DAMTG=Enable) ELSE (set DAMTG=Disable)
"%GBC%\wbox.exe" "RJ_GUI" "would you like to %DAMTG% Daemontools?" "Install;%DAMTG%" /DB=2 
if %ERRORLEVEL%==1 goto :locate_dt
if %ERRORLEVEL%==2 goto :%DAMTG%_daemontools
goto :DEPENDSEL

:Eno_daemonT
%BSTRT% "%WFINS%" "RJ_GUI" "DaemonTools installer has not been found" /Stop /timeout:1

:no_daemonT
"%GBC%\wbox.exe" "RJ_GUI" "^^DeaemonTools will not be configured.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :setnoDT
goto :DEPENDSEL

:Disable_daemontools
:setnoDT
set GBT=0
set DAMVAR=DISABLED
for %%A in ("Daemon Tools is Disabled^") do set MARKDMT=%%~A
call "%GBC%\setlocset.bat"
goto :DEPENDSEL

:Enable_daemontools
:setnoDT
set GBT=1
set DAMVAR=
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
goto :setup_daemT

:continue_DaemonT
%GBD%
cd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Daemon Tools"  /marquee
CALL "%GBC%\getDaemT.bat"
if "%DAEMNTFILE%"=="" goto :Eno_daemonT
goto :installing_DaemonT

:installing_DaemonT
%BSTRT% "%WFINS%" "RJ_GUI" "Downloaded" /Stop /timeout:1
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%DAEMNT%\*.7z"') do set DAEMNTSZ=%%~a
if "%DAEMNTSZ%"=="" goto :Eno_daemonT
for %%a in ("%GBC%\net\%DAEMNT%\%DAEMNTSZ%") do set DAEMNTSP=%%~a
"%SEVENZIP%" x -y "%DAEMNTSP%" -o"%GBC%\net\%DAEMNT%"
for %%A in ("%GBC%\net\%DAEMNT%\*.exe") do set DAEMNTXE=%%~A

for /f "delims=" %%a in ('dir /b "%DAEMNTXE%"') do set DAEMNTFILE=%%~nxa
"%GBC%\wbox.exe" "RJ_GUI" "^^Choose the location you wish to install Daemon Tools to.^^eg: %PRGF% ^^^Be Patient. A confirmation dialoge box will appear after Daemon Tools has been installed.^^" "Okay" /BW=245  /TM=5
if %ERRORLEVEL%==1 (goto :selectdto)

:selectdto
set _damtmp=
for /f "delims=" %%a in ('Wfolder.exe "SET _damtmp=" "%EMUZ%" "Install DaemonTools to:?  eg:''%PRGX%''" /noquote') do %%a
if "%_damtmp%"=="" goto :no_daemonT
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing Daemon Tools"  /marquee
%LAUNCH% "%GBC%\net\%DAEMNT%\%DAEMNTFILE%" /S /nogadget /notoolbar /sptd /D="%_damtmp%"
REM HKEY_USERS\S-1-5-21-1871455176-3318763116-1629967032-1000\Software\Disc Soft\DAEMON Tools Pro\Config
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Config" /f /v "Automount" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Config" /f /v "Autostart" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Config" /f /v "CheckForUpdate" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Config" /f /v "SendStatistic" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Config" /f /v "UpdateCheckCounter" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Config" /f /v "UseTrayAgent" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\GuiNamespace" /f /v "AskDeleteICItem" /t REG_DWORD /d "1"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\GuiNamespace" /f /v "AskImageInUse" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\GuiNamespace" /f /v "AskRemoveVD" /t REG_DWORD /d "0"
REG ADD "HKEY_CURRENT_USER\Software\Disc Soft\DAEMON Tools Pro\Options" /f /v "ManageIsImageInfoEnable" /t REG_DWORD /d "0"
for %%A in ("%_damtmp%\Daemon Tools Lite\DTLite.exe") do set DAMVAR=%%~A
call "%GBC%\setlocset.bat"
%BSTRT% "%WFINS%" "RJ_GUI" "Daemon Tools has been installed to^%DAMVAR%\Daemon Tools Lite\Dlite.exe" /Stop /timeout:1
goto :DEPENDSEL

:setup_daemT
if "%DAMVAR%"=="DISABLED" goto :DEPENDSEL
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" goto :DTsetPro
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" goto :DTsetDefault
goto :locate_dt

:DTsetDefault
for %%A in ("%PRGX%\DAEMON Tools Lite\DTlite.exe") do set DAMVAR=%%~A
goto :DEPENDSEL

:DTsetPro
for %%A in ("%PRGX%\DAEMON Tools Pro\DTAgent.exe") do set DAMVAR=%%~A
goto :DEPENDSEL

:locate_dt
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the daemon tools application or click download to download and install it.^^" "Locate;Download;Cancel" /DB=2 /BW=150
if %ERRORLEVEL%==1 goto :selectdt
if %ERRORLEVEL%==2 goto :continue_DaemonT
if %ERRORLEVEL%==3 goto :no_daemonT

:selectdt
for /f "delims=" %%a in ('Wfile.exe "SET DAMVAR=" "%PRGX%\Daemon Tools Lite\d*.exe" "Where is the DaemonTools application?" /noquote') do %%a
if "%DAMVAR%"=="[DAM]" goto :inst_daemonT
IF "%DAMVAR%"=="" goto :inst_daemonT
goto :DEPENDSEL

:inst_daemonT
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to install daemonTools?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :no_daemonT
goto :DEPENDSEL

:XPDDR
call "%GBC%\getXpadapp.bat">>"%GBC%\logs\getXpadapp.log"
goto :DEPENDSEL

:AMICRO
call "%GBC%\getamicroapp.bat">>"%GBC%\logs\getamicroapp.log"
goto :DEPENDSEL


:Library_Check_Complete
if "%DEPSEL%" NEQ "ALL DEPENDENCIES" goto :DEPENDSEL
if "%DEPSEL%"=="ALL DEPENDENCIES" %BSTRT% "%WFINS%" "RJ_GUI" "Dependencies Installed" /Stop /timeout:1
exit /b
:xbjoyinst
if "%WINVER%" NEQ "7" goto :DEPENDSEL
if "%X360EX%"=="1" goto :reinstxbx
goto :get_XBJOY

:reinstxbx
"%GBC%\wbox.exe" "RJ_GUI" "Drivers appeared to be installed.^Reinstall Drivers for XBOX360 Joysticks?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_XBJOY
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_XBJOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing XBox 360 Drivers"  /marquee
if "%ARPOP%"=="64" SET RLARCH=64
if "%ARPOP%"=="64" goto :xbjoyGET

:xbjoytst
set urlNthL=2
set rlnoyURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\ARCH.ini" /L:%urlNthL%') do set rlnoyURL=%%~a


:rlnoyCONT
if "%rlnoyURL%"=="" set RLARCH=32
if "%rlnoyURL%"=="64" set RLARCH=64

:xbjoyGET
set urlNthL=57
set xbjoyURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set xbjoyURL=%%~a



:xbjoyCONT
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XBJOY%" "%MIR1%/%xbjoyURL%" "%MIR2%/%xbjoyURL%" "%MIR3%/%xbjoyURL%" "%MIR4%/%xbjoyURL%" "%MIR5%/%xbjoyURL%"
for %%A in ("%GBC%\net\%XBJOY%\*%RLARCH%Eng.exe") do set XBJOYXE=%%~A
for /f "delims=" %%a in ('dir /b "%XBJOYXE%"') do set XBJOYFILE=%%~a
if exist "%GBC%\net\%XBJOY%\%XBJOYFILE%" goto :instxbjoy
if "%XBJOYFILE%"=="" goto :noxbjoy
for /f "delims=" %%a in ('dir /b "%XBJOYXE%"') do set XBJOYFILE=%%~a

:instxbjoy
%LAUNCH% "%GBC%\net\%XBJOY%\%XBJOYFILE%" /q:a
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
goto :JOYCHK

:noxbjoy
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The Xbox360 Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_XBJOY
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:PS3CHK
if "%PS3EX%"=="1" goto :reinstps3
:PS3Joyinst
goto :get_PS3JOY

:reinstps3
"%GBC%\wbox.exe" "RJ_GUI" "Drivers appeared to be installed.^Reinstall Drivers for PS3 Joysticks?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_PS3JOY
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_PS3JOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing PS3 MotionInJoy Drivers"  /marquee
set urlNthL=111
set PS3JoyURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set PS3JoyURL=%%~a


:PS3JoyCONT
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%PS3JOY%" "%MIR1%/%PS3JoyURL%" "%MIR2%/%PS3JoyURL%" "%MIR3%/%PS3JoyURL%" "%MIR4%/%PS3JoyURL%" "%MIR5%/%PS3JoyURL%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\%PS3JOY%\*.zip"') do set PS3JOYXE=%%~A
if "%PS3JOYXE%"=="" goto :noPS3Joy
"%SEVENZIP%" x -y "%GBC%\net\%PS3JOY%\%PS3JOYXE%" -o"%GBC%\net\%PS3JOY%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\%PS3JOY%\*.exe"') do set PS3JOYI=%%~A
if "%PS3JOYI%"=="" goto :noPS3Joy


:instPS3Joy
%LAUNCH% "%GBC%\net\%PS3JOY%\%PS3JOYI%" /silent
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing PS3 MotionInJoy Drivers"  /marquee
set urlNthL=76
set PS3Joy2URL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set PS3Joy2URL=%%~a

:PS3Joy2CONT
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%PS3JOY%" "%MIR1%/%PS3Joy2URL%" "%MIR2%/%PS3Joy2URL%" "%MIR3%/%PS3Joy2URL%" "%MIR4%/%PS3Joy2URL%" "%MIR5%/%PS3Joy2URL%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\%PS3JOY%\*.7z"') do set PS3JOY2XE=%%~A
if "%PS3JOY2XE%"=="" goto :noPS3Joy
"%GBC%\Wfolder.exe" "SET MIJINST=" "%GBE%\%EMUZ%\MotionInJoy\ds3" "Install MotionInJoy to:" /noquote > "%GBC%\mijinst.cmd"
call "%GBC%\mijinst.cmd"
if "%MIJINST%"=="" goto :quitjoy
"%SEVENZIP%" x -y "%GBC%\net\%PS3JOY%\%PS3JOY2XE%" -o"%MIJINST%"
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
goto :JOYCHK

:noPS3Joy
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The PS3 Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_PS3JOY
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:BETTERDS3
if "%BDS3EX%"=="1" goto :reinstds
"%GBC%\wbox.exe" "RJ_GUI" "Install Better DS3 Program for MotioninJoy Drivers?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_BETDS
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_BETDS
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing Better DS3."  /marquee
set urlNthL=119
set BETDSURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set BETDSURL=%%~a

:BDS3install
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%BETDS%" "%MIR1%/%BETDSURL%" "%MIR2%/%BETDSURL%" "%MIR3%/%BETDSURL%" "%MIR4%/%BETDSURL%" "%MIR5%/%BETDSURL%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\%BETDS%\*.7z"') do set BETDSXE=%%~A
for /f "delims=" %%a in ('dir /b "%GBC%\net\%BETDS%\%BETDSXE%"') do set BETDSFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%BETDS%\%BETDSFILE%" -o"%GBC%\net\%BETDS%"
for /f "delims=" %%a in ('dir /b "%GBC%\net\%BETDS%\%BETDSI%"') do set BETDSIFILE=%%~a
if exist "%GBC%\net\%BETDS%\%BETDSIFILE%" goto :instBETDS
if "%BETDSIFILE%"=="" goto :noBETDS
"%GBC%\Wfolder.exe" "SET BDS3INST=" "%GBE%\%EMUZ%\MotioninJoy" "Install Better DS3 to:" /noquote > "%GBC%\xceinst.cmd"
call "%GBC%\xceinst.cmd"
if "%BDS3INST%"=="" goto :quitjoy
"%SEVENZIP%" x -y "%GBC%\net\%BETDS%\%BETDSFILE%" -o"%BDS3INST%"
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
goto :JOYCHK

:noBETDS
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The Better DS3 Program could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_BETDS
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:reinstds
"%GBC%\wbox.exe" "RJ_GUI" "The Better DS3 program appears to be installed.^Would you like to reinstall it?" "Yes;No" /TM=2
if %ERRORLEVEL%==1 goto :get_BDS3
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:DS4CHK
"%GBC%\wbox.exe" "RJ_GUI" "Install DS4Windows Program for Dualshock 4 Joysticks?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_DS4WIN
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_DS4WIN
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing DS4Windows."  /marquee
set urlNthL=125
set DS4WINURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set DS4WINURL=%%~a

:DS4Winstall
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%DS4WIN%" "%MIR1%/%DS4WINURL%" "%MIR2%/%DS4WINURL%" "%MIR3%/%DS4WINURL%" "%MIR4%/%DS4WINURL%" "%MIR5%/%DS4WINURL%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\%DS4WIN%\*.7z"') do set DS4WINXE=%%~A
if not exist "%GBC%\net\%DS4WIN%\%DS4WINXE%" goto :noDS4WIN
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%DS4WIN%\%DS4WINXE%"') do set DS4WINFILE=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%DS4WIN%\%DS4WINXE%"') do set DS4WINIFILE=%%~a
if exist "%GBC%\net\%DS4WIN%\%DS4WINIFILE%" goto :instDS4WIN	
if "%DS4WINIFILE%"=="" goto :noDS4WIN

:instDS4WIN
%BSTRT% "%WFINS%" "RJ_GUI" "Complete /Stop /timeout:1
"%GBC%\Wfolder.exe" "SET DS4WINST=" "%GBE%\%EMUZ%\%DS4WIN%" "Install DS4Windows to:" /noquote > "%GBC%\bds4inst.cmd"
call "%GBC%\bds4inst.cmd"
if "%DS4WINST%"=="" goto :quitjoy
"%SEVENZIP%" x -y "%GBC%\net\%DS4WIN%\%DS4WINFILE%" -o"%DS4WINST%\%DS4WIN%"
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
goto :JOYCHK

:noDS4WIN
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The DS4Windows download could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_DS4WIN
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:reinstds
"%GBC%\wbox.exe" "RJ_GUI" "The DS4Windows driver appears to be installed.^Would you like to reinstall it?" "Yes;No" /TM=2
if %ERRORLEVEL%==1 goto :get_DS4WIN
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:SCPCHK
if "%SCPEX%"=="1" goto :reinstscp
:SCPJoyinst
goto :get_SCPJOY

:reinstscp
"%GBC%\wbox.exe" "RJ_GUI" "Drivers appeared to be installed.^Reinstall Drivers for SCP Wrapper?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_SCPJOY
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_SCPJOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading SCP Wrapper for Dualshock joysticks"  /marquee
set urlNthL=110
set SCPJoyURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set SCPJoyURL=%%~a


:SCPJoyCONT
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\SCP" "%MIR1%/%SCPJoyURL%" "%MIR2%/%SCPJoyURL%" "%MIR3%/%SCPJoyURL%" "%MIR4%/%SCPJoyURL%" "%MIR5%/%SCPJoyURL%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\SCP\*.7z"') do set SCPJOYXE=%%~A
if "%SCPJOYXE%"=="" goto :noSCPJoy
for /f "delims=" %%a in ('dir /b "%GBC%\net\SCP\%SCPJOYXE%"') do set SCPJOYFILE=%%~nxa
goto :instSCPJoy


:instSCPJoy
%BSTRT% "%WFINS%" "RJ_GUI" "Downloaded" /Stop /timeout:2
for /f "delims=" %%a in ('Wfolder.exe "SET SCPDEST=" "%GBE%\%EMUZ%" "Select the SCP Wrapper destination" /noquote') do %%a
if "%SCPDEST%"=="" goto :quitjoy
set SCPEX=1
"%SEVENZIP%" x -y "%GBC%\net\SCP\%SCPJOYFILE%" -o"%SCPDEST%"

"%GBC%\wbox.exe" "RJ_GUI" "Install the SCP Wrapper Service" "YES;No" /DB=1
if %ERRORLEVEL%==1 goto :INSTSCP
if %ERRORLEVEL%==2 goto :JOYCHK
goto :JOYCHK

:INSTSCP
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing SCP Wrapper for Dualshock joysticks"  /marquee
"%SEVENZIP%" x -y "%GBC%\net\SCP\%SCPJOYFILE%" -o"%SCPDEST%"
start "" "%SCPDEST%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe"
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
goto :JOYCHK

:noSCPJoy
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The SCP Wrapper could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_SCPJOY
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:F360
if "%XBCEEX%"=="1" goto :reinstxce
"%GBC%\wbox.exe" "RJ_GUI" "Install x360CE Drivers for XBox 360 Controller Emulation?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_XBCE
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_XBCE
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing x360ce Drivers."  /marquee
set urlNthL=95
set XBCEURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set XBCEURL=%%~a


:XCEinstall
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XBCE%" "%MIR1%/%XBCEURL%" "%MIR2%/%XBCEURL%" "%MIR3%/%XBCEURL%" "%MIR4%/%XBCEURL%" "%MIR5%/%XBCEURL%"
for /f "delims=" %%A in ('dir /b/a-d-h "%GBC%\net\%XBCE%\*.7z"') do set XBCEXE=%%~A
for /f "delims=" %%a in ('dir /b "%GBC%\net\%XBCE%\%XBCEXE%"') do set XBCEFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%XBCE%\%XBCEFILE%" -o"%GBC%\net\%XBCE%"
for /f "delims=" %%a in ('dir /b "%GBC%\net\%XBCE%\%XBCEI%"') do set XBCEIFILE=%%~a
if exist "%GBC%\net\%XBCE%\%XBCEIFILE%" goto :instXBCE
if "%XBCEIFILE%"=="" goto :noXBCE
"%GBC%\Wfolder.exe" "SET XCEINST=" "%GBE%\%EMUZ%" "Install x360ce Driver to:" /noquote > "%GBC%\xceinst.cmd"
call "%GBC%\xceinst.cmd"
if "%XCEINST%"=="" goto :quitjoy
"%SEVENZIP%" x -y "%GBC%\net\%XBCE%\%XBCEFILE%" -o"%XCEINST%\%XBCE%"
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
goto :JOYCHK

:noXBCE
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The x360ce Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_XBCE
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:reinstxce
"%GBC%\wbox.exe" "RJ_GUI" "The x360ce driver appears to be installed.^Would you like to reinstall it?" "Yes;No" /TM=2
if %ERRORLEVEL%==1 goto :get_XCE
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:quitjoy
