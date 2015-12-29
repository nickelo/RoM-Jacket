:extract_antimicro
if "%AMCNAM%"=="" for %%a in ("Player 1 is a Keyboard^") do set AMCMEN1=%%~a
if "%AMCNAM%"=="EMU\" for %%a in ("Player 1 is a Joystick^") do set AMCMEN1=%%~a
if "%AMCNAM%"=="Blank" for %%a in ("Player 1 is in Blank^") do set AMCMEN1=%%~a
if "%AMCNAM2%"=="" for %%a in ("Player 2 is a Keyboard^") do set AMCMEN2=%%~a
if "%AMCNAM2%"=="EMU\" for %%a in ("Player 2 is a Joystick^") do set AMCMEN2=%%~a
if "%AMCNAM2%"=="Blank" for %%a in ("Player 2 is in Blank^") do set AMCMEN2=%%~a

if "%ANTMIC%"=="DISABLED" (set AMCT=Enable) ELSE (set AMCT=Disable)
if "%ANTMIC%"=="DISABLED" SET AMUPDT=
"%GBC%\wbox.exe" "RJ_GUI" "^^##########^antiMicro Menu^%MARKAMC%%AMCMEN1%%AMCMEN2%##########^^  Install^    Download and Install antiMicro to a location of your choice.^^  Initialize^     Create antiMicro profiles for your front-ends.^^  Re/Generate^     Create and update profiles for a Console.^^  Disable^     Disable antiMicro^^" "Configure;Initialize;Re/Configure;Disable;MainMenu"
if %ERRORLEVEL%==1 goto :inst_antiMicro
if %ERRORLEVEL%==2 goto :init_antiMicro
if %ERRORLEVEL%==3 goto :extracting_profiles
if %ERRORLEVEL%==4 goto :DISABLEAMC
if %ERRORLEVEL%==5 goto :QUITOUT
REM if %ERRORLEVEL%==5 goto :%AMCT%antiMicro
goto :QUITOUT

:inst_antiMicro
:locate_amc
"%GBC%\wbox.exe" "RJ_GUI" "^^Locate the antiMicro application.^^" "Okay;Download;Skip" /DB=3 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :selectamc
if %ERRORLEVEL%==2 goto :getamc
if %ERRORLEVEL%==3 goto :setnoaMc
goto :setnoaMc

:getamc
call "%GBC%\getamcrapp.bat">>"%GBC%\logs\getamcrapp.log"
if "%ANTMIC%"=="[AMI]" goto :setnoaMc
if "%ANTMIC%"=="" goto :setnoaMc
for /f "delims=" %%A in ('echo "%ANTMIC%"') do set APATHT=%%~dpA
for %%A in ("%APATHT:~0,-1%") do set APATH=%%~A
"%SEVENZIP%" x -y "%GBC%\net\%ACONF%\%ACONF%.7z" -o"%APATH%"
CALL :MARKAMC1
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
set INITAL=
goto :setup_continue

:selectamc
for /f "delims=" %%a in ('Wfile.exe "SET ANTMIC=" "%GBE%\%EMUZ%\%AMICRO%\*pad*.exe" "Where is the antiMicro application?" /noquote') do %%a
if "%ANTMIC%"=="[AMC]" goto :inst_aMcr
if "%ANTMIC%"=="" goto :setnoaMc
for /f "delims=" %%A in ('echo "%ANTMIC%"') do set APATHT=%%~dpA
for %%A in ("%APATHT:~0,-1%") do set APATH=%%~A
if exist "%APATH%\antiMicro.ini.orig" move /y "%APATH%\antiMicro.ini" "%APATH%\antiMicro.ini.bak"
if not exist "%APATH%\antiMicro.ini.orig" move /y "%APATH%\antiMicro.ini" "%APATH%\antiMicro.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%ACONF%\%ACONF%.7z" -o"%APATH%"
CALL :MARKAMC1
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
set INITAL=
goto :setup_continue

:test_antimicro
if "%ANTMIC%"=="" goto :setnoaMc
goto :continue_antiMicro

:DISABLEAMC
:no_antiMicro
SET GBX=0
set JOYVAL=
set ANTMIC=DISABLED
CALL :MARKAMC0
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"

"%GBC%\wbox.exe" "RJ_GUI" "^^antiMicro was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getaMcr
if %ERRORLEVEL%==2 goto :setnoaMc
goto :setnoaMc

:getaMcr
call "%GBC%\getamcrapp.bat">>"%GBC%\logs\getamcrapp.log"
goto :extract_antimicro


:setnoaMc
set JOYVAL=
set AMCNO=
set ANTMIC=DISABLED
CALL :MARKAMC0
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
if "%INITAL%"=="1" goto :setup_continue
goto :QUITOUT

:getantiMicro
for %%A in ("%GBC%\net\%AMICRO%\%AMICRO%-%APROP%.7z") do set AMCCFGXE=%%~A
for /f "delims=" %%a in ('dir /b "%AMCCFGXE%"') do set AMCCFGFILE=%%~nxa
"%SEVENZIP%" x -y "%GBC%\net\%AMICRO%\%AMCCFGFILE%" -o"%AMCX%"
set AMCINIT=1
if "%ANTMIC%"=="DISABLED" goto :locate_amc
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
for %%A in ("%ANTMIC:~0,-14%") do set AMCX=%%~A
goto :extract_antimicro

:initantiMicro
:init_antiMicro
set AMC1EF=
set AMCNAM=
set AMC1EMU=
set AMC1BLNK=
set DB=1
if "%DAMVAR%" NEQ "[DMT]" set DB=3
"%GBC%\wbox.exe" "RJ_GUI" "^### PLAYER 1###^^KEYBOARD-^   Default antiMicro profiles include default keyboard mappings.^^BLANK-^   Blank profiles contain no mappings.^^JOY-^   Emulator functionality only is mapped.^" "Keyboard;Blank;Joy;Menu" /DB=%DB%
if %ERRORLEVEL%==1 goto :defantiMicro
if %ERRORLEVEL%==2 goto :blnkantiMicro
if %ERRORLEVEL%==3 goto :emuantiMicro
if %ERRORLEVEL%==4 goto :extract_antimicro	
goto :QUITOUT


:defantiMicro
set AMC1BLNK=
set AMC1EMU=
set AMCINIT=1
set AMCNAM=
if "%ANTMIC%"=="DISABLED" goto :locate_amc
set AMC1EF=1
goto :initantiMicro2
goto :extract_antimicro

:blnkantiMicro
SET AMC1EF=
SET AMC1EMU=
set AMCINIT=1
set AMCNAM=Blank
if "%ANTMIC%"=="DISABLED" goto :locate_amc
set AMC1BLNK=1
goto :initantiMicro2
goto :extract_antimicro

:emuantiMicro
SET AMC1EF=
SET AMC1BLNK=
set AMCINIT=1
set AMCNAM=EMU\
if "%ANTMIC%"=="DISABLED" goto :locate_amc
set AMC1EMU=1
goto :initantiMicro2
goto :extract_antimicro

:initantiMicro2
set AMC2EF=
set AMCNAM2=
set AMC2EMU=
set AMC2BLNK=
set DB=1
if "%DAMVAR%" NEQ "[DMT]" set DB=3
"%GBC%\wbox.exe" "RJ_GUI" "^### PLAYER 2###^^KEYBOARD-^   Default antiMicro profiles include default keyboard mappings.^^BLANK-^   Blank profiles contain no mappings.^^JOY-^   Emulator functionality only is mapped.^" "Keyboard;Blank;Joy;Menu" /DB=%DB%
if %ERRORLEVEL%==1 goto :defantiMicro2
if %ERRORLEVEL%==2 goto :blnkantiMicro2
if %ERRORLEVEL%==3 goto :emuantiMicro2
if %ERRORLEVEL%==4 goto :extract_antimicro
goto :QUITOUT

:defantiMicro2
set AMC2BLNK=
set AMC2EMU=
set AMCINIT=1
set AMCNAM2=
if "%ANTMIC%"=="DISABLED" goto :locate_amc
set AMC2EF=1
goto :extract_antimicro

:blnkantiMicro2
SET AMC2EF=
SET AMC2EMU=
set AMCINIT=1
if "%ANTMIC%"=="DISABLED" goto :locate_amc
set AMC2BLNK=1
goto :extract_antimicro

:emuantiMicro2
SET AMC2EF=
SET AMC2BLNK=
set AMCINIT=1
set AMCNAM2=EMU\
if "%ANTMIC%"=="DISABLED" goto :locate_amc
set AMC2EMU=1
goto :extract_antimicro

:checkdefaultantiMicro
if exist "%PRGX%\antiMicro\antiMicro.exe" goto :amcrDefDir
goto :locate_amc

:continue_antiMicro
for /f "delims=" %%a in ('Wfolder.exe "SET _amctmp=" "%GBE%\%EMUZ%\%AMICRO%" "Install antiMicro Configs to:?  eg:''%GBE%\%EMUZ%\%AMICRO%''" /noquote') do %%a
set amcdrv-ltr=%_amctmp:*:=%
for %%A in ("%_amctmp:~0,2%\") do set AMCDIR=%%~A
if "%_amctmp%"=="" goto :no_antiMicro
goto :amcdrvltr

:amcdrvltr
for %%A in ("%_amctmp%") do set ACR=%%~A
if "%amcdrv-ltr%"=="\" do set ACR=%_amctmp:~0,2%
if "%AMCRRFILE%" neq "" "%SEVENZIP%" x -y "%GBC%\net\%ACONF%\%AMCRRFILE%" -o"%ACR%\%AMICRO%"
CALL :MARKAMC1
set XPADDER=DISABLED
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :antimicro_confirm

:antimicro_confirm
for %%A in ("antiMicro is Enabled^") do set MARKAMC=%%~A
"%GBC%\wbox.exe" "RJ_GUI" "^antiMicro configurations have been installed" "Thanks!"  /TM=5
if %ERRORLEVEL%==1 goto :initantiMicro

:inst_antiMicro
call "%GBC%\getamcrapp.bat">>"%GBC%\logs\getamcrapp.log"
if "%ANTMIC%"=="[AMC]" goto :setnoaMc
if "%ANTMIC%"=="" goto :setnoaMc
for /f "delims=" %%A in ('echo "%ANTMIC%"') do set APATHT=%%~dpA
for %%A in ("%APATHT:~0,-1%") do set APATH=%%~A
REM if exist "%APATH%\antiMicro.ini.orig" move /y "%APATH%\antiMicro.ini" "%APATH%\antiMicro.ini.bak"
REM if not exist "%APATH%\antiMicro.ini.orig" move /y "%APATH%\antiMicro.ini" "%APATH%\antiMicro.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%ACONF%\%ACONF%.7z" -o"%APATH%"
CALL :MARKAMC1
set XPADDER=DISABLED
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
goto :extract_antimicro

:extracting_profiles
SET INDVPROP=
if "%ANTMIC%"=="DISABLED" goto :locate_amc
if "%ANTMIC%"=="[AMC]" (goto :checkdefaultantiMicro)
"%SEVENZIP%" e -y "%GBC%\net\%APROF%\%APROF%.zip" -o"%GBC%\net\%APROF%"
del /q "%GBC%\conex.ini"
echo.^>"%GBC%\conex.ini"
echo.-------->>"%GBC%\conex.ini"
echo.ALL CONSOLES>>"%GBC%\conex.ini"
echo.-------->>"%GBC%\conex.ini"
copy /y "%GBC%\conSelect.set" "%GBC%\conSelect.tmp"
echo.-------->>"%GBC%\conSelect.tmp"
echo.Other>>"%GBC%\conSelect.tmp"
copy /b "%GBC%\conex.ini"+"%GBC%\conSelect.tmp" "%GBC%\conSelect.ini"
del /q "%GBC%\conex.ini"
del /q "%GBC%\conSelect.tmp"
if "%AMCINIT%"=="1" goto :DESTINATION
"%GBC%\wbox.exe" "RJ_GUI" "Select a Profile Type" "Blank;Joystick;Keyboard" /DB=2
if %ERRORLEVEL%==1 goto :BPROP
if %ERRORLEVEL%==2 goto :JPROP
if %ERRORLEVEL%==3 goto :KPROP
goto :extract_antimicro

:BROP
set AMCNAM=Blank
goto :DESTINATION

:JPROP
set AMCNAM=EMU\
goto :TEMPL

:KPROP
set AMCNAM=
goto :TEMPL

:AMCSEL
:READD
set /a PLAYERN=1
SET Player1=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player1=" "%GBC%\net\%APROF%\*.amgp" "Select Player 1" /noquote') do %%a
if "%Player1%"=="" goto :OPEN
SET Player2=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player2=" "%GBC%\net\%APROF%\*.amgp" "Select Player 2" /noquote') do %%a
if "%Player2%"=="" goto :CONFIRMPROP
SET Player3=
set /a PLAYERN+=1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player3=" "%GBC%\net\%APROF%\*.amgp" "Select Player 3" /noquote') do %%a
if "%Player3%"=="" goto :CONFIRMPROP
SET Player4=
set /a PLAYERN+=1
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET Player4=" "%GBC%\net\%APROF%\*.amgp" "Select Player 4" /noquote') do %%a
if "%Player4%"=="" goto :CONFIRMPROP
set /a PLAYERN+=1

:CONFIRMPROP
"%GBC%\wbox.exe" "RJ_GUI" "You have selected %PLAYERN% profiles" "Reset;Confirm" /db=2
if %ERRORLEVEL%==1 goto :READD
if %ERRORLEVEL%==2 goto :CONFIRMED
goto :extract_antimicro

:CONFIRMED
SET INDVPROP=1
goto :DESTINATION

:TEMPL
"%GBC%\Wselect.exe" "%GBC%\conSelect.ini" "Select Template" "set AMCSEL=$item" > "%GBC%\conex.cmd"
if %errorlevel%==0 goto :extract_antimicro
CALL "%GBC%\conex.cmd"
if "%AMCSEL%"=="--------" goto :extracting_profiles
if "%AMCSEL%"=="ALL CONSOLES" goto :EXTRACTALL
for %%a in ("%AMCNAM%%AMCSEL%") do set AMCNAM=%%~a
if "%AMCSEL%"=="Other" call :AMCSEL
SET AMCXST=

:DESTINATION
echo.-------->"%GBC%\conex.ini"
for /f "delims="  %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\conex.ini"
"%GBC%\Wselect.exe" "%GBC%\conex.ini" "Select Destination" "set AMCDES=$item" > "%GBC%\conex.cmd"
CALL "%GBC%\conex.cmd"
if "%AMCDES%"=="" goto :extract_antimicro
if "%AMCDES%"=="--------" goto :DESTINATION
SET AMCXST=1
goto :EXTRACTIT


:EXTRACTIT
if "%INDVPROP%"=="1" goto :MOTIG
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing %AMCNAM% antiMicro Profiles"  /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMCDES%"') do copy /y "%GBC%\net\%APROF%\%AMCNAM%\Player1.amgp" "%GBG%\%GAM%\%CONS%\%AMCDES%\%%~a"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMCDES%"') do copy /y "%GBC%\net\%APROF%\%AMCNAM2%\Player2.amgp" "%GBG%\%GAM%\%CONS%\%AMCDES%\%%~a"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
if %ERRORLEVEL%==1 goto :extract_antimicro
goto :extract_antimicro

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:MOTIG
%BSTRT% "%WBUSY%" "RJ_GUI" "Propagating profiles" /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMCDES%"') do (
set GAMFLDR=%%~a
call :P1
if "%Player2%" NEQ "" call :P2
if "%Player3%" NEQ "" call :P3
if "%Player4%" NEQ "" call :P4
)
goto :COMPLETE

:P1
copy /y "%Player1%" "%GBG%\%GAM%\%CONS%\%AMCDES%\%GAMFLDR%\Player1.amgp"
exit /b
:P2
copy /y "%Player2%" "%GBG%\%GAM%\%CONS%\%AMCDES%\%GAMFLDR%\Player2.amgp"
exit /b
:P3
copy /y "%Player3%" "%GBG%\%GAM%\%CONS%\%AMCDES%\%GAMFLDR%\Player3.amgp"
exit /b
:P4
copy /y "%Player4%" "%GBG%\%GAM%\%CONS%\%AMCDES%\%GAMFLDR%\Player4.amgp"
exit /b
:COMPLETE
%BSTRT% "%WBUSY%" "RJ_GUI" "Complete" /stop /timeout:2
goto :extract_antimicro

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:EXTRACTALL
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing ALL antiMicro Profiles"  /marquee
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
SET AMCONE=
SET AMCSEL=%%~a
call :GETNAME
)
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do del /q "%GBG%\%GAM%\%CONS%\%%~a\Player*.amgp"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
goto :extract_antimicro

:GETNAME
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET AMCNAMD=%%~a
if "%AMCSEL%"=="%%~a" CALL :EXTRACTAMC
)
if "%AMCONE%" NEQ "1" CALL :EXTRACTOAMC
exit /b

:EXTRACTAMC
for %%a in ("%AMCNAMD%%AMCNAM%") do SET AMCNAM=%%~a
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMCNAM%"') do copy /y "%GBC%\net\%APROF%\%AMCNAM%\Player1.amgp" "%GBG%\%GAM%\%CONS%\%AMCSEL%\%%~a"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMCNAM%"') do copy /y "%GBC%\net\%APROF%\%AMCNAM2%\Player2.amgp" "%GBG%\%GAM%\%CONS%\%AMCSEL%\%%~a"
SET AMCONE=1
exit /b

:EXTRACTOAMC
if "%AMCNAM%"=="" set PLTYP1=Other
if "%AMCNAM%"=="EMU\" set PLTYP1=EMU\Other
if "%AMCNAM%"=="Blank" set PLTYP1=Blank
if "%AMCNAM2%"=="" set PLTYP2=Other
if "%AMCNAM2%"=="EMU\" set PLTYP2=EMU\Other
if "%AMCNAM2%"=="Blank" set PLTYP2=Blank
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%AMCSEL%"') do (
copy /y "%GBC%\net\%APROF%\%PLTYP1%\Player1.amgp" "%GBG%\%GAM%\%CONS%\%AMCSEL%\%%~a"
copy /y "%GBC%\net\%APROF%\%PLTYP2%\Player2.amgp" "%GBG%\%GAM%\%CONS%\%AMCSEL%\%%~a"
)
exit /b

:overwriteamc
if "%ANTMIC%"=="DISABLED" goto :locate_amc
if "%ANTMIC%"=="[AMC]" (goto :checkdefaultantiMicro)
del /s /q "%GBG%\%GAM%\%CONS%\*.amgp"
goto :amcr_injection

:DisableantiMicro
set ANTMIC=DISABLED
CALL :MARKAMC0
call "%GBC%\setlocset.bat">>"%GBC%\logs\setlocset.log"
"%GBC%\wbox.exe" "RJ_GUI" "antiMicro will not be configured" "Okay"  /BW=150 /TM=2
if %ERRORLEVEL%==1 goto :QUITOUT
goto :QUITOUT

:amcr_injection
%GBD%
cd "%GBC%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing antiMicro Profiles"  /marquee
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\delempty.log"
%BSTRT% "%WFINS%" "RJ_GUI" "..." /Stop /timeout:1
CALL "%GBC%\generateantiMicroProfiles.bat">>"%GBC%\logs\generateantiMicroProfiles.log"
%BSTRT% "%WBUSY%" "RJ_GUI" "Installing antiMicro Profiles"  /marquee
CALL "%GBC%\customGenerateantiMicroProfiles.bat">>"%GBC%\logs\customGenerateantiMicroProfiles.log"
SET amcskp=
%BSTRT% "%WFINS%" "RJ_GUI" "Complete." /Stop /timeout:1
%GBD%
"%GBC%\wbox.exe" "RJ_GUI" "^^antiMicro Profiles have been installed.^^" "Thanks!"  /BW=150 /TM=5
if %ERRORLEVEL%==1 goto :QUITIOUT

:MARKAMC0
for %%A in ("antiMicro is Disabled^") do set MARKAMC=%%~A
exit /b
:MARKAMC1
for %%A in ("antiMicro is Enabled^") do set MARKAMC=%%~A
SET XPDEF=0
exit /b
:setup_continue
:QUITOUT