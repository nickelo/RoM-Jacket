:BEGINEMUST
if "%rfecancel%"=="1" goto :rfeout
set RFEADD=1
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%MIRLOC%\%MIRDN%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
set RFEADD=	
if not exist "%GBC%\curlist.ini" goto :rfeout
if "%rfecancel%"=="1" goto :rfeout

%BSTRT% "%WBUSY%" "RJ_GUI" "Configuring retroFE" /marquee
CALL "%GBC%\reAddAll.bat">>"%GBC%\logs\reAddAll.log"
mkdir "%RFE%\layouts\RJ"
if not exist "%RFE%\settings.orig" rename "%RFE%\settings.conf" "settings.orig"
if exist "%RFE%\settings.bak" del /q "%RFE%\settings.bak"
rename "%RFE%\settings.conf" "settings.bak"
copy /y "%GBC%\net\%RTFE%\settings.conf" "%RFE%"
copy /y "%GBC%\net\%RTFE%\controls.conf" "%RFE%"
copy /y "%GBC%\net\%RTFE%\menu.xml" "%RFE%\collections\Main"
copy /y "%GBC%\net\%RTFE%\bsl.conf" "%RFE%\launchers\batchScriptLauncher.conf"
copy /y "%BCKDEST%\Favorites.%BACKEXTN%" "%RFE%\collections\Main\bg.%BACKEXTN%"
copy /y "%GBC%\net\%RTFE%\RJ\*.*" "%RFE%\layouts\RJ"
if "%DISPASPCT%"=="4x3" copy /y "%GBC%\net\%RTFE%\4x3\*.*" "%RFE%\layouts\RJ"
%BSTRT% "%WBUSY%" "RJ_GUI" "Configuration Generated" /stop /timeout:1
	
:MKSC
pushd "%RFE%"
"%GBC%\wbox.exe" "RJ_GUI" "Show Nice-Names?" "Nice;(Parenth);[Bracket];Both" /DB=1
if %errorlevel%==1 goto :NICE
if %errorlevel%==2 goto :PARENTH
if %errorlevel%==3 goto :BRACK
if %errorlevel%==4 goto :BOTH
goto :QUITOUT

:NICE
"%GBC%\fart.exe" "settings.conf" [DELIM1] "no"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "no"
goto :RFECONFIGD

:PARENTH
"%GBC%\fart.exe" "settings.conf" [DELIM1] "yes"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "no"
goto :RFECONFIGD


:BRACK
"%GBC%\fart.exe" "settings.conf" [DELIM1] "no"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "yes"
goto :RFECONFIGD

:BOTH
"%GBC%\fart.exe" "settings.conf" [DELIM1] "yes"
"%GBC%\fart.exe" "settings.conf" [DELIM2] "yes"
goto :RFECONFIGD


:RFECONFIGD
"%GBC%\fart.exe" "launchers\batchScriptLauncher.conf" [BSLPTH] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
popd
%BSTRT% "%WFINS%" "RJ_GUI" "retroFE Configured" /Stop /timeout:1
:rfeout
:cbout
exit /b
