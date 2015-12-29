set urlNthL=62
set GBURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set GBURL=%%~a
popd
:GBAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%GBRWS%" "%MIR1%/%GBURL%" "%MIR2%/%GBURL%" "%MIR3%/%GBURL%" "%MIR4%/%GBURL%" "%MIR5%/%GBURL%"
for /f "delims=" %%a in ('dir /b/a-d/s "%GBC%\net\%GBRWS%\*.zip"') do set GBRWSPLUGINXE=%%~a
for /f "delims=" %%a in ('dir /b "%GBRWSPLUGINXE%"') do set GBRWSPLUGINFILE=%%~nxa
