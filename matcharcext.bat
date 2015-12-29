SET FNDEXT=
if "%ARCHIVE%"=="1" goto :DOUBLED
if "%DISKIMG%"=="1" goto :DISKIMG
if /I "%ARCE%"==" " exit /b
if /I "%ARCE%"=="  " exit /b
if /I "%ARCE%"==".ws" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%BWS%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".wsc" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%BWSC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".x64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%CM64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".t64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%CM64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".g64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%CM64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".d64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%CM64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".prg" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%CM64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".xex" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT8H%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".atr" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT8H%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".obx" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT8H%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".pro" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT8H%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".ngc" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NEOPKTC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".neo" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NEOPKTC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".ngp" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NEOPKT%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".npk" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NEOPKT%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".int" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%INTEL%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".col" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%COLEC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".a78" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT78%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".a26" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT26%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".a52" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AT52%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".st" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%ATST%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".msa" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%ATST%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".lnx" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%LYNX%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".v64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%N64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gb" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NGB%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".z64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%N64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".n64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%N64%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".srl" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NDS%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".nds" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NDS%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".nd5" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NDS%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gbc" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NGBC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".swf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%FLASH%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".jso" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%PSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".pbp" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%PSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".prx" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%PSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".ciso" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%PSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".cso" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%PSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".j64" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%JAG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".jag" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%JAG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".ciso" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%WII%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".elf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%WII%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".dol" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%WII%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".wad" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%WII%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".wbfs" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%WII%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sgb" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NGBA%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gba" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NGBA%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".vb" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NVB%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".vboy" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NVB%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".mx2" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%MSX%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".mx1" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%MSX%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".unf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NES%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".nsf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NES%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".nes" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NES%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".smc" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SNES%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".pco" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEGAP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gen" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEGAG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".tzx" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%ZXSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sna" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%ZXSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".z80" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%ZXSP%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sg" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEG1K%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sms" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEGMS%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gg" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEGG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".32x" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SG32X%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sgx" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SGFX%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sad" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SAMC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".mgt" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SAMC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sdf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SAMC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sbt" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SAMC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".td0" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SAMC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".cbm" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SAMC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".pce" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%TG16%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".d77" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%FM7%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".t77" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%FM7%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".vfd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%FM7%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".dim" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%X68K%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gcz" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NGC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".gcm" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NGC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".vec" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%VECTX%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".pgm" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAMs%\%CONS%\%EMARC%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".fds" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NFAM%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".sfc" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SFAM%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".nez" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NES%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".md" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEGAG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".smd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%SEGAG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".ngc" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%NEOPKT%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".adf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%CAMIG%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".rp2" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AMSTR%" "%ARCP%" && SET FNDEXT=1
if /I "%ARCE%"==".dsk" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%GAM%\%CONS%\%AMSTR%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".ccd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".cdz" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".cdi" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".iso" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".img" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".nrg" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".mdf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".mds" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".cue" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".bin" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".adf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".rom" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".do" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".po" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".2mg" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".cas" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".xdf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".ipf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".dsk" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".tap" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".wav" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".hdf" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".dup" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".d88" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".2hd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".2dd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".fdi" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".dsd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if /i "%ARCE%"==".ssd" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" "%ARCP%" && SET FNDEXT=1
if "%FNDEXT%"=="1" move /Y "%ZIPN%" "%GBG%\%ROMJ%\SORTED ARCHIVES"
if "%FNDEXT%"=="1" set /a INARCH+=1
if "%FNDEXT%"=="1" %BSTRT% "%WBUSY%" "RJ_GUI" "FOUND %INARCH% ROMS in archives." /marquee
exit /b
:DOUBLED
if "%FNDEXT%"=="1" set /a INARCH+=1
"%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%"
move /y "%ZIPN%" "%GBG%\%ROMJ%\SORTED ARCHIVES" && attrib +h "%GBG%\%ROMJ%\SORTED ARCHIVES\%ZIPN%"
%BSTRT% "%WBUSY%" "RJ_GUI" "FOUND %INARCH% ROMS in archives." /marquee
exit /b
:DISKIMG
if "%FNDEXT%"=="1" set /a INARCH+=1
"%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%"
move /y "%ZIPN%" "%GBG%\%ROMJ%\SORTED ARCHIVES" && attrib +h "%GBG%\%ROMJ%\SORTED ARCHIVES\%ZIPN%"
%BSTRT% "%WBUSY%" "RJ_GUI" "FOUND %INARCH% ROMS in archives." /marquee
exit /b
