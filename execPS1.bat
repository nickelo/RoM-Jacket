set BIOSLOC=ePSXe\bios
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph*.bin"') do set PS1BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph1001.bin"') do set PS1BIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph5501.bin"') do set USBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph5502.bin"') do set EUBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%BIOSLOC%\scph5500.bin"') do set JPBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%PSX%\BIOS\%PS1BIOS%" "%GBC%\net\%EXECT%\%PS1%"
copy /y "%GBE%\%EMUZ%\%PSX%\BIOS\%USBIOS%" "%GBC%\net\%EXECT%\%PS1%"
copy /y "%GBE%\%EMUZ%\%PSX%\BIOS\%EUBIOS%" "%GBC%\net\%EXECT%\%PS1%"
copy /y "%GBE%\%EMUZ%\%PSX%\BIOS\%JPBIOS%" "%GBC%\net\%EXECT%\%PS1%"
echo.copy /y "%PS1BIOS%.bak" "BIOS\%PS1BIOS%">>"%GBC%\bioscpy.ini"
pushd "%GBC%\net\%EXECT%\%PS1%"
"%GBC%\inifile.exe" "%PSX%.ini" [BIOS] PS1=bios\%PS1BIOS%
CALL "%GBC%\epsxeInj.bat"
Card2=
popd
for /d %%g IN ("%CSTM%") DO (
  %PS1%\%PSX%.ini" "%CD%"
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\Ps1exeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PS1%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".cdz" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdz
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1