if "%PRVST%"=="1" goto :PRESETS
:NOPRESET

if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "qt.ini" [DISPDRV] 1
"%GBC%\fart.exe" "config.ini" [GBABIOS] --remove
"%GBC%\fart.exe" "config.ini" [USEBIOS] 0
"%GBC%\fart.exe" "config.ini" [LOCKASPECT] 0
"%GBC%\fart.exe" "config.ini" [FPSTARGET] 0
"%GBC%\fart.exe" "config.ini" [RESAMPVID] 0
"%GBC%\fart.exe" "config.ini" [REWENABLE] 0
"%GBC%\fart.exe" "config.ini" [FRMSKPNUM] 0
"%GBC%\fart.exe" "config.ini" [SYNCSND] 1
"%GBC%\fart.exe" "config.ini" [SYNCVID] 0
"%GBC%\fart.exe" "config.ini" [REAMPVID] 0
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1

:USEBIOS
if "%NGBABIOS%"=="" goto :NOBIOS
"%GBC%\wbox.exe" "RJ_GUI" "Use gba BIOS?" "Use;Ignore" /DB=1
if %errorlevel%==1 goto :USEBIOS
if %errorlevel%==2 goto :NOBIOS
goto :QUITOUT

:USEBIOS
"%GBC%\fart.exe" "config.ini" [USEBIOS] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT

:NOBIOS
"%GBC%\fart.exe" "config.ini" [USEBIOS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :ASPCT

:ASPCT
"%GBC%\wbox.exe" "RJ_GUI" "Lock Aspect Ratio?" "Lock;Stretch" /DB=1
if %errorlevel%==1 goto :LOCKA
if %errorlevel%==2 goto :NOLOCK
goto :QUITOUT

:LOCKA
"%GBC%\fart.exe" "config.ini" [LOCKASPECT] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC

:NOLOCK
"%GBC%\fart.exe" "config.ini" [LOCKASPECT] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SYNC

:SYNC
"%GBC%\wbox.exe" "RJ_GUI" "Sync" "Audio;Video;Both;None" /DB=1
if %errorlevel%==1 goto :ASYNC
if %errorlevel%==2 goto :VIDSYNC
if %errorlevel%==3 goto :BOTHSYNC
if %errorlevel%==4 goto :NOSYNC
goto :QUITOUT

:ASYNC
"%GBC%\fart.exe" "config.ini" [SYNCSND] 1
"%GBC%\fart.exe" "config.ini" [SYNCVID] 0
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESAMP

:VIDSYNC
"%GBC%\fart.exe" "config.ini" [SYNCSND] 0
"%GBC%\fart.exe" "config.ini" [SYNCVID] 1
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESAMP

:BOTHSYNC
"%GBC%\fart.exe" "config.ini" [SYNCSND] 1
"%GBC%\fart.exe" "config.ini" [SYNCVID] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESAMP

:NOSYNC
"%GBC%\fart.exe" "config.ini" [SYNCSND] 0
"%GBC%\fart.exe" "config.ini" [SYNCVID] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :RESAMP

:RESAMP
"%GBC%\wbox.exe" "RJ_GUI" "Resample video" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :SAMPLING
if %errorlevel%==2 goto :NOSAMP
goto :QUITOUT

:SAMPLING
"%GBC%\fart.exe" "config.ini" [RESAMPVID] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REWIND

:NOSAMP
"%GBC%\fart.exe" "config.ini" [RESAMPVID] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :REWIND

:REWIND
"%GBC%\wbox.exe" "RJ_GUI" "Enable rewinding?" "Enable;Disable" /DB=1
if %errorlevel%==1 goto :REWINDON
if %errorlevel%==2 goto :NOREWIND
goto :QUITOUT

:REWINDON
"%GBC%\fart.exe" "config.ini" [REWENABLE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DISPDRV
:NOREWIND
"%GBC%\fart.exe" "config.ini" [REWENABLE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :DISPDRV

:DISPDRV
"%GBC%\wbox.exe" "RJ_GUI" "Display Driver" "OpenGL;SDL" /DB=1
if %errorlevel%==1 goto :OPENGL
if %errorlevel%==2 goto :SDL
goto :QUITOUT

:OPENGL
"%GBC%\fart.exe" "qt.ini" [DISPDRV] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MGBACOMP

:SDL
"%GBC%\fart.exe" "qt.ini" [DISPDRV] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MGBACOMP

:MGBACOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1