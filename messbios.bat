del /q "%GBC%\crc.ini"
call "%GBC%\messrestore.bat">>"%GBC%\logs\messrestore.log"
mkdir "%GBE%\%EMUZ%\%MESS%\roms"
pushd "%GBC%\net\%BIOS%"MESSCOPY
%BSTRT% "%WFINS%" "RJ_GUI" "Select" /stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Index Type^^HASH^Check all files against a crc hash database^^NAME^Match all files against known BIOS filenames" "HASH;NAME" /DB=2
if %ERRORLEVEL%==1 goto :CRC
if %ERRORLEVEL%==1 goto :MESSCOPY
goto :MESSCOPY

:MESSCOPY
%BSTRT% "%WBUSY%" "RJ_GUI" "Copying MESS BIOS files." /marquee
call "%GBC%\messcopy.bat">>"%GBC%\logs\messcopy.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /timeout:1
exit /b

:CRC
%BSTRT% "%WBUSY%" "RJ_GUI" "Matching MESS BIOS files." /marquee
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
call "%GBC%\messcrc.bat">>"%GBC%\logs\messcrc.log"
exit /b

:updtbios
move /y "%BIOSNAME%" "%GBE%\%EMUZ%\Mess\roms" && rename "%GBE%\%EMUZ%\Mess\roms\%BIOSN%" "%MESSBN%" && move /y "%BIOSNAME%" "%GBG%\%ROMJ%\SORTED ARCHIVE\ZIPs"
