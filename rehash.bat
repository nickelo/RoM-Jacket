set REHBTN=2
if "%INARC%"=="1" set REHBTN=1
if not exist "%GBC%\allcrc.ini" goto :REHASH
%BSTRT% "%WFINS%" "RJ_GUI" "Match" /stop /timeout:1
%BSTRT% "%WFINS%" "RJ_GUI" "Match" /stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to regenerate the hash files for the BIOS files you will sort?" "REHASH;KEEP" /DB=%REHBTN%
if %ERRORLEVEL%==1 goto :REHASH
if %ERRORLEVEL%==1 goto :SKIP
goto :SKIP

:REHASH
del /q "%GBC%\allcrc.ini"
"%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing BIOS files"
pushd "%GBC%\net\BIOS"
set REHASH=
for /f "delims=" %%a in ('dir /b/a-d/s "*.bin" "*.mec" "*.rom" "*.img" "*.zip" "*.xfd" "*.atr" "*.doc" "*.exe" "*.dat" "*.crc" "*.u6a" "*.68k" "*.md" "*.pce" "*.wav" "*.nds" "*.gba" "*.bmp" "*.nvm" "*.stc" "*.s19" "*.stc" "*.ram" "*.EROM"') do (
set BIOTA=%%~dpnxa
set BIOTN=%%~nxa
call :ALLCRC
)
popd
%BSTRT% "%WFINS%" "RJ_GUI" "Match" /stop /timeout:1
exit /b

:ALLCRC
pushd "%GBC%"
for /f "tokens=2 delims=:" %%a in ('crc.exe "%BIOTA%"') do echo.%BIOTN%:%%~a:>>"%GBC%\allcrc.ini"
popd
exit /b
:SKIP

