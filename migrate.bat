:MIGRATE
set INCARC=
"%GBC%\wbox.exe" "RJ_GUI" "-Extract-^Extract .zip/.7z/.rar archives to your RJ-Sort folder^Do not extract MAME-type romsets^^-Skip-^Ignores archives^^-Include-^Copies or moves archives as roms into your RJ-Sort Folder^" "Extract;Skip;Include;Help" /DB=2
if %ERRORLEVEL%==1 goto :UNPACK
if %ERRORLEVEL%==2 goto :IGNORE
if %ERRORLEVEL%==3 goto :INCLUDE
if %ERRORLEVEL%==4 goto :help
goto :quitout

:help
"%GBC%\docs\arcadeFrame.html"
wbox "opening" "Help is opening" "OK" /TM=2
if %ERRORLEVEL%==1 goto :MIGRATE
goto :MIGRATE
:INCLUDE
set INCARC=1
goto :FOUNDROMS
:IGNORE
set INCARC=
goto :FOUNDROMS
:UNPACK
set INCARC=
for %%i in ("%libsel%\*.rar" "%libsel%\*.7z" "%libsel%\*.zip") do (
if "%%~xi"==".rar" set ARCIX=1
if "%%~xi"==".7z" set ARCIX=1
if "%%~xi"==".zip" set ARCIX=1
if "%%~xi"==".rar" set %BSTRT% "%WBUSY%" "RJ_GUI" "Extracting %%~a to your RJ-Sort Folder.^" /marquee
if "%%~xi"==".7z" set %BSTRT% "%WBUSY%" "RJ_GUI" "Extracting %%~a to your RJ-Sort Folder.^" /marquee
if "%%~xi"==".zip" set %BSTRT% "%WBUSY%" "RJ_GUI" "Extracting %%~a to your RJ-Sort Folder.^" /marquee
if "%%~xi"==".zip" "%SEVENZIP%" x -y "%%~i" -o"%GBG%\%ROMJ%"
if "%%~xi"==".rar" "%UNRAR%" x -y -o+ "%%~i" "%GBG%\%ROMJ%"
if "%%~xi"==".7z" "%SEVENZIP%" x -y "%%~i" -o"%GBG%\%ROMJ%"
if "%%~xi"==".rar" attrib +h "%%~i"
if "%%~xi"==".7z" attrib +h "%%~i"
if "%%~xi"==".zip" attrib +h "%%~i"
)
if "%ARCIX%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "Complete^." /Stop /timeout:1
:FOUNDROMS
"%GBC%\wbox.exe" "RJ_GUI" "Copy or move?" "Copy;Move" /DB=1
if %ERRORLEVEL%==1 GOTO :CPY
if %ERRORLEVEL%==2 GOTO :MOV
goto :EOF


:returntochk
pushd "%libsel%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Migrating the %LIBNAME% to your RJ-Sort Folder^" /marquee
for /f "tokens=*" %%a in ('dir /ad /s /b "%libsel%"') do (
set ITERN=%%~nxa
Pushd "%%~a"
call :gna
popd
)
call :gna
goto :FILES
exit /b

:COPYF
%ROBOCPY% "%libsel%\%ITERN%" "%GBG%\%ROMJ%" /COPY:DAT /NP /IS /R:2 /W:2
exit /b

:MOVEF
%ROBOCPY% "%libsel%\%ITERN%" "%GBG%\%ROMJ%" /R:2 /W:2 /NP /E /IS /MOVE
exit /b

:CPY
set CPYV=COPYF
set CPYTYP=copy /y
goto :returntochk

:MOV
set CPYV=MOVEF
set CPYTYP=move /y
goto :returntochk

:gna
if "%INCARC%"=="1" %CPYTYP% "*.7z" "%GBG%\%ROMJ%"
if "%INCARC%"=="1" %CPYTYP% "*.rar" "%GBG%\%ROMJ%"
if "%INCARC%"=="1" %CPYTYP% "*.zip" "%GBG%\%ROMJ%"
%CPYTYP% "*.ngp" "%GBG%\%GAM%\%CONS%\%NEOPKT%"
%CPYTYP% "*.npk" "%GBG%\%GAM%\%CONS%\%NEOPKT%"
%CPYTYP% "*.ngc" "%GBG%\%GAM%\%CONS%\%NEOPKTC%"
%CPYTYP% "*.neo" "%GBG%\%GAM%\%CONS%\%NEOPKTC%"
%CPYTYP% "*.gg" "%GBG%\%GAM%\%CONS%\%SEGG%"
%CPYTYP% "*.ws" "%GBG%\%GAM%\%CONS%\%BWS%"
%CPYTYP% "*.gb" "%GBG%\%GAM%\%CONS%\%NGB%"
%CPYTYP% "*.md" "%GBG%\%GAM%\%CONS%\%SEGAG%"
%CPYTYP% "*.smd" "%GBG%\%GAM%\%CONS%\%SEGAG%"
%CPYTYP% "*.pco" "%GBG%\%GAM%\%CONS%\%SEGAP%"
%CPYTYP% "*.gen" "%GBG%\%GAM%\%CONS%\%SEGAG%"
%CPYTYP% "*.sg" "%GBG%\%GAM%\%CONS%\%SEG1K%"
%CPYTYP% "*.sms" "%GBG%\%GAM%\%CONS%\%SEGMS%"
%CPYTYP% "*.v64" "%GBG%\%GAM%\%CONS%\%N64%"
%CPYTYP% "*.n64" "%GBG%\%GAM%\%CONS%\%N64%"
%CPYTYP% "*.d64" "%GBG%\%GAM%\%CONS%\%CM64%"
%CPYTYP% "*.z64" "%GBG%\%GAM%\%CONS%\%N64%"
%CPYTYP% "*.jag" "%GBG%\%GAM%\%CONS%\%JAG%"
%CPYTYP% "*.lnk" "%GBG%\%GAM%\%CONS%\%WIN32%"
%CPYTYP% "*.sna" "%GBG%\%GAM%\%CONS%\%ZXSP%"
%CPYTYP% "*.tzx" "%GBG%\%GAM%\%CONS%\%ZXSP%"
%CPYTYP% "*.z80" "%GBG%\%GAM%\%CONS%\%ZXSP%"
%CPYTYP% "*.srl" "%GBG%\%GAM%\%CONS%\%NDS%"
%CPYTYP% "*.nds" "%GBG%\%GAM%\%CONS%\%NDS%"
%CPYTYP% "*.wsc" "%GBG%\%GAM%\%CONS%\%BWSC%"
%CPYTYP% "*.nd5" "%GBG%\%GAM%\%CONS%\%NDS%"
%CPYTYP% "*.fig" "%GBG%\%GAM%\%CONS%\%SNES%"
%CPYTYP% "*.gme" "%GBG%\%GAM%\%CONS%\%POCKS%"
%CPYTYP% "*.srm" "%GBG%\%GAM%\%CONS%\%SNES%"
%CPYTYP% "*.sfc" "%GBG%\%GAM%\%CONS%\%SNES%"
%CPYTYP% "*.smc" "%GBG%\%GAM%\%CONS%\%SNES%"
%CPYTYP% "*.pce" "%GBG%\%GAM%\%CONS%\%TG16%"
%CPYTYP% "*.vec" "%GBG%\%GAM%\%CONS%\%VECTX%"
%CPYTYP% "*.st" "%GBG%\%GAM%\%CONS%\%ATST%"
%CPYTYP% "*.msa" "%GBG%\%GAM%\%CONS%\%ATST%"
%CPYTYP% "*.vboy" "%GBG%\%GAM%\%CONS%\%NVB%"
%CPYTYP% "*.atr" "%GBG%\%GAM%\%CONS%\%AT8H%"
%CPYTYP% "*.atx" "%GBG%\%GAM%\%CONS%\%AT8H%"
%CPYTYP% "*.pro" "%GBG%\%GAM%\%CONS%\%AT8H%"
%CPYTYP% "*.obx" "%GBG%\%GAM%\%CONS%\%AT8H%"
%CPYTYP% "*.xex" "%GBG%\%GAM%\%CONS%\%AT8H%"
%CPYTYP% "*.unf" "%GBG%\%GAM%\%CONS%\%NES%"
%CPYTYP% "*.nsf" "%GBG%\%GAM%\%CONS%\%NES%"
%CPYTYP% "*.nes" "%GBG%\%GAM%\%CONS%\%NES%"
%CPYTYP% "*.mx1" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.mx2" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.gbc" "%GBG%\%GAM%\%CONS%\%NGBC%"
%CPYTYP% "*.a78" "%GBG%\%GAM%\%CONS%\%AT78%"
%CPYTYP% "*.a52" "%GBG%\%GAM%\%CONS%\%AT52%"
%CPYTYP% "*.sgb" "%GBG%\%GAM%\%CONS%\%NGBA%"
%CPYTYP% "*.gba" "%GBG%\%GAM%\%CONS%\%NGBA%"
%CPYTYP% "*.int" "%GBG%\%GAM%\%CONS%\%INTEL%"
%CPYTYP% "*.swf" "%GBG%\%GAM%\%CONS%\%FLASH%"
%CPYTYP% "*.adf" "%GBG%\%GAM%\%CONS%\%CAMIG%"
%CPYTYP% "*.col" "%GBG%\%GAM%\%CONS%\%COLEC%"
%CPYTYP% "*.gcz" "%GBG%\%GAM%\%CONS%\%NGC%"
%CPYTYP% "*.gcm" "%GBG%\%GAM%\%CONS%\%NGC%"
%CPYTYP% "*.ciso" "%GBG%\%GAM%\%CONS%\%WII%"
%CPYTYP% "*.elf" "%GBG%\%GAM%\%CONS%\%WII%"
%CPYTYP% "*.dol" "%GBG%\%GAM%\%CONS%\%WII%"
%CPYTYP% "*.wad" "%GBG%\%GAM%\%CONS%\%WII%"
%CPYTYP% "*.wbfs" "%GBG%\%GAM%\%CONS%\%WII%"
%CPYTYP% "*.dim" "%GBG%\%GAM%\%CONS%\%X68K%"
%CPYTYP% "*.2hd" "%GBG%\%GAM%\%CONS%\%X68K%"
%CPYTYP% "*.2dd" "%GBG%\%GAM%\%CONS%\%X68K%"
%CPYTYP% "*.88d" "%GBG%\%GAM%\%CONS%\%X68K%"
%CPYTYP% "*.2hq" "%GBG%\%GAM%\%CONS%\%X68K%"
%CPYTYP% "*.32x" "%GBG%\%GAM%\%CONS%\%SG32X%"
%CPYTYP% "*.mx1" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.mx2" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.di1" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.di2" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.360" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.720" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.ri" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.sc" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.cas" "%GBG%\%GAM%\%CONS%\%MSX%"
%CPYTYP% "*.d98" "%GBG%\%GAM%\%CONS%\%PC98%"
%CPYTYP% "*.2hd" "%GBG%\%GAM%\%CONS%\%PC98%"
%CPYTYP% "*.thd" "%GBG%\%GAM%\%CONS%\%PC98%"
%CPYTYP% "*.nhd" "%GBG%\%GAM%\%CONS%\%PC98%"
exit /b

:FILES
for /f "delims=" %%a in ('dir /b/a-d-h "*.*"') do (
set ITERN=%%~nxa
%CPYTYP% "%%~a" "%GBG%\%ROMJ%"
)

:FOLDERS
for /f "delims=" %%a in ('dir /b/ad-h') do (
set ITERN=%%~a
call :%CPYV%
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete^Unidentified files were moved to the RJ-Sort Folder." /Stop /timeout:1

:quitout
