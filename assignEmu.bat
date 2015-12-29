:emuSelect
set DEFTOPT=
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emuDefaults.log"
if "%CCONS%"=="1" goto :chooseEmu
if "%CEMU%"=="Default" goto :chooseEmu
if "%ALLCONSOLES%"=="1" goto :defaultemu
"%GBC%\wbox.exe" "RJ_GUI" "Select An Emulator for %CSTCONS%" "%CEMU%;Other" /DB=1 /BW=90
if %ERRORLEVEL%==1 goto :defaultEmu
if %ERRORLEVEL%==2 goto :chooseEmu
goto :INDVCONT

:defaultEmu
for %%a in ("%CSTCONS%") do set CSTLNCH=%%~a
SET REGCON=1
goto :OPTSEL

:chooseEmu
SET MANEMU=1
set CSTLNCH=Other
for /f "delims=" %%a in ('dir /b/ad "%GBE%\%EMUZ%"') do rd "%GBE%\%EMUZ%\%%~a"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%"') do del /q "%GBE%\%EMUZ%\%%~a"
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
set MESSINJ=
SET RTRAINJ=
"%GBC%\fart.exe" "%GBC%\existingemulators.ini" : --remove
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:1
"%GBC%\Wselect.exe" "%GBC%\existingemulators.ini" "Select An Emulator to associate with %CASTNAME%" "set CEMU=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :SELCUST
CALL "%GBC%\emuAssign.cmd"
for %%A in ("%CEMU:~0,1%") do set CEMUCHOICE=%%~A
if /I "%CEMUCHOICE%"=="-" goto :emuSelect
if /I "%CEMUCHOICE%"=="%MESS%" SET MESSINJ=1
for %%a in ("%CEMU%") do set CEMU=%%~nxa
if /i "%CEMU%"=="mame" SET MAMINJ=1
if /i "%CEMU%"=="mame64" SET MAMINJ=1
if /i "%CEMU%"=="mess" SET MESSINJ=1
if /i "%CEMU%"=="messui" SET MESSINJ=1
if /i "%CEMU%"=="mess64" SET MESSINJ=1
if /i "%CEMU%"=="mess64ui" SET MESSINJ=1
if /i "%CEMU%"=="ume" SET MESSINJ=1
if /i "%CEMU%"=="ume64" SET MESSINJ=1
if /i "%CVAREMU%"=="retroarch" SET RTRAINJ=1

if "%CEMU%" NEQ "CustomEmulator" SET CVAREMU=%CEMU%
for %%a in ("%GBE%\%EMUZ%\%CEMU%") do set CSTEML=%%~a
if "%CEMU%"=="CustomEmulator" goto :CUSTOMEMULATOR
if "%RTRAINJ%"=="1" goto :OPTSEL
if "%MESSINJ%"=="1" goto :OPTSEL
if "%MAMINJ%"=="1" goto :OPTSEL
goto :INDVOUT

:CUSTOMEMULATOR
SET BYPMG=
SET CNEMU=
SET CEMZ=
SET CVAREMU=
SET CSTEDIR=
set CSTEMLTMP=	
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CEMUPATH=" "%GBE%\%EMUZ%\*.*" "Where is the emulator executable?" /noquote') do %%a
if "%CEMUPATH%"=="" goto :CANCELLED
for /f "delims=" %%a in ('echo "%CEMUPATH%"') do (
SET BYPMG=1
SET CNEMU=%%~nxa
SET CEMZ=%%~nxa
SET CVAREMU=%%~na
SET CSTEDIR=%CEMUPATH:~0,2%
set CSTEMLTMP=%%~dpa
)
for %%A in ("%CSTEMLTMP:~0,-1%") do set CSTEML=%%~A
for %%a in ("%CSTEML%") do SET CEMU=%%~nxa
IF /I "%CSTEML%"=="" goto :INDVCONT
set CUSOMEMULATOR=1

REM set CVAREMU=%CEMU%
for /f "delims=" %%a in ("%CNEMU:~0,-4%") do set CVAREMU=%%~a

for /f "delims=" %%a in ('dir /b/a-d "%CSTEMLTMP%mame*.exe"') do if "%%~a" NEQ "" SET MAMINJ=1
for /f "delims=" %%a in ('dir /b/a-d "%CSTEMLTMP%mess*.exe"') do if "%%~a" NEQ "" SET MESSINJ=1
for /f "delims=" %%a in ('dir /b/a-d "%CSTEMLTMP%ume*.exe"') do if "%%~a" NEQ "" SET MESSINJ=1

if /i "%CVAREMU%"=="mame" SET MAMINJ=1
if /i "%CVAREMU%"=="mame%ARPOP%" SET MAMINJ=1
if /i "%CVAREMU%"=="mess" SET MESSINJ=1
if /i "%CVAREMU%"=="messui" SET MESSINJ=1
if /i "%CVAREMU%"=="mess64" SET MESSINJ=1
if /i "%CVAREMU%"=="mess64ui" SET MESSINJ=1
if /i "%CVAREMU%"=="ume" SET MESSINJ=1
if /i "%CVAREMU%"=="ume64" SET MESSINJ=1
if /i "%CVAREMU%"=="retroarch" SET RTRAINJ=1

:DIRCHK
for /f "delims=" %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do cmd /c if /i "%%~a"=="%SUPEM%" echo.%%~a:>>"%GBC%\existingemulators.ini"
exit /b
:DIRNCHK
SET MISCHK=
SET EMUXST=
for /f "delims=" %%a in ('type "%GBC%\existingemulators.ini"') do (
if "%%~a"=="CustomEmulator" exit /b
if "%%~a"=="-------DETECTED--------" exit /b
if "%%~a"=="--------PRESETS--------" exit /b
if "%%~a"=="-" exit /b
SET EMUXST=%%~a
if /i "%%~a"=="%SUPEM%" SET MISCHK=1
)
if "%MISCHK%"=="" call :MISCHK
exit /b
:MISCHK
for %%a in ("%EMUXST%") do echo.%%~a:>>"%GBC%\existingemulators.ini"
exit /b

:OPTSEL
if "%PRVST%"=="1" goto :PREVIOUS
set IDBTN=1
set IDTYPD=
if exist "%GBC%\%CEMU%_%CSTCONS%.ini" set IDTYPD=;Previous
"%GBC%\wbox.exe" "RJ_GUI" "######################^###EMULATOR OPTIONS###^^##########################" "Default;Custom%IDTYPD%" /DB=%IDBTN%
if %ERRORLEVEL%==1 goto :DEFOPT
if %ERRORLEVEL%==2 goto :INDVOUT
if %ERRORLEVEL%==3 goto :PREVIOUS
goto :INDVOUT

:DEFOPT
set DEFTOPT=1
set ALLCONSOLES=1
goto :INDVOUT

:INDVCONT
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\zz.bat"
set CANCELLED=1

:PREVIOUS
set DEFTOPT=
set ALLCONSOLES=
set PRVST=1
goto :INDVOUT

:INDVOUT
call "%GBC%\proxyEmu.bat">>"%GBC%\logs\proxyEmu.log"
