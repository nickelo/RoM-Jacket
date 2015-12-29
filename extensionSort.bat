call "%GBC%\mklist.bat"
CALL "%GBC%\createConsoleDirectories.bat">>"%GBC%\logs\createConsoleDirectories.log"
copy /y "%GBC%\cflct.set" "%GBC%\cflct.ini"
for /f "delims=" %%a in ('dir /s/b/a-d "%GBG%\%ROMJ%\SORTED ARCHIVES"') do attrib +h "%%~a"
for /f "delims=" %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%"') do (
SET SKIPALL=
set CHKFILE=
set ROMFULL=%%~dpnxa
SET ROMIS=%%~dpa
SET ROMID=%%~na
set ROMNAME=%%~nxa
set ROMXT=%%~xa
set /A ROMSZ=%%~za
call :XTNZCHK
call :OUTCHK
)

"%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
exit /b

:XTNZCHK
if "%ROMIS%"=="%GBG%\%ROMJ%\SORTED ARCHIVES\" exit /b
set ROMPTH=%ROMIS:~0,-1%
echo."%ROMNAME%"|%FNDSTR% /I /L /C:bios
if "%ERRORLEVEL%"=="0" goto :BIOSFOUND
echo."%ROMNAME%"|%FNDSTR% /I /L /C:firmware
if "%ERRORLEVEL%"=="0" goto :BIOSFOUND
for /f "delims=" %%a in ('type "%GBC%\cflct.ini"') do (
set XTNZ=%%~a
if /i "%ROMXT%"==".%%~a" SET ROMXT=.%%~a
if /i "%ROMXT%"==".%%~a" SET CHKFILE=1
)
exit /b

:BIOSFOUND
"%GBC%\wbox.exe" "RJ_GUI" "^Is^''%ROMNAME%''^a bios file?^Move it to your bios folder?" "Move;Ignore" /DB=1
if %ERRORLEVEL%==1 goto :MOVEBIOS
if %ERRORLEVEL%==2 goto :CONTINUE
goto :CONTINUE

:MOVEBIOS
move /y "%ROMFULL%" "%GBC%\net\%BIOS%"
exit /b

:CONTINUE
for /f "delims=" %%a in ('type "%GBC%\cflct.ini"') do (
set XTNZ=%%~a
if /i "%ROMXT%"==".%%~a" SET ROMXT=.%%~a
if /i "%ROMXT%"==".%%~a" SET CHKFILE=1
)
exit /b


:OUTCHK
if "%SKIPALL%"=="1" exit /b
if "%QUITSEL%"=="1" exit /b
if "%CHKFILE%"=="" exit /b
if "%ROMIS%"=="%GBG%\%ROMJ%\SORTED ARCHIVES\" exit /b
if not exist "%ROMFULL%" exit /b

if /i "%ROMXT%"==".ccd" CALL :CDPROC
if /i "%ROMXT%"==".cdz" CALL :CDPROC
if /i "%ROMXT%"==".cdi" CALL :CDPROC
if /i "%ROMXT%"==".iso" CALL :CDPROC
if /i "%ROMXT%"==".img" CALL :CDPROC
if /i "%ROMXT%"==".nrg" CALL :CDPROC
if /i "%ROMXT%"==".mdf" CALL :CDPROC
if /i "%ROMXT%"==".mds" CALL :CDPROC
if /i "%ROMXT%"==".cue" CALL :CDPROC
if /i "%ROMXT%"==".zip" CALL :CONFL
if /i "%ROMXT%"==".bin" CALL :CONFL
if /i "%ROMXT%"==".adf" CALL :CONFL
if /i "%ROMXT%"==".rom" CALL :CONFL
if /i "%ROMXT%"==".do" CALL :CONFL
if /i "%ROMXT%"==".po" CALL :CONFL
if /i "%ROMXT%"==".2mg" CALL :CONFL
if /i "%ROMXT%"==".cas" CALL :CONFL
if /i "%ROMXT%"==".xdf" CALL :CONFL
if /i "%ROMXT%"==".ipf" CALL :CONFL
if /i "%ROMXT%"==".dsk" CALL :CONFL
if /i "%ROMXT%"==".tap" CALL :CONFL
if /i "%ROMXT%"==".hdf" CALL :CONFL
if /i "%ROMXT%"==".dup" CALL :CONFL
if /i "%ROMXT%"==".d88" CALL :CONFL
if /i "%ROMXT%"==".2hd" CALL :CONFL
if /i "%ROMXT%"==".2dd" CALL :CONFL
if /i "%ROMXT%"==".fdi" CALL :CONFL
if /i "%ROMXT%"==".dsd" CALL :CONFL
if /i "%ROMXT%"==".ssd" CALL :CONFL
exit /b

:CDPROC
CALL "%GBC%\cdimage.bat">>"%GBC%\logs\cdimage.log"
exit /b
 
:CONFL
CALL "%GBC%\confl.bat">>"%GBC%\logs\confl.log"
exit /b
