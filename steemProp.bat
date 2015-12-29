pushd "%GBC%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%ATST%\steem.ini" "Select Configured steem.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :ATSTJOY
if %ERRORLEVEL%==2 goto :ATSTOTH
goto :QUITOUT
:ATSTJOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Atari ST Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%ATST%\%GAMEDIR%*steem.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [User\Software\virtualdub.org\Altirra\Settings\Input maps]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRANS1
)
exit /b
:TRANS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joysticks] %NEWVAL%=%SCRVAL%
exit /b
:TRANS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 1] %NEWVAL%=%SCRVAL%
exit /b
:TRANS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 2] %NEWVAL%=%SCRVAL%
exit /b
:TRANS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 3] %NEWVAL%=%SCRVAL%
exit /b
:TRANS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 4] %NEWVAL%=%SCRVAL%
exit /b
:TRANS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 5] %NEWVAL%=%SCRVAL%
exit /b
:TRANS7
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 6] %NEWVAL%=%SCRVAL%
exit /b
:TRANS8
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 7] %NEWVAL%=%SCRVAL%
exit /b
:TRANS9
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Joystick 8] %NEWVAL%=%SCRVAL%
exit /b

:ATSTOTH
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Atari ST settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%ATST%\%GAMEDIR%*steem.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET

for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Other] x') do  inifile.exe "%NEWCONF%" [Other] x=%%a

for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Left') do inifile.exe "%NEWCONF%" [Options] Left=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Top') do inifile.exe "%NEWCONF%" [Options] Top=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] FSLeft') do inifile.exe "%NEWCONF%" [Options] FSLeft=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] FSTop') do inifile.exe "%NEWCONF%" [Options] FSTop=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Visible') do inifile.exe "%NEWCONF%" [Options] Visible=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] CPUBoost') do inifile.exe "%NEWCONF%" [Options] CPUBoost=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] AllowTaskSwitch') do inifile.exe "%NEWCONF%" [Options] AllowTaskSwitch=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] PauseWhenInactive') do inifile.exe "%NEWCONF%" [Options] PauseWhenInactive=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] DiskAccessFF') do inifile.exe "%NEWCONF%" [Options] DiskAccessFF=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] AutoLoadSnapShot') do inifile.exe "%NEWCONF%" [Options] AutoLoadSnapShot=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] FrameSkip') do inifile.exe "%NEWCONF%" [Options] FrameSkip=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] DrawFSMode') do inifile.exe "%NEWCONF%" [Options] DrawFSMode=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] ShowToolTips') do inifile.exe "%NEWCONF%" [Options] ShowToolTips=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Brightness') do inifile.exe "%NEWCONF%" [Options] Brightness=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Contrast') do inifile.exe "%NEWCONF%" [Options] Contrast=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] SlowMotionSpeed') do inifile.exe "%NEWCONF%" [Options] SlowMotionSpeed=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Page') do inifile.exe "%NEWCONF%" [Options] Page=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Hz_0_256') do inifile.exe "%NEWCONF%" [Options] Hz_0_256=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TestedHz_0_256') do inifile.exe "%NEWCONF%" [Options] TestedHz_0_256=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Hz_1_256') do inifile.exe "%NEWCONF%" [Options] Hz_1_256=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TestedHz_1_256') do inifile.exe "%NEWCONF%" [Options] TestedHz_1_256=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Hz_2_256') do inifile.exe "%NEWCONF%" [Options] Hz_2_256=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TestedHz_2_256') do inifile.exe "%NEWCONF%" [Options] TestedHz_2_256=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Hz_0') do inifile.exe "%NEWCONF%" [Options] Hz_0=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TestedHz_0') do inifile.exe "%NEWCONF%" [Options] TestedHz_0=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Hz_1') do inifile.exe "%NEWCONF%" [Options] Hz_1=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TestedHz_1') do inifile.exe "%NEWCONF%" [Options] TestedHz_1=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Hz_2') do inifile.exe "%NEWCONF%" [Options] Hz_2=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TestedHz_2') do inifile.exe "%NEWCONF%" [Options] TestedHz_2=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] InterlaceMode') do inifile.exe "%NEWCONF%" [Options] InterlaceMode=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] DoAsyncBlit') do inifile.exe "%NEWCONF%" [Options] DoAsyncBlit=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] Volume') do inifile.exe "%NEWCONF%" [Options] Volume=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] SoundMode') do inifile.exe "%NEWCONF%" [Options] SoundMode=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] LastSoundMode') do inifile.exe "%NEWCONF%" [Options] LastSoundMode=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] SoundLowQuality') do inifile.exe "%NEWCONF%" [Options] SoundLowQuality=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] MaxFastForward') do inifile.exe "%NEWCONF%" [Options] MaxFastForward=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] HighPriority') do inifile.exe "%NEWCONF%" [Options] HighPriority=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] AutoSnapShotName') do inifile.exe "%NEWCONF%" [Options] AutoSnapShotName=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] RunSpeed') do inifile.exe "%NEWCONF%" [Options] RunSpeed=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] ScreenShotFormat') do inifile.exe "%NEWCONF%" [Options] ScreenShotFormat=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] ScreenShotExt') do inifile.exe "%NEWCONF%" [Options] ScreenShotExt=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] ScreenShotFormatOpts') do inifile.exe "%NEWCONF%" [Options] ScreenShotFormatOpts=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] ScreenShotMinSize') do inifile.exe "%NEWCONF%" [Options] ScreenShotMinSize=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] NewMemConf0') do inifile.exe "%NEWCONF%" [Options] NewMemConf0=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] NewMemConf1') do inifile.exe "%NEWCONF%" [Options] NewMemConf1=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] NewMonitorSel') do inifile.exe "%NEWCONF%" [Options] NewMonitorSel=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] NewROMFile') do inifile.exe "%NEWCONF%" [Options] NewROMFile=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TOSSortDescend') do inifile.exe "%NEWCONF%" [Options] TOSSortDescend=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TOSSort') do inifile.exe "%NEWCONF%" [Options] TOSSort=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] StartOnClick') do inifile.exe "%NEWCONF%" [Options] StartOnClick=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDDiskLight') do inifile.exe "%NEWCONF%" [Options] OSDDiskLight=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDPlasma') do inifile.exe "%NEWCONF%" [Options] OSDPlasma=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDSpeed') do inifile.exe "%NEWCONF%" [Options] OSDSpeed=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDIcons') do inifile.exe "%NEWCONF%" [Options] OSDIcons=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDCPU') do inifile.exe "%NEWCONF%" [Options] OSDCPU=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDScroller') do inifile.exe "%NEWCONF%" [Options] OSDScroller=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDDisable') do inifile.exe "%NEWCONF%" [Options] OSDDisable=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OSDOldPos') do inifile.exe "%NEWCONF%" [Options] OSDOldPos=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] StartFullscreen') do inifile.exe "%NEWCONF%" [Options] StartFullscreen=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] SpecificHacks') do inifile.exe "%NEWCONF%" [Options] SpecificHacks=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] CaptureMouse') do inifile.exe "%NEWCONF%" [Options] CaptureMouse=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] HD6301Emu') do inifile.exe "%NEWCONF%" [Options] HD6301Emu=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] StealthMode') do inifile.exe "%NEWCONF%" [Options] StealthMode=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] StType') do inifile.exe "%NEWCONF%" [Options] StType=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OsdDriveInfo') do inifile.exe "%NEWCONF%" [Options] OsdDriveInfo=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] OsdImageName') do inifile.exe "%NEWCONF%" [Options] OsdImageName=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] PastiJustStx') do inifile.exe "%NEWCONF%" [Options] PastiJustStx=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] InterpolatedScanlines') do inifile.exe "%NEWCONF%" [Options] InterpolatedScanlines=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] StatusBar') do inifile.exe "%NEWCONF%" [Options] StatusBar=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] StatusBarGameName') do inifile.exe "%NEWCONF%" [Options] StatusBarGameName=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] WinVSync') do inifile.exe "%NEWCONF%" [Options] WinVSync=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Options] TripleBuffer') do inifile.exe "%NEWCONF%" [Options] TripleBuffer=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] Freq') do inifile.exe "%NEWCONF%" [Sound] Freq=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] Bits') do inifile.exe "%NEWCONF%" [Sound] Bits=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] Channels') do inifile.exe "%NEWCONF%" [Sound] Channels=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] WritePrimary') do inifile.exe "%NEWCONF%" [Sound] WritePrimary=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] TimeMethod') do inifile.exe "%NEWCONF%" [Sound] TimeMethod=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] WriteAhead') do inifile.exe "%NEWCONF%" [Sound] WriteAhead=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] RecordWarnOverwrite') do inifile.exe "%NEWCONF%" [Sound] RecordWarnOverwrite=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] InternalSpeaker') do inifile.exe "%NEWCONF%" [Sound] InternalSpeaker=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] PsgFilter') do inifile.exe "%NEWCONF%" [Sound] PsgFilter=%%~a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Sound] Microwire') do inifile.exe "%NEWCONF%" [Sound] Microwire=%%~a

for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Main]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS1
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Display]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS2
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Pasti]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS3
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [MIDI]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS4
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Machine]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS5
)
for /f "tokens=1,2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Shortcuts]') do (
SET SCRTMP=%%a
SET SCRVAL=%%b
call :TRUNS6
)
exit /b
:TRUNS1
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Main] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS2
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Display] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS3
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Pasti] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS4
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [MIDI] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS5
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Machine] %NEWVAL%=%SCRVAL%
exit /b
:TRUNS6
for %%a in ("%SCRTMP:~4,250%") do set NEWVAL=%%~a
inifile.exe "%NEWCONF%" [Shortcuts] %NEWVAL%=%SCRVAL%
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
