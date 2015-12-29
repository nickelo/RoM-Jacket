pushd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading/Installing Console Info" /marquee
:dlCXML
mkdir "%GBC%\net\%CXML%"
set urlNthL=70
set CXMLURL=
for /f "delims=" %%a in ('Readline.exe "%GBC%\%INDX%" /L:%urlNthL%') do set CXMLURL=%%~a


:CXMLAUTO
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\%CXML%" "%MIR1%/%CXMLURL%" "%MIR2%/%CXMLURL%" "%MIR3%/%CXMLURL%" "%MIR4%/%CXMLURL%" "%MIR5%/%CXMLURL%"
for %%A in ("%GBC%\net\%CXML%\*.zip") do set CXMLXE=%%~A
if "%CXMLXE%"=="" exit /b
for /f "delims=" %%a in ('dir /b "%CXMLXE%"') do set CXMLFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%CXML%\%CXMLFILE%" -o"%GBC%\net\%CXML%"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%GBC%\net\%CXML%\%%~a\*.xml" "%GBG%\%GAM%\%CONS%\%%~a"
if "%CXMLFILE%"=="" goto notFound
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
goto :finCXML
:notFound
%BSTRT% "%WFINS%" "RJ_GUI" "Not Found" /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "XML data could not be found." "Download;Quit"
if %ERRORLEVEL%==1 goto :dlCXML
if %ERRORLEVEL%==2 goto :finXML
:finCXML
