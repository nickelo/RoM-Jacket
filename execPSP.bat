REM echo.rename "start-*.bat" "jpcsp.bat">>"%GBC%\bioscpy.ini"
REM echo.fart.exe "jpcsp.bat" "@echo off" --remove>>"%GBC%\bioscpy.ini"
REM echo.fart.exe "jpcsp.bat" "goto JAVA32SHELL" "echo WORKING">>"%GBC%\bioscpy.ini"
pushd "%GBC%\net\%EXECT%\%PSP%"
call "%GBC%\ppssppInj.bat">>"%GBC%\logs\ppssppInj.log"
popd
if "%CEMU%"=="%JCPSP%" set INSTOPT=Install
REM if "%CEMU%"=="%PSSP%" set INSTMTHD=You must install %ROMN% and the target computer must have %ARPOP%-bit Java JRE installed.
if "%CEMU%"=="%JCPSP%" set INSTO1=INSTALL
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\PSPexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PSP%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".prx" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] prx
if /I "%%~xa"==".ciso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ciso
if /I "%%~xa"==".cso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cso
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".jso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] jso
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".pbp" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] pbp
if /I "%%~xa"==".prx" set PSPROM=%%~nxa
if /I "%%~xa"==".cso" set PSPROM=%%~nxa
if /I "%%~xa"==".iso" set PSPROM=%%~nxa
if /I "%%~xa"==".jso" set PSPROM=%%~nxa
if /I "%%~xa"==".bin" set PSPROM=%%~nxa
if /I "%%~xa"==".pbp" set PSPROM=%%~nxa
REM if /I "%%~xa"==".ciso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".cso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".jso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [TYP] f
REM if /I "%%~xa"==".pbp" "%GBC%\fart.exe" "*.bat" [TYP] f
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1
