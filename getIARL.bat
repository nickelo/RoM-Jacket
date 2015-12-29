set ACTNAME=
set ACTFILE=
set urlNthL=54
set IARLURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set IARLURL=%%~a
popd
for /f "delims=" %%a in ("%IARLURL%") do (
set ACTNAME=%%~na
set ACTFILE=%%~a
)


:IARLAUTO
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Internet Archive ROM Launcher" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --auto-file-renaming=false --conditional-get=true --dir="%GBC%\net\%XBMC%\IARL" "%MIR1%/%IARLURL%" "%MIR2%/%IARLURL%" "%MIR3%/%IARLURL%" "%MIR4%/%IARLURL%" "%MIR5%/%IARLURL%" 
for /f "delims=" %%a in ('dir /s/b/a-d "%GBC%\net\%XBMC%\IARL\*.zip"') do (
set IARLXE=%%~a
set IARLNE=%%~na
SET IARLFILE=%%~nxa
)
if not exist "%GBC%\net\%XBMC%\IARL\%IARLNE%.zip" goto :no_IARL
goto :IARL2AUTO

:no_IARL
%BSTRT% "%WFINS%" "RJ_GUI" "%IARL% not found" /Stop /timeout:1
goto :QUITOUT
:IARL2AUTO
%BSTRT% "%WFINS%" "RJ_GUI" "Download Complete" /Stop /timeout:1
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\IARL\%IARLFILE%" -o"%XBAPDTA%\addons"
:QUITOUT