pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select an Amiga Console" "A500/1200;CD32" /DB=1
if %ERRORLEVEL%==1 goto :AMIG
if %ERRORLEVEL%==2 goto :AMIG32
goto :AMIG
:AMIG
set AMIGTYPE=%CAMIG%
goto :SETCFGFILE

:AMIG32
set AMIGTYPE=%AMIG32%
goto :SETCFGFILE

:SETCFGFILE
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%AMIGTYPE%\Config.fs-uae" "Select Configured Config.fs-uae" /noquote') do %%a
if %errorlevel%==0 exit /b
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings"
if %ERRORLEVEL%==1 goto :FSUAEJOY
if %ERRORLEVEL%==2 goto :FSUAEOTH
goto :QUITOUT
:FSUAEJOY
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Amiga Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%AMIGTYPE%\%GAMEDIR%*Config.fs-uae"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:INJTARGET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] joystick_port_0_autoswitch') do inifile.exe "%NEWCONF%" [Config] joystick_port_0_autoswitch=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] joystick_port_0') do inifile.exe "%NEWCONF%" [Config] joystick_port_0=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] joystick_port_1') do inifile.exe "%NEWCONF%" [Config] joystick_port_1=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] joystick_port_2') do inifile.exe "%NEWCONF%" [Config] joystick_port_2=%%a
exit /b

:FSUAEOTH
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating Amiga settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%AMIGTYPE%\%GAMEDIR%*Config.fs-uae"') do (
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] amiga_model') do inifile.exe "%NEWCONF%" [Config] amiga_model=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] accuracy') do inifile.exe "%NEWCONF%" [Config] accuracy=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] floppy_drive_volume') do inifile.exe "%NEWCONF%" [Config] floppy_drive_volume=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] floppy_drive_count') do inifile.exe "%NEWCONF%" [Config] floppy_drive_count=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] floppy_drive_speed') do inifile.exe "%NEWCONF%" [Config] floppy_drive_speed=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] fsaa') do inifile.exe "%NEWCONF%" [Config] fsaa=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] video_sync_method') do inifile.exe "%NEWCONF%" [Config] video_sync_method=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] video_sync') do inifile.exe "%NEWCONF%" [Config] video_sync=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] texture_filter') do inifile.exe "%NEWCONF%" [Config] texture_filter=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] shader') do inifile.exe "%NEWCONF%" [Config] shader=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] scanlines_light') do inifile.exe "%NEWCONF%" [Config] scanlines_light=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] scanlines_dark') do inifile.exe "%NEWCONF%" [Config] scanlines_dark=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] scanlines') do inifile.exe "%NEWCONF%" [Config] scanlines=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] rtg_scanlines') do inifile.exe "%NEWCONF%" [Config] rtg_scanlines=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] low_latency_vsync') do inifile.exe "%NEWCONF%" [Config] low_latency_vsync=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] fullscreen') do inifile.exe "%NEWCONF%" [Config] fullscreen=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] fullscreen_width') do inifile.exe "%NEWCONF%" [Config] fullscreen_width=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] fullscreen_height') do inifile.exe "%NEWCONF%" [Config] fullscreen_height=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] keep_aspect') do inifile.exe "%NEWCONF%" [Config] keep_aspect=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] keyboard_key_shift_period') do inifile.exe "%NEWCONF%" [Config] keyboard_key_shift_period=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] keyboard_key_shift_backspace') do inifile.exe "%NEWCONF%" [Config] keyboard_key_shift_backspace=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] keyboard_key_shift_f5') do inifile.exe "%NEWCONF%" [Config] keyboard_key_shift_f5=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] keyboard_key_shift_f7') do inifile.exe "%NEWCONF%" [Config] keyboard_key_shift_f7=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] kickstart_file') do inifile.exe "%NEWCONF%" [Config] kickstart_file=%%a
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] chip_memory') do inifile.exe "%NEWCONF%" [Config] chip_memory=%%a
if "%AMIGTYPE%"=="%CAMIG%" exit /b
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Config] kickstart_ext_file') do inifile.exe "%NEWCONF%" [Config] kickstart_ext_file=%%a
exit /b

:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1


