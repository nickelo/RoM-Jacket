pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :BMSXJOY
if %ERRORLEVEL%==2 goto :BMSXOTH
goto :QUITOUT
:BMSXJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\bluemsx.ini" "Select Configured bluemsx.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ('echo "%SOURCECFG%"') do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating BlueMSX System Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*bluemsx.ini"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:INJTARGET
copy /y "%SOURCELOC%blueMSX Default.config" "%NEWLOC%"
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" joystick.POV0isAxes') do inifile.exe "%NEWCONF%" joystick.POV0isAxes=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" joy1.type') do inifile.exe "%NEWCONF%" joy1.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" joy1.autofire') do inifile.exe "%NEWCONF%" joy1.autofire=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" joy2.type') do inifile.exe "%NEWCONF%" joy2.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" joy2.autofire') do inifile.exe "%NEWCONF%" joy2.autofire=%%a
exit /b

:BMSXOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\bluemsx.ini" "Select Configured bluemsx.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ('echo "%SOURCECFG%"') do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating BlueMSX System settings" /marquee
for /f "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*bluemsx.ini"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" settings.language') do inifile.exe "%NEWCONF%" [config] settings.language=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" settings.disableScreensaver') do inifile.exe "%NEWCONF%" [config] settings.disableScreensaver=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" settings.showStatePreview') do inifile.exe "%NEWCONF%" [config] settings.showStatePreview=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" settings.usePngScreenshots') do inifile.exe "%NEWCONF%" [config] settings.usePngScreenshots=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" settings.portable') do inifile.exe "%NEWCONF%" [config] settings.portable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" settings.themeName') do inifile.exe "%NEWCONF%" [config] settings.themeName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.ejectMediaOnExit') do inifile.exe "%NEWCONF%" [config] emulation.ejectMediaOnExit=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.registerFileTypes') do inifile.exe "%NEWCONF%" [config] emulation.registerFileTypes=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.disableWinKeys') do inifile.exe "%NEWCONF%" [config] emulation.disableWinKeys=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.machineName') do inifile.exe "%NEWCONF%" [config] emulation.machineName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.speed') do inifile.exe "%NEWCONF%" [config] emulation.speed=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.syncMethod') do inifile.exe "%NEWCONF%" [config] emulation.syncMethod=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.vdpSyncMode') do inifile.exe "%NEWCONF%" [config] emulation.vdpSyncMode=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.enableFdcTiming') do inifile.exe "%NEWCONF%" [config] emulation.enableFdcTiming=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.frontSwitch') do inifile.exe "%NEWCONF%" [config] emulation.frontSwitch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.pauseSwitch') do inifile.exe "%NEWCONF%" [config] emulation.pauseSwitch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.audioSwitch') do inifile.exe "%NEWCONF%" [config] emulation.audioSwitch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" emulation.priorityBoost') do inifile.exe "%NEWCONF%" [config] emulation.priorityBoost=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.monitorColor') do inifile.exe "%NEWCONF%" [config] video.monitorColor=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.monitorType') do inifile.exe "%NEWCONF%" [config] video.monitorType=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.contrast') do inifile.exe "%NEWCONF%" [config] video.contrast=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.brightness') do inifile.exe "%NEWCONF%" [config] video.brightness=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.saturation') do inifile.exe "%NEWCONF%" [config] video.saturation=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.gamma') do inifile.exe "%NEWCONF%" [config] video.gamma=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.scanlinesEnable') do inifile.exe "%NEWCONF%" [config] video.scanlinesEnable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.scanlinesPct') do inifile.exe "%NEWCONF%" [config] video.scanlinesPct=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.colorSaturationEnable') do inifile.exe "%NEWCONF%" [config] video.colorSaturationEnable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.colorSaturationWidth') do inifile.exe "%NEWCONF%" [config] video.colorSaturationWidth=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.deInterlace') do inifile.exe "%NEWCONF%" [config] video.deInterlace=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.blendFrames') do inifile.exe "%NEWCONF%" [config] video.blendFrames=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.detectActiveMonitor') do inifile.exe "%NEWCONF%" [config] video.detectActiveMonitor=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.horizontalStretch') do inifile.exe "%NEWCONF%" [config] video.horizontalStretch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.verticalStretch') do inifile.exe "%NEWCONF%" [config] video.verticalStretch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.frameSkip') do inifile.exe "%NEWCONF%" [config] video.frameSkip=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.windowSize') do inifile.exe "%NEWCONF%" [config] video.windowSize=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.windowX') do inifile.exe "%NEWCONF%" [config] video.windowX=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.windowY') do inifile.exe "%NEWCONF%" [config] video.windowY=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.fullscreen.width') do inifile.exe "%NEWCONF%" [config] video.fullscreen.width=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.fullscreen.height') do inifile.exe "%NEWCONF%" [config] video.fullscreen.height=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.fullscreen.bitDepth') do inifile.exe "%NEWCONF%" [config] video.fullscreen.bitDepth=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.maximizeIsFullscreen') do inifile.exe "%NEWCONF%" [config] video.maximizeIsFullscreen=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.driver') do inifile.exe "%NEWCONF%" [config] video.driver=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.captureFps') do inifile.exe "%NEWCONF%" [config] video.captureFps=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" video.captureSize') do inifile.exe "%NEWCONF%" [config] video.captureSize=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" videoIn.disabled') do inifile.exe "%NEWCONF%" [config] videoIn.disabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" videoIn.inputIndex') do inifile.exe "%NEWCONF%" [config] videoIn.inputIndex=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" videoIn.inputName') do inifile.exe "%NEWCONF%" [config] videoIn.inputName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.driver') do inifile.exe "%NEWCONF%" [config] sound.driver=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.bufSize') do inifile.exe "%NEWCONF%" [config] sound.bufSize=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.stabilizeDSoundTiming') do inifile.exe "%NEWCONF%" [config] sound.stabilizeDSoundTiming=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.stereo') do inifile.exe "%NEWCONF%" [config] sound.stereo=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.masterVolume') do inifile.exe "%NEWCONF%" [config] sound.masterVolume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.masterEnable') do inifile.exe "%NEWCONF%" [config] sound.masterEnable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.chip.enableYM2413') do inifile.exe "%NEWCONF%" [config] sound.chip.enableYM2413=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.chip.enableY8950') do inifile.exe "%NEWCONF%" [config] sound.chip.enableY8950=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.chip.enableMoonsound') do inifile.exe "%NEWCONF%" [config] sound.chip.enableMoonsound=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.chip.moonsoundSRAMSize') do inifile.exe "%NEWCONF%" [config] sound.chip.moonsoundSRAMSize=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.YkIn.type') do inifile.exe "%NEWCONF%" [config] sound.YkIn.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.YkIn.name') do inifile.exe "%NEWCONF%" [config] sound.YkIn.name=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.YkIn.channel') do inifile.exe "%NEWCONF%" [config] sound.YkIn.channel=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.MidiIn.type') do inifile.exe "%NEWCONF%" [config] sound.MidiIn.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.MidiIn.name') do inifile.exe "%NEWCONF%" [config] sound.MidiIn.name=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.MidiOut.type') do inifile.exe "%NEWCONF%" [config] sound.MidiOut.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.MidiOut.nam') do inifile.exe "%NEWCONF%" [config] sound.MidiOut.nam=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.MidiOut.mt32ToGm') do inifile.exe "%NEWCONF%" [config] sound.MidiOut.mt32ToGm=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_PSG.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_PSG.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_PSG.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_PSG.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_PSG.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_PSG.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_SCC.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_SCC.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_SCC.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_SCC.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_SCC.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_SCC.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MSXMUSIC.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MSXMUSIC.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MSXMUSIC.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MSXMUSIC.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MSXAUDIO.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MSXAUDIO.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MSXAUDIO.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MSXAUDIO.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MSXAUDIO.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MSXAUDIO.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_KEYBOARD.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_KEYBOARD.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_KEYBOARD.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_KEYBOARD.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_KEYBOARD.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_KEYBOARD.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MOONSOUND.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MOONSOUND.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MOONSOUND.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MOONSOUND.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MOONSOUND.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MOONSOUND.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_YAMAHA_SFG.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_YAMAHA_SFG.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_YAMAHA_SFG.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_YAMAHA_SFG.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_YAMAHA_SFG.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_YAMAHA_SFG.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_PCM.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_PCM.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_PCM.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_PCM.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_PCM.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_PCM.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_IO.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_IO.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_IO.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_IO.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_IO.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_IO.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MIDI.enable') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MIDI.enable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MIDI.pan') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MIDI.pan=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" sound.mixerChannel.MIXER_CHANNEL_MIDI.volume') do inifile.exe "%NEWCONF%" [config] mixerChannel.MIXER_CHANNEL_MIDI.volume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" keyboard.configFile') do inifile.exe "%NEWCONF%" [config] keyboard.configFile=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Lpt.type') do inifile.exe "%NEWCONF%" [config] ports.Lpt.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Lpt.emulation') do inifile.exe "%NEWCONF%" [config] ports.Lpt.emulation=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Lpt.name') do inifile.exe "%NEWCONF%" [config] ports.Lpt.name=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Lpt.fileName') do inifile.exe "%NEWCONF%" [config] ports.Lpt.fileName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Lpt.portName') do inifile.exe "%NEWCONF%" [config] ports.Lpt.portName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Com.type') do inifile.exe "%NEWCONF%" [config] ports.Com.type=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Com.name') do inifile.exe "%NEWCONF%" [config] ports.Com.name=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Com.fileName') do inifile.exe "%NEWCONF%" [config] ports.Com.fileName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Com.portName') do inifile.exe "%NEWCONF%" [config] ports.Com.portName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Eth.ethIndex') do inifile.exe "%NEWCONF%" [config] ports.Eth.ethIndex=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Eth.disabled') do inifile.exe "%NEWCONF%" [config] ports.Eth.disabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" ports.Eth.macAddress') do inifile.exe "%NEWCONF%" [config] ports.Eth.macAddress=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" cartridge.defaultType') do inifile.exe "%NEWCONF%" [config] cartridge.defaultType=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" diskdrive.cdromMethod') do inifile.exe "%NEWCONF%" [config] diskdrive.cdromMethod=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" diskdrive.cdromDrive') do inifile.exe "%NEWCONF%" [config] diskdrive.cdromDrive=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" cassette.showCustomFiles') do inifile.exe "%NEWCONF%" [config] cassette.showCustomFiles=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" cassette.readOnly') do inifile.exe "%NEWCONF%" [config] cassette.readOnly=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" cassette.rewindAfterInsert') do inifile.exe "%NEWCONF%" [config] cassette.rewindAfterInsert=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" nowind.enableDos2') do inifile.exe "%NEWCONF%" [config] nowind.enableDos2=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" nowind.enableOtherDiskRoms') do inifile.exe "%NEWCONF%" [config] nowind.enableOtherDiskRoms=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" nowind.enablePhantomDrives') do inifile.exe "%NEWCONF%" [config] nowind.enablePhantomDrives=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" nowind.ignoreBootFlag') do inifile.exe "%NEWCONF%" [config] nowind.ignoreBootFlag=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" nowind.partitionNumber') do inifile.exe "%NEWCONF%" [config] nowind.partitionNumber=%%a
exit /b
:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
