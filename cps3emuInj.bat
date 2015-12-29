SET P1JT=P1k
SET P2JT=P2k
if "%P1JOYTYPE%"=="JOY" SET P1JT=P1j
if "%P2JOYTYPE%"=="JOY" SET P2JT=P2j
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "Plugins.cfg" [SCANLINE] 0
"%GBC%\fart.exe" "Plugins.cfg" [SCANTYPE] 0
"%GBC%\fart.exe" "EMULATOR.ini" [VTX] 0
"%GBC%\fart.exe" "EMULATOR.ini" [TILE] 0
"%GBC%\fart.exe" "EMULATOR.ini" [MAN] 0
"%GBC%\fart.exe" "EMULATOR.ini" [VSYNC] 0
"%GBC%\fart.exe" "EMULATOR.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "EMULATOR.ini" [REZY] %DREZY%
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
call "%GBC%\resolutiontest.bat">>"%GBC%\logs\resolutionTest.log"
"%GBC%\fart.exe" "EMULATOR.ini" [REZX] %REZX%
"%GBC%\fart.exe" "EMULATOR.ini" [REZY] %REZY%
echo."%REZX%">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."%REZY%">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:TILE
"%GBC%\wbox.exe" "RJ_GUI" "Enable tilemap filtering?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :TILEON
if %ERRORLEVEL%==2 goto :TILEOFF
goto :TILEOFF

:TILEON
"%GBC%\fart.exe" "EMULATOR.ini" [TILE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:TILEOFF
"%GBC%\fart.exe" "EMULATOR.ini" [TILE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Enable Scanlines" "Off;BRIGHT;50;FULL"
if %ERRORLEVEL%==1 goto :SCANOFF
if %ERRORLEVEL%==2 goto :BRITESCAN
if %ERRORLEVEL%==3 goto :HALFSCAN
if %ERRORLEVEL%==4 goto :FULLSCAN
goto :QUITOUT

:SCANOFF
"%GBC%\fart.exe" "EMULATOR.ini" [SCAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:BRITESCAN
"%GBC%\fart.exe" "EMULATOR.ini" [SCAN] 4
"%GBC%\fart.exe" "Plugins.cfg" [SCANTYPE] 2
"%GBC%\fart.exe" "Plugins.cfg" [SCANL] 25
echo."4">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
echo."25">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:HALFSCAN
"%GBC%\fart.exe" "EMULATOR.ini" [SCAN] 9
echo."9">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:FULLSCAN
"%GBC%\fart.exe" "EMULATOR.ini" [SCAN] 8
echo."8">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT

:MANT
"%GBC%\wbox.exe" "RJ_GUI" "Enable DX Managed Textures?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :MANON
if %ERRORLEVEL%==2 goto :MANOFF
goto :QUITOUT

:MANON
"%GBC%\fart.exe" "EMULATOR.ini" [MAN] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VTX
:MANOFF
"%GBC%\fart.exe" "EMULATOR.ini" [MAN] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VTX

:VTX
"%GBC%\wbox.exe" "RJ_GUI" "Enable Software Vertex Processing?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :VTXON
if %ERRORLEVEL%==2 goto :VTXOFF
goto :QUITOUT

:VTXON
"%GBC%\fart.exe" "EMULATOR.ini" [VTX] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC
:VTXOFF
"%GBC%\fart.exe" "EMULATOR.ini" [VTX] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :VSYNC


:VSYNC
"%GBC%\wbox.exe" "RJ_GUI" "Enable VSYNC?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :VON
if %ERRORLEVEL%==2 goto :VOFF
goto :QUITOUT

:VON
"%GBC%\fart.exe" "EMULATOR.ini" [VSYNC] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :M2EMUCOMP
:VOFF
"%GBC%\fart.exe" "EMULATOR.ini" [VSYNC] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :M2EMUCOMP


:M2EMUCOMP
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1