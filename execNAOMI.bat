pushd "%GBC%\net\%EXECT%\%NAOMI%"
"%GBC%\fart.exe" "*.ini" [EMUL] "[EMUPTH]"
popd
copy /y "%GBE%\%EMUZ%\%DMUL%\roms\*" "%GBC%\net\%EXECT%\%NAOMI%"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%CSTCONS%.exe"
echo.mkdir "roms">>"%GBC%\bioscpy.ini"
echo.mkdir "nvram">>"%GBC%\bioscpy.ini"
echo.mkdir "memsaves">>"%GBC%\bioscpy.ini"
echo.mkdir "scache">>"%GBC%\bioscpy.ini"
echo.mkdir "snap">>"%GBC%\bioscpy.ini"
echo.mkdir "sstates">>"%GBC%\bioscpy.ini"
call "%GBC%\dmulInj.bat">>"%GBC%\logs\dmulInj.log"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%DMUL%\roms"') do echo. copy /y "%%~a.bak" "roms\%%~a">>"%GBC%\bioscpy.ini"
for /d %%g IN ("%CSTM%") DO (
SET TYPE=
SET NAROM=
SET EXT=
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\NAOMIexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NAOMI%"
SET ROMXT=%CSTXE%
CALL :INJOXT
popd
)
exit /b
:INJOXT
if /I "%ROMXT%"==".bin" SET TYPE=customrom
if /I "%ROMXT%"==".dat" SET TYPE=customrom
if /I "%ROMXT%"==".gdi" SET TYPE=image
if /I "%ROMXT%"==".zip" SET TYPE=rom
CALL :INJAXT
exit /b
:INJAXT
if "%TYPE%"=="customrom" "%GBC%\fart.exe" "*.bat" [ROM] "\"^%%^CD%%\%%ROMN%%.[EXT]"\"
if "%TYPE%"=="image" "%GBC%\fart.exe" "*.bat" [ROM] "\"^%%^CD%%\%%ROMN%%.[EXT]"\"
if "%TYPE%"=="rom" "%GBC%\fart.exe" "*.bat" [ROM] "%%ROMN%%"
CALL :INJUXT
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1 
exit /b
:INJUXT
"%GBC%\fart.exe" "*.bat" [TYPE] "%TYPE%"
if /I "%ROMXT%"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%ROMXT%"==".dat" "%GBC%\fart.exe" "*.bat" [EXT] dat
if /I "%ROMXT%"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%ROMXT%"==".gdi" "%GBC%\fart.exe" "*.bat" [EXT] gdi
if /I "%ROMXT%"==".bin" call :addto 
if /I "%ROMXT%"==".dat" call :addto 
if /I "%ROMXT%"==".zip" call :addto 
if /I "%ROMXT%"==".gdi" call :addto 
:skp