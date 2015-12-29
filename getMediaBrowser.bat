if exist "%MBRWSFILE%" exit /b
set urlNthL=56
set MBRWSURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set MBRWSURL=%%~a
popd

:MBRWSAUTO
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading Mediabrowser"  /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%MBRWS%" "%MIR1%/%MBRWSURL%" "%MIR2%/%MBRWSURL%" "%MIR3%/%MBRWSURL%" "%MIR4%/%MBRWSURL%" "%MIR5%/%MBRWSURL%"
for %%A in ("%GBC%\net\%MBRWS%\*.msi") do set MBRWSXE=%%~A
if not exist "%MBRWSXE%" goto :nothere
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /sound /timeout:1
for /f "delims=" %%a in ('dir /b "%MBRWSXE%"') do set MBRWSFILE=%%~a
exit /b
:nothere
%BSTRT% "%WFINS%" "RJ_GUI" "Mediabrowser could not be downloaded." /Stop /sound /timeout:1
