pushd "%GBC%"
"%GBC%\wbox.exe" "RJ_GUI" "Select configuration type" "Joysticks;Settings" /DB=1
if %ERRORLEVEL%==1 goto :RTROAJOY
if %ERRORLEVEL%==2 goto :RTROAOTH
goto :QUITOUT
:RTROAJOY
pushd "%GBC%"
for /f "delims=" %%a in ('Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\retroarch.cfg" "Select Configured retroarch.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
popd
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
call :SELECTSYS
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "config_save_on_exit =" "[Settings]"
"%GBC%\fart.exe" "%SOURCECFG%" " = \"" "=\""
popd
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating RA System Joystick settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*retroarch.cfg"') do (
set NEWLOC=%%~dpa
set NEWCONF=%%~a
if "%%~a" NEQ "%SOURCECFG%" call :INJTARGET
)
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "[Settings]" "config_save_on_exit ="
"%GBC%\fart.exe" "%SOURCECFG%" "=\"" " = \""
popd

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b
:SELECTSYS
del /q "%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%ARCD%" echo.%ARCD%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%CPS%" echo.%CPS%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%CPS2%" echo.%CPS2%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%BWS%" echo.%BWS%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%BWS%" echo.%BWSC%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%LYNX%" echo.%LYNX%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NEOPKT%" echo.%NEOPKT%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NEOPKTC%" echo.%NEOPKTC%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NDS%" echo.%NDS%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%N64%" echo.%N64%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NES%" echo.%NES%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NFAM%" echo.%NFAM%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NGB%" echo.%NGB%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NGBA%" echo.%NGBA%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NGBC%" echo.%NGBC%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%NVB%" echo.%NVB%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%TG16%" echo.%TG16%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%TGCD%" echo.%TGCD%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%PCENG%" echo.%PCENG%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%PCECD%" echo.%PCECD%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%PS1%" echo.%PS1%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SNES%" echo.%SNES%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SFAM%" echo.%SFAM%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEG1K%" echo.%SEG1K%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGAG%" echo.%SEGAG%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGAMD%" echo.%SEGAMD%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGAP%" echo.%SEGAP%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGMS%" echo.%SEGMS%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGG%" echo.%SEGG%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SG32X%" echo.%SG32X%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGDC%" echo.%SEGDC%:>>"%GBC%\rtroasys.ini"
if exist "%GBG%\%GAM%\%CONS%\%SEGCD%" echo.%SEGCD%:>>"%GBC%\rtroasys.ini"
"%GBC%\fart.exe" "%GBC%\rtroasys.ini" ":" --remove
"%GBC%\wselect.exe" "%GBC%\rtroasys.ini" "Select a system to propagate RetroArch config files TO." "set CSTCONS=$item" > "%GBC%\newcons.cmd"
if %errorlevel% == 0 goto :QUITOUT
call "%GBC%\newcons.cmd"
exit /b

:INJTARGET
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "config_save_on_exit =" "[Settings]"
"%GBC%\fart.exe" "%NEWCONF%" " = \"" "=\""
popd
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
set SRCNAME=%%~a
set SRCVAL=%%b
call :INJ
)
exit /b
:INJ
for /f "tokens=1 delims=_" %%a in ("%SRCNAME%") do if /i "%%~a" NEQ "input" exit /b
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Settings] %SRCNAME%') do inifile.exe "%NEWCONF%" [Settings] %SRCNAME%="%%a"


pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "config_save_on_exit ="
"%GBC%\fart.exe" "%NEWCONF%" "=\"" " = \""
popd
exit /b

:RTROAOTH
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET SOURCECFG=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\retroarch.cfg" "Select Configured retroarch.cfg" /noquote') do %%a
if %errorlevel%==0 exit /b
for /f "delims=" %%a in ("%SOURCECFG%") do set SOURCELOC=%%~dpa
call :SELECTSYS
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "config_save_on_exit =" "[Settings]"
"%GBC%\fart.exe" "%SOURCECFG%" " = \"" "=\""
popd
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating RA System settings" /marquee
for /f  "delims=" %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMEDIR%*retroarch.cfg"') do (
set NEWCONF=%%~a
set NEWLOC=%%~dpa
if "%%~a" NEQ "%SOURCECFG%" call :OTHET
)
pushd "%SOURCELOC%"
"%GBC%\fart.exe" "%SOURCECFG%" "[Settings]" "config_save_on_exit ="
"%GBC%\fart.exe" "%SOURCECFG%" "=\"" " = \""
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
popd
exit /b

:OTHET
REM copy /y "%SOURCELOC%.retroarch-core-options.cfg" "%NEWLOC%%RATYPE%.cfg"
copy /y "%SOURCELOC%.retroarch-core-options.cfg" "%NEWLOC%"
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "config_save_on_exit =" "[Settings]"
"%GBC%\fart.exe" "%NEWCONF%" " = \"" "=\""
popd	
for /f "tokens=1,2 delims==" %%a in ('type "%SOURCECFG%"') do (
set SRCNAME=%%~a
set SRCVAL=%%b
call :INJ
)
pushd "%NEWLOC%"
"%GBC%\fart.exe" "%NEWCONF%" "=\"" " = \""
"%GBC%\fart.exe" "%NEWCONF%" "[Settings]" "config_save_on_exit ="
popd
exit /b
:INJ
for /f "tokens=1 delims=_" %%a in ("%SRCNAME%") do if /i "%%~a"=="input" exit /b
if "%SRCNAME%"=="video_font_path" exit /b
if "%SRCNAME%"=="osk_overlay_directory" exit /b
if "%SRCNAME%"=="savefile_directory" exit /b
if "%SRCNAME%"=="savestate_directory" exit /b
if "%SRCNAME%"=="content_directory" exit /b
if "%SRCNAME%"=="playlist_directory" exit /b
if "%SRCNAME%"=="libretro_info_path" exit /b
if "%SRCNAME%"=="content_database_path" exit /b
if "%SRCNAME%"=="content_history_dir" exit /b
if "%SRCNAME%"=="libretro_path" for /f "delims=" %%a in ("%SRCVAL%") do set RATYPE=%%~na
if "%SRCNAME%"=="video_context_driver" exit /b
if "%SRCNAME%"=="extraction_directory" exit /b
if "%SRCNAME%"=="resampler_directory" exit /b
if "%SRCNAME%"=="game_history_path" exit /b
if "%SRCNAME%"=="libretro_directory" exit /b
if "%SRCNAME%"=="screenshot_directory" exit /b
if "%SRCNAME%"=="rgui_config_directory" exit /b
if "%SRCNAME%"=="rgui_browser_directory" exit /b
if "%SRCNAME%"=="assets_directory" exit /b
if "%SRCNAME%"=="overlay_directory" exit /b		
if "%SRCNAME%"=="joypad_autoconfig_dir" exit /b
if "%SRCNAME%"=="system_directory" exit /b
if "%SRCNAME%"=="audio_filter_dir" exit /b
if "%SRCNAME%"=="video_filter_directory" exit /b
if "%SRCNAME%"=="video_shader_dir" exit /b
if "%SRCNAME%"=="cursor_directory" exit /b
if "%SRCNAME%"=="content_database_directory" exit /b
if "%SRCNAME%"=="cheat_settings_path" exit /b
if "%SRCNAME%"=="cheat_database_path" exit /b
for /f "tokens=2 delims==" %%a in ('inifile.exe "%SOURCECFG%" [Settings] %SRCNAME%') do inifile.exe "%NEWCONF%" [Settings] %SRCNAME%="%%a"
exit /b
:QUITOUT
%BSTRT% "%WFINS%" "RJ_GUI" "Cancelled" /STOP /TIMEOUT:1
