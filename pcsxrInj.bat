if "%P1JOYTYPE%"=="JOY" call "%GBC%\pcsxrJoy1.bat"
if "%P2JOYTYPE%"=="JOY" call "%GBC%\pcsxrJoy2.bat"
if "%P1JOYTYPE%"=="KB" call "%GBC%\pcsxrKB1.bat"
if "%P2JOYTYPE%"=="KB" call "%GBC%\pcsxrKB2.bat"
"%GBC%\fart.exe" "*.bat" [SPU] PeopsDSound
"%GBC%\fart.exe" "*.bat" [PSXBIOS] "%PS1BIOS%"
if "%PRVST%"=="1" goto :PRESETS
:NOPRESET
if "%ALLCONSOLES%"=="" goto :QUERY
"%GBC%\fart.exe" "*.bat" [PAD1TYPE] PadSeguDPP
"%GBC%\fart.exe" "*.bat" [PAD2TYPE] PadSeguDPP
"%GBC%\fart.exe" "*.bat" [GPU] "PeteOpenGL2"
"%GBC%\fart.exe" "*.bat" [WIDE] "0x0"
exit /b

:PRESETS
if not exist "%GBC%\%CEMU%_%CSTCONS%.ini" goto :NOPRESET
call "%GBC%\Presets.bat">>"%GBC%\logs\Presets.log"
exit /b

:QUERY
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "Select a PAD Plugin (Player 1)" "Segu;SSSPSX" /DB=1
if %ERRORLEVEL%==1 goto :SEGU
if %ERRORLEVEL%==2 goto :SSSP
goto :QUITOUT

:SEGU
"%GBC%\fart.exe" "*.bat" [PAD1TYPE] PadSeguDPP
echo."PadSeguDPP">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PL2

:SSSP
"%GBC%\fart.exe" "*.bat" [PAD1TYPE] PadSSSPSX
echo."PadSSSPSX">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :PL2

:PL2
"%GBC%\wbox.exe" "RJ_GUI" "Select a PAD Plugin (Player 2)" "Segu;SSSPSX" /DB=1
if %ERRORLEVEL%==1 goto :SEGU2
if %ERRORLEVEL%==2 goto SSSP2
goto :QUITOUT

:SEGU2
"%GBC%\fart.exe" "*.bat" [PAD2TYPE] PadSeguDPP
echo."PadSegDPP">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU

:SSSP2
"%GBC%\fart.exe" "*.bat" [PAD2TYPE] PadSSSPSX
echo."PadSSSPSX">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :GPU

:GPU
"%GBC%\wbox.exe" "RJ_GUI" "Select a GPU type" "OpenGL;D3D;Soft" /DB=1
if %ERRORLEVEL%==1 goto :OPENGL
if %ERRORLEVEL%==2 goto :D3D
if %ERRORLEVEL%==3 goto :SOFT
goto :QUITOUT

:OPENGL
"%GBC%\fart.exe" "*.bat" [GPU] "PeteOpenGL2"
echo."PeteOpenGL2">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIDE
:D3D
"%GBC%\fart.exe" "*.bat" [GPU] "PeteD3D"
echo."PeteD3D">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIDE
:SOFT
"%GBC%\fart.exe" "*.bat" [GPU] "PeteSoft"
echo."PeteSoft">>"%GBC%\%CEMU%_%CSTCONS%.ini"
goto :WIDE

:WIDE
"%GBC%\wbox.exe" "RJ_GUI" "Enable Widescreen?" "Enable;Disable" /DB=1
if %ERRORLEVEL%==1 goto :STAND
if %ERRORLEVEL%==2 goto :WS
goto :QUITOUT

:STAND
"%GBC%\fart.exe" "*.bat" [WIDE] "0x0"
echo."0x0">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b
:WS
"%GBC%\fart.exe" "*.bat" [WIDE] "0x1"
echo."0x1">>"%GBC%\%CEMU%_%CSTCONS%.ini"
exit /b
:PCSXRCOMPL
for %%a in ("Processing the %CSTCONS% launchers.") do set EXECPROC=%%~a
if "%EXECRT%"=="1" for %%a in ("Compiling Executable") do set EXECPROC=%%~a
%BSTRT% "%WBUSY%" "RJ_GUI" "%EXECPROC%" /marquee
exit /b
:QUITOUT
set CANCELLED=1