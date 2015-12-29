pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :SIMCJOY
if %ERRORLEVEL%==2 goto :SIMCOTH
goto :QUITOUT
:SIMCOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\SimCoupe.cfg" "Select Configured SimCoupe.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
if "%%~a"=="CfgVersion" set CfgVersion=%%~b
if "%%~a"=="FirstRun" set FirstRun=%%~b
if "%%~a"=="Sync" set Sync=%%~b
if "%%~a"=="FrameSkip" set FrameSkip=%%~b
if "%%~a"=="Scale" set Scale=%%~b
if "%%~a"=="Ratio5_4" set Ratio5_4=%%~b
if "%%~a"=="Scanlines" set Scanlines=%%~b
if "%%~a"=="ScanLevel" set ScanLevel=%%~b
if "%%~a"=="Mode3" set Mode3=%%~b
if "%%~a"=="Fullscreen" set Fullscreen=%%~b
if "%%~a"=="Depth" set Depth=%%~b
if "%%~a"=="Borders" set Borders=%%~b
if "%%~a"=="StretchToFit" set StretchToFit=%%~b
if "%%~a"=="Overlay" set Overlay=%%~b
if "%%~a"=="HWAccel" set HWAccel=%%~b
if "%%~a"=="Greyscale" set Greyscale=%%~b
if "%%~a"=="Filter" set Filter=%%~b
if "%%~a"=="HDBootRom" set HDBootRom=%%~b
if "%%~a"=="FastReset" set FastReset=%%~b
if "%%~a"=="AsicDelay" set AsicDelay=%%~b
if "%%~a"=="MainMemory" set MainMemory=%%~b
if "%%~a"=="ExternalMem" set ExternalMem=%%~b
if "%%~a"=="Drive1" set Drive1=%%~b
if "%%~a"=="Drive2" set Drive2=%%~b
if "%%~a"=="TurboLoad" set TurboLoad=%%~b
if "%%~a"=="SavePrompt" set SavePrompt=%%~b
if "%%~a"=="AutoBoot" set AutoBoot=%%~b
if "%%~a"=="DosBoot" set DosBoot=%%~b
if "%%~a"=="DosDisk" set DosDisk=%%~b
if "%%~a"=="StdFloppy" set StdFloppy=%%~b
if "%%~a"=="KeyMapping" set KeyMapping=%%~b
if "%%~a"=="AltForCntrl" set AltForCntrl=%%~b
if "%%~a"=="AltGrForEdit" set AltGrForEdit=%%~b
if "%%~a"=="KeypadReset" set KeypadReset=%%~b
if "%%~a"=="SAMFKeys" set SAMFKeys=%%~b
if "%%~a"=="Mouse" set Mouse=%%~b
if "%%~a"=="MouseEsc" set MouseEsc=%%~b
if "%%~a"=="Swap23" set Swap23=%%~b
if "%%~a"=="DeadZone1" set DeadZone1=%%~b
if "%%~a"=="DeadZone2" set DeadZone2=%%~b
if "%%~a"=="Parallel1" set Parallel1=%%~b
if "%%~a"=="Parallel2" set Parallel2=%%~b
if "%%~a"=="PrinterDev" set PrinterDev=%%~b
if "%%~a"=="PrinterOnline" set PrinterOnline=%%~b
if "%%~a"=="FlushDelay" set FlushDelay=%%~b
if "%%~a"=="SerialDev1" set SerialDev1=%%~b
if "%%~a"=="SerialDev2" set SerialDev2=%%~b
if "%%~a"=="Midi0" set Midi0=%%~b
if "%%~a"=="MidiInDev" set MidiInDev=%%~b
if "%%~a"=="MidiOutDev" set MidiOutDev=%%~b
if "%%~a"=="SambusClock" set SambusClock=%%~b
if "%%~a"=="DallasClock" set DallasClock=%%~b
if "%%~a"=="ClockSync" set ClockSync=%%~b
if "%%~a"=="Sound" set Sound=%%~b
if "%%~a"=="SAASound" set SAASound=%%~b
if "%%~a"=="Beeper" set Beeper=%%~b
if "%%~a"=="Stereo" set Stereo=%%~b
if "%%~a"=="Latency" set Latency=%%~b
if "%%~a"=="DriveLights" set DriveLights=%%~b
if "%%~a"=="Profile" set Profile=%%~b
if "%%~a"=="Status" set Status=%%~b
if "%%~a"=="PauseInactive" set PauseInactive=%%~b
if "%%~a"=="FnKeys" set FnKeys=%%~b
if "%%~a"=="KeyMap" set KeyMap=%%~b
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% System settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*SimCoupe.cfg"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:INJTARGET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "CfgVersion=4" "[Settings]"
popd
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "CfgVersion=4"
popd
inifile.exe "%NEWCONF%" [Settings] FirstRun=%FirstRun%
inifile.exe "%NEWCONF%" [Settings] Sync=%Sync%
inifile.exe "%NEWCONF%" [Settings] FrameSkip=%FrameSkip%
inifile.exe "%NEWCONF%" [Settings] Scale=%Scale%
inifile.exe "%NEWCONF%" [Settings] Ratio5_4=%Ratio5_4%
inifile.exe "%NEWCONF%" [Settings] Scanlines=%Scanlines%
inifile.exe "%NEWCONF%" [Settings] ScanLevel=%ScanLevel%
inifile.exe "%NEWCONF%" [Settings] Mode3=%Mode3%
inifile.exe "%NEWCONF%" [Settings] Fullscreen=%Fullscreen%
inifile.exe "%NEWCONF%" [Settings] Depth=%Depth%
inifile.exe "%NEWCONF%" [Settings] Borders=%Borders%
inifile.exe "%NEWCONF%" [Settings] StretchToFit=%StretchToFit%
inifile.exe "%NEWCONF%" [Settings] Overlay=%Overlay%
inifile.exe "%NEWCONF%" [Settings] HWAccel=%HWAccel%
inifile.exe "%NEWCONF%" [Settings] Greyscale=%Greyscale%
inifile.exe "%NEWCONF%" [Settings] Filter=%Filter%
inifile.exe "%NEWCONF%" [Settings] HDBootRom=%HDBootRom%
inifile.exe "%NEWCONF%" [Settings] FastReset=%FastReset%
inifile.exe "%NEWCONF%" [Settings] AsicDelay=%AsicDelay%
inifile.exe "%NEWCONF%" [Settings] MainMemory=%MainMemory%
inifile.exe "%NEWCONF%" [Settings] ExternalMem=%ExternalMem%
inifile.exe "%NEWCONF%" [Settings] Drive1=%Drive1%
inifile.exe "%NEWCONF%" [Settings] Drive2=%Drive2%
inifile.exe "%NEWCONF%" [Settings] TurboLoad=%TurboLoad%
inifile.exe "%NEWCONF%" [Settings] SavePrompt=%SavePrompt%
inifile.exe "%NEWCONF%" [Settings] AutoBoot=%AutoBoot%
inifile.exe "%NEWCONF%" [Settings] DosBoot=%DosBoot%
inifile.exe "%NEWCONF%" [Settings] DosDisk=%DosDisk%
inifile.exe "%NEWCONF%" [Settings] StdFloppy=%StdFloppy%
inifile.exe "%NEWCONF%" [Settings] KeyMapping=%KeyMapping%
inifile.exe "%NEWCONF%" [Settings] AltForCntrl=%AltForCntrl%
inifile.exe "%NEWCONF%" [Settings] AltGrForEdit=%AltGrForEdit%
inifile.exe "%NEWCONF%" [Settings] KeypadReset=%KeypadReset%
inifile.exe "%NEWCONF%" [Settings] SAMFKeys=%SAMFKeys%
inifile.exe "%NEWCONF%" [Settings] Mouse=%Mouse%
inifile.exe "%NEWCONF%" [Settings] MouseEsc=%MouseEsc%
inifile.exe "%NEWCONF%" [Settings] Swap23=%Swap23%
inifile.exe "%NEWCONF%" [Settings] DeadZone1=%DeadZone1%
inifile.exe "%NEWCONF%" [Settings] DeadZone2=%DeadZone2%
inifile.exe "%NEWCONF%" [Settings] Parallel1=%Parallel1%
inifile.exe "%NEWCONF%" [Settings] Parallel2=%Parallel2%
inifile.exe "%NEWCONF%" [Settings] PrinterDev=%PrinterDev%
inifile.exe "%NEWCONF%" [Settings] PrinterOnline=%PrinterOnline%
inifile.exe "%NEWCONF%" [Settings] FlushDelay=%FlushDelay%
inifile.exe "%NEWCONF%" [Settings] SerialDev1=%SerialDev1%
inifile.exe "%NEWCONF%" [Settings] SerialDev2=%SerialDev2%
inifile.exe "%NEWCONF%" [Settings] Midi0=%Midi0%
inifile.exe "%NEWCONF%" [Settings] MidiInDev=%MidiInDev%
inifile.exe "%NEWCONF%" [Settings] MidiOutDev=%MidiOutDev%
inifile.exe "%NEWCONF%" [Settings] SambusClock=%SambusClock%
inifile.exe "%NEWCONF%" [Settings] DallasClock=%DallasClock%
inifile.exe "%NEWCONF%" [Settings] ClockSync=%ClockSync%
inifile.exe "%NEWCONF%" [Settings] Sound=%Sound%
inifile.exe "%NEWCONF%" [Settings] SAASound=%SAASound%
inifile.exe "%NEWCONF%" [Settings] Beeper=%Beeper%
inifile.exe "%NEWCONF%" [Settings] Stereo=%Stereo%
inifile.exe "%NEWCONF%" [Settings] Latency=%Latency%
inifile.exe "%NEWCONF%" [Settings] DriveLights=%DriveLights%
inifile.exe "%NEWCONF%" [Settings] Profile=%Profile%
inifile.exe "%NEWCONF%" [Settings] Status=%Status%
inifile.exe "%NEWCONF%" [Settings] PauseInactive=%PauseInactive%
inifile.exe "%NEWCONF%" [Settings] FnKeys=%FnKeys%
inifile.exe "%NEWCONF%" [Settings] KeyMap=%KeyMap%
exit /b

:SIMJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\SimCoupe.cfg" "Select Configured SimCoupe.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
if "%%~a"=="FnKeys" set FnKeys=%%~b
if "%%~a"=="KeyMap" set KeyMap=%%~b
if "%%~a"=="JoyDev1" set JoyDev1=%%~b
if "%%~a"=="JoyDev2" set JoyDev2=%%~b
)
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating %CSTCONS% Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*SimCoupe.cfg"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "CfgVersion=4" "[Settings]"
popd
inifile.exe "%NEWCONF%" [Settings] ForceCompatibleGFX=%ForceCompatibleGFX%
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "CfgVersion=4"
popd
inifile.exe "%NEWCONF%" [Settings] FnKeys=%FnKeys%
inifile.exe "%NEWCONF%" [Settings] KeyMap=%KeyMap%
inifile.exe "%NEWCONF%" [Settings] JoyDev1=%JoyDev1%
inifile.exe "%NEWCONF%" [Settings] JoyDev2=%JoyDev2%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
