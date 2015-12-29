:emuselect
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emuDefaults.log"
if "%CSTSUP%"=="" goto :chooseEmu
"%GBC%\wbox.exe" "RJ_GUI" "Select An Emulator to associate with %CSTCONS%" "%CEMU%;Choose" /DB=1 /BW=120
if %ERRORLEVEL%==1 goto :injcst
if %ERRORLEVEL%==2 goto :chooseEmu
goto :INDVCONT

:chooseEmu
SET MANEMU=1
set CEMU=Choose
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing Available Emulators" /marquee
echo.----------------------->"%GBC%\existingemulators.ini"
echo.--SELECT AN EMULATOR--->>"%GBC%\existingemulators.ini"
echo.----------------------->>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
echo.CustomEmulator>>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
echo.-------DETECTED-------->>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
for /f "delims=" %%a in ('type "%GBC%\supportedEmulators.set"') do (
SET EMUXST=
SET SUPEM=%%~a
call :DIRCHK
)

echo.->>"%GBC%\existingemulators.ini"
echo.--------PRESETS-------->>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
for /f "delims=" %%a in ('type "%GBC%\supportedEmulators.set"') do (
SET SUPEM=%%~a
CALL :DIRNCHK
)

"%GBC%\fart.exe" "%GBC%\existingemulators.ini" : --remove
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:1
"%GBC%\Wselect.exe" "%GBC%\existingemulators.ini" "Select An Emulator to associate with %CNGAMT%" "set CEMU=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :INDVCONT
CALL "%GBC%\emuAssign.cmd"
for %%A in ("%CEMU:~0,1%") do set CEMUCHOICE=%%~A
if /I "%CEMUCHOICE%"=="-" goto :emuselect
set CVAREMU=%CEMU%
for %%A in ("%GBE%\%EMUZ%\%CEMU%") do set CSTEML=%%~A

:injcst
CALL :CSTINJ
if /I "%CEMU%"=="CustomEmulator" call :CustExe
goto :INDVOUT

:DIRCHK
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do (
if /i "%%~a"=="%SUPEM%" (
echo.%%~a:>>"%GBC%\existingemulators.ini"
)
)
exit /b

:DIRNCHK
SET MISCHK=
SET EMUXST=
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do (
SET EMUXST=%%~a
if /i "%%~a"=="%SUPEM%" SET MISCHK=1
)
if "%MISCHK%"=="" call :MISCHK
exit /b

:MISCHK
for %%a in ("%EMUXST%") do echo.%%~a:>>"%GBC%\existingemulators.ini"
exit /b

:CustExe
call "%GBC%\shortemu.bat">>"%GBC%\logs\shortemu.log"
call "%GBC%\altsettings.bat">>"%GBC%\logs\altsettings.log"
if /I "%CEMU%"=="Mess64ui" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="Mess64" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="Messui" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="Mess" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="UME" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
if /I "%CEMU%"=="UME64" CALL "%GBC%\MessType.bat">>"%GBC%\logs\messtype.log"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CEMUPATH=" "%GBE%\%EMUZ%\*.*" "Where is the emulator executable?" /noquote') do %%a
if %errorlevel%==0 goto :INDVCONT
for /f "delims=" %%a in ("%CEMUPATH%") do (
SET CNEMU=%%~nxa
SET CEMU=%%~na
set CSTEMLTMP=%%~dpa
)
for %%A in ("%CSTEMLTMP:~0,-1%") do set CSTEML=%%~A
IF /I "%CSTEML%"=="" goto :SELCUST
exit /b
:INDVCONT
set CANCELLED=1
:INDVOUT
