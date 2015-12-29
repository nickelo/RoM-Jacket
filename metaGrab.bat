set BACKPATH=Backdrop
set BACKEXTN=jpg
set BACKFILE=%BCKD%.zip
set BACKPATH=Backdrop
for %%a in ("%GBC%\net\%BCKD%") do set BACKDEST=%%~a
if "%BCROP%"=="1" call :BACKDST
set BACKNAME=Backdrop
if "%BCROP%"=="1" set BACKEXTN=png
if "%BCROP%"=="1" set BACKNAME=CROPPED
if "%BCROP%"=="1" set BACKPATH=Backdrop/CROPPED
if "%BCROP%"=="1" set BACKFILE=%BCKD%\CROPPED.zip
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do rd "%%~a"
if "%PRECONF%"=="1" goto :SETALL
if "%MMD%"=="1" goto :LIBONLY
SET BDEX=
SET LDEX=
SET IDEX=

:SETUP
set METYP=
"%GBC%\wbox.exe" "RJ_GUI" "############^Dynamic Downloading^##################^Library is in %DISPASPCT%^^Select the type of media you would like to download for your CURRENT Library" "Backdrops;Icons;Logos;IMAGES;Videos;All;MainMenu"
if %ERRORLEVEL%==1 goto :SETBCK
if %ERRORLEVEL%==2 goto :SETICN
if %ERRORLEVEL%==3 goto :SETBAN
if %ERRORLEVEL%==4 goto :SETIMG
if %ERRORLEVEL%==5 goto :SETVID
if %ERRORLEVEL%==6 goto :SETALL
if %ERRORLEVEL%==7 goto :EOF
goto :EOF

:BACKDST
for %%a in ("%GBC%\net\%BCKD%\CROPPED") do SET BACKDEST=%%~a
exit /b

:SETIMG
set METYP=IMG
SET BDEX=1
SET LDEX=1
SET IDEX=1
goto :BEGINGET

:SETBCK
set METYP=BCK
SET BDEX=1
goto :BEGINGET

:SETICN
set METYP=ICN
SET IDEX=1
goto :BEGINGET

:SETBAN
set METYP=BAN
SET LDEX=1
goto :BEGINGET

:SETVID
set METYP=VID
set VDEX=1
goto :BEGINGET

:SETALL
set METYP=ALL
SET BDEX=1
SET LDEX=1
SET IDEX=1
SET VDEX=1
goto :BEGINGET

:BEGINGET
del /q "%GBC%\conset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\conset.ini"
pushd "%GBC%"
"%GBC%\fart.exe" "%GBC%\conset.ini" "\"" --remove
popd

:SELALL
del /q "%GBC%\curlist.ini"
"%GBC%\multisel.exe" "%GBC%\conset.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :COMPELTE
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CONSNM=%%~a
call :CNCHK
)
exit /b

:LIBONLY
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do rd "%GBG%\%GAM%\%CONS%\%%~a"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set CONSNM=%%~a
call :CNCHK
)
exit /b

:CNCHK
SET CONXST=
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do if /i "%CONSNM%"=="%%~a" call :GETSUM
if "%CONSNM%"=="ALL" exit /b
if "%CONSNM%"=="----------" exit /b
if "%CONXST%"=="" "%GBC%\wbox.exe" "RJ_GUI" "%CONSNM% does not have downloadable images." "OK" /TM=1
exit /b

:GETSUM
SET CONXST=1
if "%METYP%"=="ALL" goto :GETALL
if "%METYP%"=="IMG" goto :GETIMG
if "%METYP%"=="VID" goto :GETVID
if "%METYP%"=="BCK" goto :GETBCK
if "%METYP%"=="ICN" goto :GETICN
if "%METYP%"=="BAN" goto :GETBAN
exit /b

:GETIMG
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading all %CONSNM% Image-MetaData" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\Folder" "%MIR1%/Folder/%CONSNM%.png" "%MIR2%/Folder/%CONSNM%.png" "%MIR3%/Folder/%CONSNM%.png" "%MIR4%/Folder/%CONSNM%.png" "%MIR5%/Folder/%CONSNM%.png"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\Banner" "%MIR1%/Banner/%CONSNM%.png" "%MIR2%/Banner/%CONSNM%.png" "%MIR3%/Banner/%CONSNM%.png" "%MIR4%/Banner/%CONSNM%.png" "%MIR5%/Banner/%CONSNM%.png"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR2%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR3%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR4%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR5%/%BACKPATH%/%CONSNM%.%BACKEXTN%"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR2%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR3%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR4%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR5%/%BACKPATH%/%CONSNM%1.%BACKEXTN%"
if not exist "%GBC%\net\%VIDE%\%CONSNM%.mp4" "%GBC%\wbox.exe" "RJ_GUI" "Could not download the %CONSNM% video" "OK" /TM=1
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
exit /b


:GETALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading all %CONSNM% MetaData" /marquee
if "%PRECONF%" NEQ "1" %WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\Folder" "%MIR1%/Folder/%CONSNM%.png" "%MIR2%/Folder/%CONSNM%.png" "%MIR3%/Folder/%CONSNM%.png" "%MIR4%/Folder/%CONSNM%.png" "%MIR5%/Folder/%CONSNM%.png"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\Banner" "%MIR1%/Banner/%CONSNM%.png" "%MIR2%/Banner/%CONSNM%.png" "%MIR3%/Banner/%CONSNM%.png" "%MIR4%/Banner/%CONSNM%.png" "%MIR5%/Banner/%CONSNM%.png"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR2%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR3%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR4%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR5%/%BACKPATH%/%CONSNM%.%BACKEXTN%"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR2%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR3%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR4%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR5%/%BACKPATH%/%CONSNM%1.%BACKEXTN%"
%WSTRT% "%ARIA2C%" --connect-timeout=10 --split=4 --file-allocation=none --conditional-get=true --dir="%GBC%\net\%VIDE%" "%MIR7%/%VIDE%/%CONSNM%/%CONSNM%.mp4"  "%MIR8%/%VIDE%/%CONSNM%/%CONSNM%.mp4" "%MIR9%/%VIDE%/%CONSNM%/%CONSNM%.mp4" "%MIR10%/%VIDE%/%CONSNM%/%CONSNM%.mp4"
if not exist "%GBC%\net\%VIDE%\%CONSNM%.mp4" "%GBC%\wbox.exe" "RJ_GUI" "Could not download the %CONSNM% video" "OK" /TM=1
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
exit /b

:GETBCK
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading the %CONSNM% Backdrops" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR2%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR3%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR4%/%BACKPATH%/%CONSNM%.%BACKEXTN%" "%MIR5%/%BACKPATH%/%CONSNM%.%BACKEXTN%"
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%BACKDEST%" "%MIR1%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR2%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR3%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR4%/%BACKPATH%/%CONSNM%1.%BACKEXTN%" "%MIR5%/%BACKPATH%/%CONSNM%1.%BACKEXTN%"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
exit /b
:GETICN
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading the %CONSNM% Icon" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\Folder" "%MIR1%/Folder/%CONSNM%.png" "%MIR2%/Folder/%CONSNM%.png" "%MIR3%/Folder/%CONSNM%.png" "%MIR4%/Folder/%CONSNM%.png" "%MIR5%/Folder/%CONSNM%.png"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
exit /b
:GETBAN
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading the %CONSNM% Logo" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 -s5 -j5 -k1M --file-allocation=none --conditional-get=true --dir="%GBC%\net\Banner" "%MIR1%/Banner/%CONSNM%.png" "%MIR2%/Banner/%CONSNM%.png" "%MIR3%/Banner/%CONSNM%.png" "%MIR4%/Banner/%CONSNM%.png" "%MIR5%/Banner/%CONSNM%.png"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
exit /b
:GETVID
mkdir "%GBC%\net\%VIDE%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Downloading %CONSNM% Video" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=10 --split=4 --file-allocation=none --conditional-get=true --dir="%GBC%\net\%VIDE%" "%MIR7%/%VIDE%/%CONSNM%/%CONSNM%.mp4"  "%MIR8%/%VIDE%/%CONSNM%/%CONSNM%.mp4" "%MIR9%/%VIDE%/%CONSNM%/%CONSNM%.mp4" "%MIR10%/%VIDE%/%CONSNM%/%CONSNM%.mp4"
if not exist "%GBC%\net\%VIDE%\%CONSNM%.mp4" %BSTRT% "%WFINS%" "RJ_GUI" "Could not download the %CONSNM% video." /Stop /timeout:1
if not exist "%GBC%\net\%VIDE%\%CONSNM%.mp4" exit /b
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:1
exit /b

:COMPLETE
