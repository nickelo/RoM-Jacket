goto :ADD%SHRTN%

:PCEREGION
if "%REGION%"=="SuperGrafx" do set CSTCONS=%SGFX%	
if "%REGION%"=="Japan" do set CSTCONS=%PCENG%
exit /b

:NESREGION
if "%REGION%"=="Japan" do set CSTCONS=%NFAM%
exit /b

:SEGAGREGION
if "%REGION%"=="Europe" do set CSTCONS=%SEGAMD%
if "%REGION%"=="Japan" do set CSTCONS=%SEGAMD%
if "%REGION%"=="Australia" do set CSTCONS=%SEGAMD%
if "%REGION%"=="China" do set CSTCONS=%SEGAMD%
if "%REGION%"=="France" do set CSTCONS=%SEGAMD%
exit /b

:ADDNES
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
echo.Australia>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDTG16
echo.US>"%GBC%\addSub.ini"
echo.SuperGrafx>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDAT78
echo.NTSC>"%GBC%\addSub.ini"
echo.PAL>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDNGBA
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
echo.Australia>>"%GBC%\addSub.ini"
echo.Germany>>"%GBC%\addSub.ini"
echo.Italy>>"%GBC%\addSub.ini"
echo.Netherlands>>"%GBC%\addSub.ini"
echo.Spain>>"%GBC%\addSub.ini"
echo.Korea>>"%GBC%\addSub.ini"
echo.China>>"%GBC%\addSub.ini"
echo.France>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDSG32X
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDPS1
echo.US>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
goto :REGSEL


:ADDSSAT
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDNGBC
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
echo.French>>"%GBC%\addSub.ini"
echo.German>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDNGB
echo.US + European + Other>"%GBC%\addSub.ini"
echo.International>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
echo.Unlicensed>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDNDS
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
echo.Spain>>"%GBC%\addSub.ini"
echo.Korea>>"%GBC%\addSub.ini"
echo.Italy>>"%GBC%\addSub.ini"
echo.Germany>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
echo.France>>"%GBC%\addSub.ini"
goto :REGSEL

:ADDCM64
echo.[Numbers and Symbols]>"%GBC%\addSub.ini"
echo.A>>"%GBC%\addsub.ini"
echo.B>>"%GBC%\addsub.ini"
echo.C>>"%GBC%\addsub.ini"
echo.D>>"%GBC%\addsub.ini"
echo.E>>"%GBC%\addsub.ini"
echo.F>>"%GBC%\addsub.ini"
echo.G>>"%GBC%\addsub.ini"
echo.H>>"%GBC%\addsub.ini"
echo.I>>"%GBC%\addsub.ini"
echo.J>>"%GBC%\addsub.ini"
echo.K>>"%GBC%\addsub.ini"
echo.L>>"%GBC%\addsub.ini"
echo.M>>"%GBC%\addsub.ini"
echo.N>>"%GBC%\addsub.ini"
echo.O>>"%GBC%\addsub.ini"
echo.P>>"%GBC%\addsub.ini"
echo.Q>>"%GBC%\addsub.ini"
echo.R>>"%GBC%\addsub.ini"
echo.S>>"%GBC%\addsub.ini"
echo.T>>"%GBC%\addsub.ini"
echo.U>>"%GBC%\addsub.ini"
echo.V>>"%GBC%\addsub.ini"
echo.W>>"%GBC%\addsub.ini"
echo.X>>"%GBC%\addsub.ini"
echo.Y>>"%GBC%\addsub.ini"
echo.Z>>"%GBC%\addsub.ini"
goto :REGSEL


:ADDACARC
set REGION=/Games
goto :GETINDEX

:ADDSEGAG
echo.US>"%GBC%\addSub.ini"
echo.Europe>>"%GBC%\addSub.ini"
echo.Japan>>"%GBC%\addSub.ini"
echo.Australia>>"%GBC%\addSub.ini"
echo.China>>"%GBC%\addSub.ini"
echo.France>>"%GBC%\addSub.ini"
echo.Public Domain>>"%GBC%\addSub.ini"
echo.Unlicensed>>"%GBC%\addSub.ini"
goto :REGSEL

:REGSEL
set cbcancel=
set CANCELLED=
"%GBC%\fart.exe" "%GBC%\addsub.ini" "+" "%%%%%:B"
"%GBC%\fart.exe" "%GBC%\addsub.ini" ":" "2"
"%GBC%\Wselect.exe" "%GBC%\addSub.ini" "Select a Region" "set REGION=$item" > "%GBC%\region.cmd"
if %errorlevel%==0 goto :CANCELLED
call "%GBC%\region.cmd"
if "%REGION%"=="" goto :REGSEL
set RGN=
if "%CSTCONS%"=="%NES%" call :NESREGION
if "%CSTCONS%"=="%TG16%" call :PCEREGION
if "%CSTCONS%"=="%SEGAG%" call :SEGAGREGION
if "%REGION%"=="" goto :GETINDEX
for %%a in ("%REGION%") do set RGN=_%%~a
for %%a in ("/%REGION%") do set REGION=%%~a
exit /b

:CANCELLED
set CANCELLED=1
exit /b

:GETINDEX