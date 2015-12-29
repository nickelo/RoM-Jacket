:JOYCHK
if exist "%PRGF%\Microsoft Xbox 360 Accessories\XBoxStat.exe" set X360EX=1
if exist "%PRGX%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe" set SCPEX=1
if exist "%PRGF%\Scarlet.Crush Productions\ScpServer\bin\ScpService.exe" set SCPEX=1
if exist "%PRGF%\MotioninJoy\ds3\DIFxAPI.dll" set PS3EX=1
if exist "%PRGF%\MotioninJoy\Better DS3.exe" set BDS3EX=1
if exist "%GBE%\%EMUZ%\BetterDS3\Better DS3.exe" set BDS3EX=1
if "%X360EX%"=="1" for %%a in ("Xbox 360 Joystick Drivers found^") do SET X360DISP=%%~a
if "%SCPEX%"=="1" for %%a in ("SCP Wrapper Service found^") do SET SCPDISP=%%~a
if "%PS3EX%"=="1" for %%a in ("MotioninJoy Drivers found^") do SET MIJDISP=%%~a
if "%BDS3EX%"=="1" for %%a in ("Better DS3 found^") do SET BDS3DISP=%%~a
:XBJOYCHK
if "%XBJSET%"=="1" goto :PS3CHK
"%GBC%\wbox.exe" "RJ_GUI" "^###### JOYSTICK SETTINGS #####^%BDS3DISP%%X360DISP%%SCPDISP%%MIJDISP%^Select your joystick type^### 360 ###^XBox 360 Controller^^### MIJ ###^Motioninjoy Playstion 3 DS driver^^### SCP ###^SCP Wrapper for Playstation DS joysticks^^### Emulate ###^x360ce driver to emulate the XBox 360 Joystick.^^" "360;MIJ;SCP;Emulate;Menu" 
if %ERRORLEVEL%==1 goto :xbjoyinst
if %ERRORLEVEL%==2 goto :PS3CHK
if %ERRORLEVEL%==3 goto :SCPDR
if %ERRORLEVEL%==4 goto :EMULATE
if %ERRORLEVEL%==5 goto :quitjoy
goto :quitjoy

:xbjoyinst
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
pushd "%GBC%"
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
%WSTRT% "%ARIA2C%" -continue=true --dir="%GBC%\net\%XBJOY%" "%MIR1%/%xbjoyURL%" "%MIR2%/%xbjoyURL%" "%MIR3%/%xbjoyURL%" "%MIR4%/%xbjoyURL%" "%MIR5%/%xbjoyURL%"
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

:SCPDR
:SCPCHK
if "%SCPEX%"=="1" goto :reinstscp
:SCPjoyinst
goto :get_SCPJOY
:reinstscp
"%GBC%\wbox.exe" "RJ_GUI" "Drivers appeared to be installed.^Reinstall SCPWrapper for Dualshock joysticks?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_SCPJOY
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy
:get_SCPJOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing Dualshock SCP Wrapper Drivers"  /marquee
pushd "%GBC%"
set urlNthL=110
set SCPJoyURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set SCPJoyURL=%%~a
:SCPJoyCONT
%WSTRT% "%ARIA2C%" -continue=true --dir="%GBC%\net\%SCPJOY%" "%MIR1%/%SCPJoyURL%" "%MIR2%/%SCPJoyURL%" "%MIR3%/%SCPJoyURL%" "%MIR4%/%SCPJoyURL%" "%MIR5%/%SCPJoyURL%"
for %%A in ("%GBC%\net\%SCPJOY%\*.7z") do set SCPJOYXE=%%~A
for /f "delims=" %%a in ('dir /b "%SCPJOYXE%"') do set SCPJOYFILE=%%~a
if exist "%GBC%\net\%SCPJOY%\%SCPJOYIFILE%" goto :instSCPJoy
if "%SCPJOYIFILE%"=="" goto :noSCPJoy

:instSCPJoy
for /f "delims=" %%a in ('Wfolder.exe "SET SCPDEST=" "%PRGX%" "Select the SCP Wrapper destination" /noquote') do %%a
if "%SCPDEST%"=="" goto :quitjoy
"%SEVENZIP%" x -y "%GBC%\net\%SCPJOY%\%SCPJOYFILE%" -o"%SCPDEST%"
set SCPEX=1
goto :JOYCHK

:noSCPJoy
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The SCP Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_SCPJOY
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
pushd "%GBC%"
set urlNthL=76
set PS3JoyURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set PS3JoyURL=%%~a

:PS3JoyCONT
%WSTRT% "%ARIA2C%" -continue=true --dir="%GBC%\net\%PS3JOY%" "%MIR1%/%PS3JoyURL%" "%MIR2%/%PS3JoyURL%" "%MIR3%/%PS3JoyURL%" "%MIR4%/%PS3JoyURL%" "%MIR5%/%PS3JoyURL%"
for %%A in ("%GBC%\net\%PS3JOY%\*.zip") do set PS3JOYXE=%%~A
for /f "delims=" %%a in ('dir /b "%PS3JOYXE%"') do set PS3JOYFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%PS3JOY%\%PS3JOYFILE%" -o"%GBC%\net\%PS3JOY%"
for %%A in ("%GBC%\net\%PS3JOY%\*.exe") do set PS3JOYI=%%~A
for /f "delims=" %%a in ('dir /b "%PS3JOYI%"') do set PS3JOYIFILE=%%~a
if exist "%GBC%\net\%PS3JOY%\%PS3JOYIFILE%" goto :instPS3Joy
if "%PS3JOYIFILE%"=="" goto :noPS3Joy

:instPS3Joy
%LAUNCH% "%GBC%\net\%PS3JOY%\%PS3JOYI%" /silent
%BSTRT% "%WFINS%" "RJ_GUI" "Installed" /Stop /timeout:1
set PS3EX=1
goto :JOYCHK

:noPS3Joy
%BSTRT% "%WFINS%" "RJ_GUI" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "The PS3 Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_PS3JOY
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
pushd "%GBC%"
set urlNthL=95
set XBCEURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set XBCEURL=%%~a

:XCEinstall
%WSTRT% "%ARIA2C%" -continue=true --dir="%GBC%\net\%XBCE%" "%MIR1%/%XBCEURL%" "%MIR2%/%XBCEURL%" "%MIR3%/%XBCEURL%" "%MIR4%/%XBCEURL%" "%MIR5%/%XBCEURL%"
for %%A in ("%GBC%\net\%XBCE%\*.7z") do set XBCEXE=%%~A
for /f "delims=" %%a in ('dir /b "%XBCEXE%"') do set XBCEFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%XBCE%\%XBCEFILE%" -o"%GBC%\net\%XBCE%"
for /f "delims=" %%a in ('dir /b "%XBCEI%"') do set XBCEIFILE=%%~a
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
