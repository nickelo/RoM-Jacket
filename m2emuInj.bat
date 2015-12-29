if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "EMULATOR.ini" [JOY] 1
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "EMULATOR.ini" [JOY] 1
if "%P1JOYTYPE%"=="JOY" set P1T=P1Joy
if "%P2JOYTYPE%"=="JOY" set P2T=P2Joy
if "%P1JOYTYPE%"=="KB" set P1T=P1kb
if "%P2JOYTYPE%"=="KB" set P2T=P2kb
"%GBC%\fart.exe" "EMULATOR.ini" [JOY] 0
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "EMULATOR.ini" [VTX] 0
"%GBC%\fart.exe" "EMULATOR.ini" [GOUR] 0
"%GBC%\fart.exe" "EMULATOR.ini" [BI] 1
"%GBC%\fart.exe" "EMULATOR.ini" [TRI] 0
"%GBC%\fart.exe" "EMULATOR.ini" [MIP] 0
"%GBC%\fart.exe" "EMULATOR.ini" [TILE] 0
"%GBC%\fart.exe" "EMULATOR.ini" [MAN] 0
"%GBC%\fart.exe" "EMULATOR.ini" [VSYNC] 0
"%GBC%\fart.exe" "EMULATOR.ini" [TRANS] 0
if "%P1JOYTYPE%"=="JOY" "%GBC%\fart.exe" "EMULATOR.ini" [JOY] 1
if "%P2JOYTYPE%"=="JOY" "%GBC%\fart.exe" "EMULATOR.ini" [JOY] 1
"%GBC%\fart.exe" "EMULATOR.ini" [JOY] 0
"%GBC%\fart.exe" "EMULATOR.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "EMULATOR.ini" [REZY] %DREZY%
if "%DREZY%"=="600" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 0
if "%DREZX%"=="800" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 0
if "%DREZX%"=="1024" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 0
if "%DREZX%"=="1366" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 1
if "%DREZY%"=="960" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 1
if "%DREZY%"=="1080" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 1
if "%DREZY%"=="720" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 1
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

if "%BCROP%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 0
if "%BCROP%"=="1" echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
if "%BCROP%"=="" "%GBC%\fart.exe" "EMULATOR.ini" [WIDE] 1
if "%BCROP%"=="" echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"

:SHADER
"%GBC%\wbox.exe" "RJ_GUI" "Would you liek to enable Trilinear Filtering?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SHDR1
if %ERRORLEVEL%==2 goto :SHDR0
goto :QUITOUT

:SHDR1
"%GBC%\fart.exe" "EMULATOR.ini" [TRI] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT
:SHDR0
"%GBC%\fart.exe" "EMULATOR.ini" [TRI] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :BLIT

:BLIT
"%GBC%\wbox.exe" "RJ_GUI" "Enable Poly Transparency?." "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :BLITLOW
if %ERRORLEVEL%==2 goto :BLITOFF
goto :QUITOUT

:BLITLOW
"%GBC%\fart.exe" "EMULATOR.ini" [TRANS] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN
:BLITOFF
"%GBC%\fart.exe" "EMULATOR.ini" [TRANS] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :SCAN

:SCAN
"%GBC%\wbox.exe" "RJ_GUI" "Enable tilemap filtering?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :SCANON
if %ERRORLEVEL%==2 goto :SCANOFF
goto :QUITOUT

:SCANON
"%GBC%\fart.exe" "EMULATOR.ini" [TILE] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TILE
:SCANOFF
"%GBC%\fart.exe" "EMULATOR.ini" [TILE] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :TILE

:TILE
"%GBC%\wbox.exe" "RJ_GUI" "Enable MipMaps?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :MIPON
if %ERRORLEVEL%==2 goto :MIPOFF
goto :QUITOUT

:MIPON
"%GBC%\fart.exe" "EMULATOR.ini" [MIP] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GOUR
:MIPOFF
"%GBC%\fart.exe" "EMULATOR.ini" [MIP] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GOUR

:GOUR
"%GBC%\wbox.exe" "RJ_GUI" "Enable PerVertex Gourad Shading?" "ON;OFF" /DB=2
if %ERRORLEVEL%==1 goto :GOURON
if %ERRORLEVEL%==2 goto :GOUROFF
goto :QUITOUT

:GOURON
"%GBC%\fart.exe" "EMULATOR.ini" [GOUR] 1
echo."1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :MANT
:GOUROFF
"%GBC%\fart.exe" "EMULATOR.ini" [GOUR] 0
echo."0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
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