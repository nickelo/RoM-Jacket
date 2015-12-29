:SELCUST
call "%GBC%\clearVar.bat">>"%GBC%\logs\clearVar.log"
SET NIVA=
set ALTGAMP=
SET RECONF=1
for %%a in ("copy /y") do set COPYTYPE=%%~a
SET INDVGAME=1
set CUSTGAMPATH=
set CUSTCONSPTH=

goto :CONSOLETYPE

:MDIR
if not exist "%GBG%\%GAM%\%CONS%\%CUSTCONS%\%GAMT%" MKDIR "%GBG%\%GAM%\%CONS%\%CUSTCONS%\%GAMT%" && move /y "%GAMPATH%" "%GBG%\%GAM%\%CONS%\%CUSTCONS%\%GAMT%"
for %%a in ("%GBG%\%GAM%\%CONS%\%CUSTCONS%\%GAMT%\%CNGAMT%") do set GAMPATH=
goto :DEFRP
exit /b

:CONSOLETYPE
del /q "%GBC%\conexist.ini"
echo ---------->"%GBC%\conexist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\conexist.ini"
"%GBC%\Wselect.exe" "%GBC%\conexist.ini" "Select A Console" "set CSTCONS=$item" > "%GBC%\customCons.cmd"
if %errorlevel%==0 GOTO :INDVOUT
CALL "%GBC%\customCons.cmd"
if "%CSTCONS%"=="----------" goto :CONSOLETYPE
set CSTALT=%CSTCONS%
set CSTLNCH=%CSTCONS%
if "%CSTCONS%"=="%SEGM2%" set ALTGAMP=1
if "%CSTCONS%"=="%SEGM3%" set ALTGAMP=1
if "%CSTCONS%"=="%ARCD%" set ALTGAMP=1
if "%CSTCONS%"=="%NEOGEO%" set ALTGAMP=1
if "%CSTCONS%"=="%CPS%" set ALTGAMP=1
if "%CSTCONS%"=="%CPS2%" set ALTGAMP=1
if "%CSTCONS%"=="%CPS3%" set ALTGAMP=1
if "%ALTGAMP%" NEQ "1" goto :ROMPTHCONT

:ROMPTHALT
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\%LNCH%.zip" -o"%GBC%\net\%LNCH%"
for /f "delims=" %%a in ('Wfolder.exe "SET GAMTPTH=" "%GBG%\%GAM%\%CONS%\%CSTCONS%" "Locate the ROM's Jacket" /noquote') do %%a
if "%GAMTPTH%"=="" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GAMTPTH%\*.zip"') do set GAMTPATH=%%~a
if "%GAMTPATH%"=="" exit /b
for /f "delims=" %%a in ("%GAMTPATH%") do (
SET GAMFULL=%%~dpnxa
SET GAMT=%%~na
SET CNGAMT=%%~nxa
SET GAMTEXT=%%~xa
set CSTGAMTTMP=%%~dpa
)
goto :CSTGAMPARAMS

:wrap
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMT%"
move /y "%GBG%\%GAM%\%CONS%\%CSTCONS%\%CNGAMT%"  "%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMT%"
for %%A in ("%GBG%\%GAM%\%CONS%\%CSTCONS%\%GAMT%") do set CUSTGAMPATH=%%~A
exit /b

:ROMPTHCONT
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\%LNCH%.zip" -o"%GBC%\net\%LNCH%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET GAMTPATH=" "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.*" "Where is the Rom?" /noquote') do %%a
:DEFRP
if "%GAMTPATH%"=="" exit /b
for /f "delims=" %%a in ("%GAMTPATH%") do (
SET GAMFULL=%%~a
SET GAMT=%%~na
SET CNGAMT=%%~nxa
SET GAMTEXT=%%~xa
set CSTGAMTTMP=%%~dpa
)
if "%GAMTPATH%"=="%GBG%\%GAM%\%CONS%\%CUSTCONS%\%GAMT%" exit /b
:CSTGAMPARAMS
for %%a in ("%CNGAMT%") do if "%GAMFULL%"=="%GBG%\%GAM%\%CONS%\%CNGAMT%" call :MDIR
for %%A in ("%CSTGAMTTMP:~0,-1%") do set CUSTGAMPATH=%%~A
for %%A in ("%CUSTGAMPATH%") do SET CUSTGAMN=%%~nxA
for %%A in ("%CSTGAMTTMP:~0,2%") do set CSTDIR=%%~A
IF /I "%CUSTGAMPATH%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" call :wrap
for %%A in ("%CUSTGAMPATH%") do set CUSTCONSPTH=%%~A
IF /I "%CUSTGAMPATH%"=="" goto :SELCUST

call "%GBC%\indvConf.bat">>"%GBC%\logs\indvConf.log"
if "%CANCELLED%"=="1" goto :INDVCONT

:CONSOLECHECK
for %%A in ("%CUSTGAMPATH:%%CUSTGAMN%%=%") do set _endbit=%%~A
CALL SET _result=%%CUSTGAMPATH:%_endbit%=%%
for %%A in ("%_result:~0,-1%") do set GAMCONTMP=%%~A
for %%A in ("%GAMCONTMP:*\Console\=%") do set GAMCONPTH=%%~A
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
if "%GAMCONPTH%"=="%%~a" set CSTCONS=%%~a
)

call "%GBC%\emuChoice.bat">>"%GBC%\logs\emuChoice.log"
if "%MANEMU%"=="1" SET CSTLNCH=Other
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%JOYVAL%" NEQ "" "%GBC%\fart.exe" "zz.bat" "[JYZ]" --remove
if "%XPD1ON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] --remove
if "%XPD2ON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] --remove
if "%XPD1OFF%"=="1" "%GBC%\fart.exe" "zz.bat" "%%GAMDIR%%\Player1.xpadderprofile" "nolayout.xpadderprofile"
if "%XPD1OFF%"=="1" call :XPD2CHK
if "%BOTHOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"
if "%XPD2OFF%"=="1" "%GBC%\fart.exe" "zz.bat" "%%GAMDIR%%\Player2.xpadderprofile" "nolayout2.xpadderprofile"
if "%GGON%"=="1" "%GBC%\fart.exe" "zz.bat" [XFG] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XFG]" "REM [XFG]"
if "%MMON%"=="1" "%GBC%\fart.exe" "zz.bat" [DSP] --remove
if "%MMONOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DSP]" "REM [DSP]"
if "%DTON%"=="1" "%GBC%\fart.exe" "zz.bat" "[DMT]" --remove
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DMT]" "REM [DMT]"
popd

:emuopt
set ROMPTH="\"^%%^CD%%\%^%%GAMDIR%%^%.[EXT]"\"
SET EXTSET=.[EXT]
SET CONFSET=*.ini
if "%CSTCONS%"=="Other" goto :CUSTSYS
if "%CEMU%" NEQ "CustomEmulator" SET CVAREMU=%CEMU%
if "%MANEMU%"=="1" goto :CUSTSYS 
goto :copy

:XPD2CHK
if "%XPD2OFF%"=="1" SET BOTHOFF=1
exit /b

:CUSTSYS
call "%GBC%\indvGameInj.bat">>"%GBC%\logs\indvGameInj.log"
if "%CANCELLED%"=="1" goto :INDVCONT

:copy
call "%GBC%\indvGameCopy.bat">>"%GBC%\logs\indvGameCopy.log"
:gamPrcd
%BSTRT% "%WFINS%" "RJ_GUI" "%GAMT% Processed" /Stop /timeout:1
exit /b
:INDVCONT
set CANCELLED=1
