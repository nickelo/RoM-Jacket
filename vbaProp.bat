pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :VBAJOY
if %ERRORLEVEL%==2 goto :VBAOTH
goto :QUITOUT
:VBAJOY
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\vbam.ini" "Select Configured vbam.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating VisualBoy Advance Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*vbam.ini"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:INJTARGET
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] joypadDefault') do inifile.exe "%NEWCONF%" [preferences] joypadDefault=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Left') do inifile.exe "%NEWCONF%" [preferences] Joy0_Left=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Right') do inifile.exe "%NEWCONF%" [preferences] Joy0_Right=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Up') do inifile.exe "%NEWCONF%" [preferences] Joy0_Up=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Speed') do inifile.exe "%NEWCONF%" [preferences] Joy0_Speed=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Capture') do inifile.exe "%NEWCONF%" [preferences] Joy0_Capture=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_GS') do inifile.exe "%NEWCONF%" [preferences] Joy0_GS=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Down') do inifile.exe "%NEWCONF%" [preferences] Joy0_Down=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_A') do inifile.exe "%NEWCONF%" [preferences] Joy0_A=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_B') do inifile.exe "%NEWCONF%" [preferences] Joy0_B=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_L') do inifile.exe "%NEWCONF%" [preferences] Joy0_L=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_R') do inifile.exe "%NEWCONF%" [preferences] Joy0_R=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Start') do inifile.exe "%NEWCONF%" [preferences] Joy0_Start=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy0_Select') do inifile.exe "%NEWCONF%" [preferences] Joy0_Select=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Left') do inifile.exe "%NEWCONF%" [preferences] Joy1_Left=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Right') do inifile.exe "%NEWCONF%" [preferences] Joy1_Right=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Up') do inifile.exe "%NEWCONF%" [preferences] Joy1_Up=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Speed') do inifile.exe "%NEWCONF%" [preferences] Joy1_Speed=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Capture') do inifile.exe "%NEWCONF%" [preferences] Joy1_Capture=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_GS') do inifile.exe "%NEWCONF%" [preferences] Joy1_GS=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Down') do inifile.exe "%NEWCONF%" [preferences] Joy1_Down=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_A') do inifile.exe "%NEWCONF%" [preferences] Joy1_A=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_B') do inifile.exe "%NEWCONF%" [preferences] Joy1_B=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_L') do inifile.exe "%NEWCONF%" [preferences] Joy1_L=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_R') do inifile.exe "%NEWCONF%" [preferences] Joy1_R=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Start') do inifile.exe "%NEWCONF%" [preferences] Joy1_Start=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy1_Select') do inifile.exe "%NEWCONF%" [preferences] Joy1_Select=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Left') do inifile.exe "%NEWCONF%" [preferences] Joy2_Left=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Right') do inifile.exe "%NEWCONF%" [preferences] Joy2_Right=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Up') do inifile.exe "%NEWCONF%" [preferences] Joy2_Up=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Speed') do inifile.exe "%NEWCONF%" [preferences] Joy2_Speed=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Capture') do inifile.exe "%NEWCONF%" [preferences] Joy2_Capture=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_GS') do inifile.exe "%NEWCONF%" [preferences] Joy2_GS=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Down') do inifile.exe "%NEWCONF%" [preferences] Joy2_Down=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_A') do inifile.exe "%NEWCONF%" [preferences] Joy2_A=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_B') do inifile.exe "%NEWCONF%" [preferences] Joy2_B=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_L') do inifile.exe "%NEWCONF%" [preferences] Joy2_L=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_R') do inifile.exe "%NEWCONF%" [preferences] Joy2_R=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Start') do inifile.exe "%NEWCONF%" [preferences] Joy2_Start=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy2_Select') do inifile.exe "%NEWCONF%" [preferences] Joy2_Select=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Left') do inifile.exe "%NEWCONF%" [preferences] Joy3_Left=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Right') do inifile.exe "%NEWCONF%" [preferences] Joy3_Right=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Up') do inifile.exe "%NEWCONF%" [preferences] Joy3_Up=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Speed') do inifile.exe "%NEWCONF%" [preferences] Joy3_Speed=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Capture') do inifile.exe "%NEWCONF%" [preferences] Joy3_Capture=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_GS') do inifile.exe "%NEWCONF%" [preferences] Joy3_GS=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Down') do inifile.exe "%NEWCONF%" [preferences] Joy3_Down=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_A') do inifile.exe "%NEWCONF%" [preferences] Joy3_A=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_B') do inifile.exe "%NEWCONF%" [preferences] Joy3_B=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_L') do inifile.exe "%NEWCONF%" [preferences] Joy3_L=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_R') do inifile.exe "%NEWCONF%" [preferences] Joy3_R=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Start') do inifile.exe "%NEWCONF%" [preferences] Joy3_Start=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Joy3_Select') do inifile.exe "%NEWCONF%" [preferences] Joy3_Select=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] joyVersion') do inifile.exe "%NEWCONF%" [preferences] joyVersion=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Motion_Left') do inifile.exe "%NEWCONF%" [preferences] Motion_Left=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Motion_Right') do inifile.exe "%NEWCONF%" [preferences] Motion_Right=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Motion_Up') do inifile.exe "%NEWCONF%" [preferences] Motion_Up=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] Motion_Down') do inifile.exe "%NEWCONF%" [preferences] Motion_Down=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] joybusEnabled') do inifile.exe "%NEWCONF%" [preferences] joybusEnabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] joybusHostAddr') do inifile.exe "%NEWCONF%" [preferences] joybusHostAddr=%%a
exit /b

:VBAOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\vbam.ini" "Select Configured vbam.ini" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating VisualBoy Advance System settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*vbam.ini"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] windowX') do inifile.exe "%NEWCONF%" [preferences] windowX=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] windowY') do inifile.exe "%NEWCONF%" [preferences] windowY=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] video') do inifile.exe "%NEWCONF%" [preferences] video=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] fsWidth') do inifile.exe "%NEWCONF%" [preferences] fsWidth=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] fsHeight') do inifile.exe "%NEWCONF%" [preferences] fsHeight=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] fsColorDepth') do inifile.exe "%NEWCONF%" [preferences] fsColorDepth=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] autoLoadMostRecent') do inifile.exe "%NEWCONF%" [preferences] autoLoadMostRecent=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] skipSaveGameBattery') do inifile.exe "%NEWCONF%" [preferences] skipSaveGameBattery=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] skipSaveGameCheats') do inifile.exe "%NEWCONF%" [preferences] skipSaveGameCheats=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] cheatsEnabled') do inifile.exe "%NEWCONF%" [preferences] cheatsEnabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] maxScale') do inifile.exe "%NEWCONF%" [preferences] maxScale=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] throttle') do inifile.exe "%NEWCONF%" [preferences] throttle=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] pluginName') do inifile.exe "%NEWCONF%" [preferences] pluginName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] saveMoreCPU') do inifile.exe "%NEWCONF%" [preferences] saveMoreCPU=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] LinkTimeout') do inifile.exe "%NEWCONF%" [preferences] LinkTimeout=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] RFU') do inifile.exe "%NEWCONF%" [preferences] RFU=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] linkEnabled') do inifile.exe "%NEWCONF%" [preferences] linkEnabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] lastFullscreen') do inifile.exe "%NEWCONF%" [preferences] lastFullscreen=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] pauseWhenInactive') do inifile.exe "%NEWCONF%" [preferences] pauseWhenInactive=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] oalDevice') do inifile.exe "%NEWCONF%" [preferences] oalDevice=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] oalBufferCount') do inifile.exe "%NEWCONF%" [preferences] oalBufferCount=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] xa2Device') do inifile.exe "%NEWCONF%" [preferences] xa2Device=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] xa2BufferCount') do inifile.exe "%NEWCONF%" [preferences] xa2BufferCount=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] xa2Upmixing') do inifile.exe "%NEWCONF%" [preferences] xa2Upmixing=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] biosFileGBA') do inifile.exe "%NEWCONF%" [preferences] biosFileGBA=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] language') do inifile.exe "%NEWCONF%" [preferences] language=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] languageName') do inifile.exe "%NEWCONF%" [preferences] languageName=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] frameSkip') do inifile.exe "%NEWCONF%" [preferences] frameSkip=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbFrameSkip') do inifile.exe "%NEWCONF%" [preferences] gbFrameSkip=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] autoFrameSkip') do inifile.exe "%NEWCONF%" [preferences] autoFrameSkip=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] vsync') do inifile.exe "%NEWCONF%" [preferences] vsync=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] synchronize') do inifile.exe "%NEWCONF%" [preferences] synchronize=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] stretch') do inifile.exe "%NEWCONF%" [preferences] stretch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] fsAdapter') do inifile.exe "%NEWCONF%" [preferences] fsAdapter=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] fsFrequency') do inifile.exe "%NEWCONF%" [preferences] fsFrequency=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] renderMethod') do inifile.exe "%NEWCONF%" [preferences] renderMethod=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] audioAPI') do inifile.exe "%NEWCONF%" [preferences] audioAPI=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] maxCpuCores') do inifile.exe "%NEWCONF%" [preferences] maxCpuCores=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] useBiosGBA') do inifile.exe "%NEWCONF%" [preferences] useBiosGBA=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] useBiosGBC') do inifile.exe "%NEWCONF%" [preferences] useBiosGBC=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] useBiosGB') do inifile.exe "%NEWCONF%" [preferences] useBiosGB=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] skipBios') do inifile.exe "%NEWCONF%" [preferences] skipBios=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] soundEnable') do inifile.exe "%NEWCONF%" [preferences] soundEnable=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] soundQuality') do inifile.exe "%NEWCONF%" [preferences] soundQuality=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] soundVolume') do inifile.exe "%NEWCONF%" [preferences] soundVolume=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbSoundEffectsEnabled') do inifile.exe "%NEWCONF%" [preferences] gbSoundEffectsEnabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbSoundEffectsSurround') do inifile.exe "%NEWCONF%" [preferences] gbSoundEffectsSurround=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbSoundEffectsEcho') do inifile.exe "%NEWCONF%" [preferences] gbSoundEffectsEcho=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbSoundEffectsStereo') do inifile.exe "%NEWCONF%" [preferences] gbSoundEffectsStereo=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbSoundDeclicking') do inifile.exe "%NEWCONF%" [preferences] gbSoundDeclicking=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbaSoundInterpolation') do inifile.exe "%NEWCONF%" [preferences] gbaSoundInterpolation=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbaSoundFiltering') do inifile.exe "%NEWCONF%" [preferences] gbaSoundFiltering=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] tripleBuffering') do inifile.exe "%NEWCONF%" [preferences] tripleBuffering=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] d3dFilter') do inifile.exe "%NEWCONF%" [preferences] d3dFilter=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] d3dMotionBlur') do inifile.exe "%NEWCONF%" [preferences] d3dMotionBlur=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] glFilter') do inifile.exe "%NEWCONF%" [preferences] glFilter=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] filter') do inifile.exe "%NEWCONF%" [preferences] filter=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] filterEnableMultiThreading') do inifile.exe "%NEWCONF%" [preferences] filterEnableMultiThreading=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] disableMMX') do inifile.exe "%NEWCONF%" [preferences] disableMMX=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] disableStatus') do inifile.exe "%NEWCONF%" [preferences] disableStatus=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] showSpeed') do inifile.exe "%NEWCONF%" [preferences] showSpeed=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] showSpeedTransparent') do inifile.exe "%NEWCONF%" [preferences] showSpeedTransparent=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbPrinter') do inifile.exe "%NEWCONF%" [preferences] gbPrinter=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] captureFormat') do inifile.exe "%NEWCONF%" [preferences] captureFormat=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] removeIntros') do inifile.exe "%NEWCONF%" [preferences] removeIntros=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recentFreeze') do inifile.exe "%NEWCONF%" [preferences] recentFreeze=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] autoPatch') do inifile.exe "%NEWCONF%" [preferences] autoPatch=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] disableSfx') do inifile.exe "%NEWCONF%" [preferences] disableSfx=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] saveType') do inifile.exe "%NEWCONF%" [preferences] saveType=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] ifbType') do inifile.exe "%NEWCONF%" [preferences] ifbType=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] flashSize') do inifile.exe "%NEWCONF%" [preferences] flashSize=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] agbPrint') do inifile.exe "%NEWCONF%" [preferences] agbPrint=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] rtcEnabled') do inifile.exe "%NEWCONF%" [preferences] rtcEnabled=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] borderOn') do inifile.exe "%NEWCONF%" [preferences] borderOn=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] borderAutomatic') do inifile.exe "%NEWCONF%" [preferences] borderAutomatic=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] emulatorType') do inifile.exe "%NEWCONF%" [preferences] emulatorType=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] colorOption') do inifile.exe "%NEWCONF%" [preferences] colorOption=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] priority') do inifile.exe "%NEWCONF%" [preferences] priority=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] autoSaveCheatList') do inifile.exe "%NEWCONF%" [preferences] autoSaveCheatList=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbPaletteOption') do inifile.exe "%NEWCONF%" [preferences] gbPaletteOption=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbPaletteCount') do inifile.exe "%NEWCONF%" [preferences] gbPaletteCount=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] gbPalette') do inifile.exe "%NEWCONF%" [preferences] gbPalette=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] rewindTimer') do inifile.exe "%NEWCONF%" [preferences] rewindTimer=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent0') do inifile.exe "%NEWCONF%" [preferences] recent0=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent1') do inifile.exe "%NEWCONF%" [preferences] recent1=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent2') do inifile.exe "%NEWCONF%" [preferences] recent2=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent3') do inifile.exe "%NEWCONF%" [preferences] recent3=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent4') do inifile.exe "%NEWCONF%" [preferences] recent4=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent5') do inifile.exe "%NEWCONF%" [preferences] recent5=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent6') do inifile.exe "%NEWCONF%" [preferences] recent6=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent7') do inifile.exe "%NEWCONF%" [preferences] recent7=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent8') do inifile.exe "%NEWCONF%" [preferences] recent8=%%a
for /f "Tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [preferences] recent9') do inifile.exe "%NEWCONF%" [preferences] recent9=%%a
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
