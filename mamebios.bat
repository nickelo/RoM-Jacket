del /q "%GBC%\crc.ini"
call "%GBC%\mamerestore.bat">>"%GBC%\logs\mamerestore.log"
mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
pushd "%GBC%\net\%BIOS%"

"%GBC%\wbox.exe" "RJ_GUI" "Index Type^^HASH^Check all files against a crc hash database^^NAME^Match all files against known BIOS filenames" "HASH;NAME" /DB=2
if %ERRORLEVEL%==1 goto :CRC
if %ERRORLEVEL%==1 goto :MAMECOPY
goto :MAMECOPY

:MAMECOPY
%BSTRT% "%WBUSY%" "RJ_GUI" "Copying MAME BIOS files." /marquee
call "%GBC%\mamecopy.bat">>"%GBC%\logs\mamecopy.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b

:CRC
%BSTRT% "%WBUSY%" "RJ_GUI" "Matching MAME BIOS files." /marquee
for /f "delims=" %%a in ('dir /b/a-d/s "*.zip"') do (
set BIOSN=%%~nxa
set BIOSNAME=%%~a
call :CRCMATCH
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
popd
exit /b

:CRCMATCH
pushd "%GBC%"
for /f "tokens=2 delims=:" %%a in ('crc.exe "%BIOSNAME%"') do (
SET CRCM=%%~b
call :CRCM
)
popd
exit /b

:CRCM
for %%a in ("%CRCM:~1,8%") do set CRCM=%%~a
call "%GBC%\mamecrc.bat">>"%GBC%\logs\mamecrc.log"
exit /b

:updtbios

move /y "%BIOSNAME%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\" && rename "%BIOSNAME%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%BIOSN%" "%MAMEBN%" && move /y "%BIOSNAME%" "%GBG%\%ROMJ%\SORTED ARCHIVE\ZIPs"
