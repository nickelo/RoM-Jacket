set ACTNAME=
set ACTFILE=
set urlNthL=46
set RCBRWSURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set RCBRWSURL=%%~a
for /f "delims=" %%a in ("%RCBRWSURL%") do (
set ACTNAME=%%~na
set ACTFILE=%%~a
)

:RCBRWSAUTO
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading RomCollectionBrowser" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XBMC%\%RCBRWS%" "%MIR1%/%RCBRWSURL%" "%MIR2%/%RCBRWSURL%" "%MIR3%/%RCBRWSURL%" "%MIR4%/%RCBRWSURL%" "%MIR5%/%RCBRWSURL%" 
for /f "delims=" %%a in ('dir /s/b/a-d "%GBC%\net\%XBMC%\%RCBRWS%\%RCBRWS%.zip"') do (
set RCBRWSXE=%%~a
SET RCBRWSFILE=%%~nxa
)
set ACTNAME=
set ACTFILE=
set urlNthL=73
set RCBRWS2URL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set RCBRWS2URL=%%~a
for /f "delims=" %%a in ("%RCBRWS2URL%") do (
set ACTNAME=%%~na
set ACTFILE=%%~a
)

:RCBRWS2AUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%XBMC%\%RCBRWS%" "%MIR1%/%RCBRWS2URL%" "%MIR2%/%RCBRWS2URL%" "%MIR3%/%RCBRWS2URL%" "%MIR4%/%RCBRWS2URL%" "%MIR5%/%RCBRWS2URL%" 
%BSTRT% "%WFINS%" "RJ_GUI" "Download Complete" /Stop /timeout:1
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%XBMC%\%RCBRWS%\service.zip"') do (
set RCBRWS2XE=%%~a
set RCBRWS2FILE=%%~nxa
)
:no_RCBRWS
popd
