set urlNthL=62
set MBAHKURL=

pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set MBAHKURL=%%~a
popd


:MBAHKAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%GBRWS%" "%MIR1%/%MBAHKURL%" "%MIR2%/%MBAHKURL%" "%MIR3%/%MBAHKURL%" "%MIR4%/%MBAHKURL%" "%MIR5%/%MBAHKURL%"
for %%A in ("%GBC%\net\%GBRWS%\*.7z") do set MBAHKXE=%%~A
for /f "delims=" %%a in ('dir /b "%MBAHKXE%"') do set MBAHKFILE=%%~nxa
