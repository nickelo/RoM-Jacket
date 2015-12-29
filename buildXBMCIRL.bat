set DWNLO=
copy /y "%GBC%\net\%XBMC%\IARL\settings.set" "%GBC%\net\%XBMC%\IARL\settings.xml"
mkdir "%XBAPDTA%\userdata\addon_data\plugin.program.iarl"
"%GBC%\wbox.exe" "RJ_GUI" "[Keep]^ROMs are stored in your Library's Console by The Internet Archive ROM Launcher.^[Temp]^ROMs are stored in Kodi's temp directory, managed by the IARL plugin" "Keep;Temp" /DB=1 /BW=150
if %errorlevel%==1 goto :KEEP
if %errorlevel%==2 goto :AUTO
goto :QUITOUT

:KEEP
set KEPP=1
goto :KEPT
:AUTO
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHTYP]" "Download and Launch"
set KEPP=
goto :TEMP

:KEPT
"%GBC%\wbox.exe" "RJ_GUI" "What would you like Kodi's default action to be with your ROMs aquired from The Internet Archive^^[DOWNLOAD]^ROMs will be downloaded only.^^[Launch]^ROMs will be downloaded and then launched from a from the specified Library console's directory^^[ROMINFO]^ROMs show the selected ROM's info-page^" "Download;Launch;ROMInfo" /DB=2
if %errorlevel%==1 goto :DWNLO
if %errorlevel%==2 goto :LAUNCH
if %errorlevel%==3 goto :ROMINF
goto :QUITOUT

:ROMINF
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHTYP]" "ROM Info Page"s
"%GBC%\wbox.exe" "RJ_GUI" "Download to a temp directory or to the corresponding Library's console directory" "Temp;Console" /DB=1
if %errorlevel%==1 goto :TEMP
if %errorlevel%==2 goto :CORESP
goto :QUITOUT
goto :CONSOLE

:DWNLO
set DWNLO=1
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHTYP]" "Download Only"	
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHSZ]" "500MB"	
goto :KP

:LAUNCH
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHTYP]" "Download and Launch"
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHSZ]" "500MB"
goto :CONSOLE


:TEMP
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHTYP]" "Download and Launch"
mkdir "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\temp_iarl"
"%GBC%\wbox.exe" "RJ_GUI" "How much space would you like to give The Internet Archive ROM Launcher?" "None;100mb;250mb;500mb" /DB=1
if %errorlevel%==1 goto :NONE
if %errorlevel%==2 goto :MIN
if %errorlevel%==3 goto :MID
if %errorlevel%==4 goto :MAX
goto :QUITOUT

:NONE
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHSZ]" "Zero (One ROM and Supporting Files Only)"
goto :CONSOLE

:MID
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHSZ]" "100MB"	
goto :CONSOLE

:MIN
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHSZ]" "250MB"	
goto :CONSOLE

:MAX
mkdir "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\temp_iarl"
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[LNCHSZ]" "500MB"
goto :CONSOLE

:CORESP
SET IAFA=1
:CONSOLE
"%GBC%\wbox.exe" "RJ_GUI" "Use [retroArch] to launch ROMs.^Use [kodiplayer] to launch ROMs." "retroArch;kodiplayer" /DB=2
if %errorlevel%==1 goto :RA	
if %errorlevel%==2 goto :KP
goto :QUITOUT

:RA
set RA=1
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[RAEXE]" "%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe"
goto :PARSE

:KP	
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\IARL\settings.xml" "[RAEXE]" --remove
set RA=
goto :PARSE

:PARSE
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuring Internet Archive ROM Launcher" /marquee
for /f "delims=" %%a in ('dir /b/a-d-h "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\*.xml"') do (
set ZMXML=%%~nxa
set ZNXML=%%~na
call :IARL
)

:COPYXML
if not exist "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\settings.orig" copy /y "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\settings.xml" "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\settings.orig"
copy /y "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\settings.xml" "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\settings.bak"
copy /y "%GBC%\net\%XBMC%\IARL\settings.xml" "%XBAPDTA%\userdata\addon_data\plugin.program.iarl\settings.xml"
%BSTRT% "%WFINS%" "RJ_GUI" "Configuring Internet Archive ROM Launcher" /stop /timeout:1
exit /b

%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1

:IARL
set XMRS=ZachMorris
set CSTCONS=
:SG32X
if "%ZMXML%"=="32X_%XMRS%.xml" for %%a in ("%SG32X%") do (
set RCORE=picodrive_libretro.dll
set CSTCONS=%%~a
)
:AT26
if "%ZMXML%"=="Atari_2600_%XMRS%.xml" for %%a in ("%AT26%") do (
set CSTCONS=%%~a
set RCORE=stella_libretro.dll
)
:JAG
if "%ZMXML%"=="Atari_Jaguar_%XMRS%.xml" for %%a in ("%JAG%") do (
set RCORE=virtualjaguar_libretro.dll
set CSTCONS=%%~a
)
:LYNX
if "%ZMXML%"=="Atari_Lynx_%XMRS%.xml" for %%a in ("%LYNX%") do (
set RCORE=handy_libretro.dll
set CSTCONS=%%~a
)
:SEGG
if "%ZMXML%"=="Game_Gear_%XMRS%.xml" for %%a in ("%SEGG%") do (
set RCORE=genesis_plus_gx_libretro.dll
set CSTCONS=%%~a
)
:NGBA
if "%ZMXML%"=="GBA_%XMRS%.xml" for %%a in ("%NGBA%") do (
set RCORE=vbam_libretro.dll
set CSTCONS=%%~a
)
:NGBC
if "%ZMXML%"=="GBC_%XMRS%.xml" for %%a in ("%NGBC%") do (
set RCORE=gambatte_libretro.dll
set CSTCONS=%%~a
)
:SEGAG
if "%ZMXML%"=="Genesis_%XMRS%.xml" for %%a in ("%SEGAG%") do (
set RCORE=genesis_plus_gx_libretro.dll
set CSTCONS=%%~a
)
:MSDOS
if "%ZMXML%"=="IA_MSDOS_%XMRS%.xml" for %%a in ("%MSDOS%") do (	
set RCORE=dosbox_libretro.dll
set CSTCONS=%%~a
)
:ARCD
if "%ZMXML%"=="MAME_%XMRS%.xml" for %%a in ("%ARCD%") do (
set RCORE=mame2014_libretro.dll
set CSTCONS=%%~a
)
:N64
if "%ZMXML%"=="N64_%XMRS%.xml" for %%a in ("%N64%") do (
set RCORE=mupen64plus_libretro.dll
set CSTCONS=%%~a
)
:NES
if "%ZMXML%"=="NES_%XMRS%.xml" for %%a in ("%NES%") do (
set RCORE=nestopia_libretro.dll
set CSTCONS=%%~a
)
:SNES
if "%ZMXML%"=="SNES_%XMRS%.xml" for %%a in ("%SNES%") do (
set RCORE=bsnes_performance_libretro.dll
set CSTCONS=%%~a
)
:SEGDC
if "%ZMXML%"=="Dreamcast_%XMRS%.xml" for %%a in ("%SEGDC%") do (
set RCORE=reicast_libretro.dll
set CSTCONS=%%~a
)
:SEGMS
if "%ZMXML%"=="Master_System_%XMRS%.xml" for %%a in ("%SEGMS%") do (
set RCORE=genesis_plus_gx_libretro.dll
set CSTCONS=%%~a
)
:TG16
if "%ZMXML%"=="TG16_%XMRS%.xml" for %%a in ("%TG16%") do (
set RCORE=mednafen_pce_fast_libretro.dll
set CSTCONS=%%~a
)
:REPLT
if "%CSTCONS%"=="" goto :QUITOUT
if "%RA%"=="1" goto :REPL

:REPL
if "%DWNLO%"=="1" call "%GBC%\replace.bat" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "<emu_postdlaction>.*</emu_postdlaction>" "<emu_postdlaction>none</emu_postdlaction>"
if exist "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" del /q "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" && rename "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "%ZMXML%"
if "%KEPP%"=="1" call "%GBC%\replace.bat" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "<emu_downloadpath>.*</emu_downloadpath>" "<emu_downloadpath>%GBG%\%GAM%\%CONS%\[CSTCONS]\</emu_downloadpath>"
if exist "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" del /q "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" && rename "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "%ZMXML%"
if "%KEPP%"=="" call "%GBC%\replace.bat" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "<emu_downloadpath>.*</emu_downloadpath>" "<emu_downloadpath>default</emu_downloadpath>"
if exist "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" del /q "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" && rename "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "%ZMXML%"
if "%RA%"=="1" call "%GBC%\replace.bat" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "<emu_launcher>.*</emu_launcher>" "<emu_launcher>external</emu_launcher>"
if exist "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" del /q "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" && rename "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "%ZMXML%"
if "%RA%"=="1" call "%GBC%\replace.bat" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "<emu_ext_launch_cmd>.*</emu_ext_launch_cmd>" "<emu_ext_launch_cmd>[x] -f [y] -L [z]\[n]</emu_ext_launch_cmd>" 
if exist "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" del /q "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" && rename "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZNXML%.tmp" "%ZMXML%"
"%GBC%\fart.exe" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" [CSTCONS] "%CSTCONS%"
if "%RA%"=="1" call :INJ
exit /b

:INJ
"%GBC%\fart.exe" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" [x] "\"%GBE%\%EMUZ%\%RTROA%\%RTROA%.exe\""
"%GBC%\fart.exe" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" [y] "\"%%ROM_PATH%%\""
"%GBC%\fart.exe" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" [z] "\"%GBE%\%EMUZ%\%RTROA%\cores"
"%GBC%\fart.exe" "%XBAPDTA%\addons\plugin.program.iarl-master\resources\data\dat_files\%ZMXML%" [n] "%RCORE%\""


:QUITOUT