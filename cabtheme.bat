%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing RJ's Cabrio Theme"  /marquee

set urlNthL=66
set CABTHEMEURL=

pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set CABTHEMEURL=%%~a
popd

:CABTHEMEAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%CABR%" "%MIR1%/%CABTHEMEURL%" "%MIR2%/%CABTHEMEURL%" "%MIR3%/%CABTHEMEURL%" "%MIR4%/%CABTHEMEURL%" "%MIR5%/%CABTHEMEURL%"
for %%A in ("%GBC%\net\%CABR%\*.7z") do set CABTHEMEXE=%%~A
for /f "delims=" %%a in ('dir /b "%CABTHEMEXE%"') do set CABTHEMEFILE=%%~nxa
if not exist "%CABTHEMEXE%" %BSTRT% "%WFINS%" "RJ_GUI" "Theme Not Found." /Stop /sound /timeout:1
if not exist "%CABTHEMEXE%" GOTO :THEMECOMPLETE
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\pixmaps" "arrow.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\pixmaps" "button_blue.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\pixmaps" "button_red.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\themes\carousel" "submenu-item.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\themes\carousel" "menu-item.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\themes\carousel" "RJ.png"
pushd "%GBC%\net\%CABR%"
"%GBC%\fart.exe" "theme.xml" background.jpg RJ.png
popd
%BSTRT% "%WFINS%" "RJ_GUI" "%CABTHEME% Installed." /Stop /sound /timeout:1
:THEMECOMPLETE
