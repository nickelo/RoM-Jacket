if "%CEMU%"=="%PSSP%" call :ADDPSP
if "%CEMU%"=="%M2EMU%" call :ADDM2EMU
if "%CEMU%"=="%VGBA%" call :ADDVGBA
if "%CEMU%"=="%DESMUME%" call :ADDDESMUME
if "%CEMU%"=="%XM6%" call :ADDXM6
if "%CEMU%"=="%NEORAINE%" call :ADDNEOR
exit /b

:ADDPSP
echo.rename "PPSSPPWindows.exe" "PPSSPP.exe">>"%GBC%\injLnch.ini"
echo.rename "PPSSPPWindows64.exe" "PPSSPP.exe">>"%GBC%\injLnch.ini"
exit /b
:ADDM2EMU
echo.rename "emulator.exe" "m2emu.exe">>"%GBC%\injLnch.ini"
echo.rename "emulator_multicpu.exe" "m2emu.exe">>"%GBC%\injLnch.ini"
exit /b
:ADDVGBA
echo.rename "vgba-m.exe" "vgba.exe">>"%GBC%\injLnch.ini"
exit /b
:ADDDESMUME
echo.rename "desmume_x64.exe" "DeSMuMe.exe">>"%GBC%\injLnch.ini"
echo.rename "desmume_x32exe" "DeSMuMe.exe">>"%GBC%\injLnch.ini"
exit /b
:ADDXM6
echo.rename "xm6g.exe" "xm6.exe">>"%GBC%\injLnch.ini"
exit /b
:ADDNEOR
echo.rename "NeoRaine32.exe" "NeoRaine.exe">>"%GBC%\injLnch.ini"
exit /b
