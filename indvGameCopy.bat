call "%GBC%\emuname.bat">>"%GBC%\logs\emuname.log"
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
if "%RCTFL%"=="1" "%GBC%\fart.exe" "zz.bat" [RCD] 1
"%GBC%\fart.exe" "zz.bat" [SYSTYPE] "%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EMUL] "%CSTEML%" 
"%GBC%\fart.exe" "zz.bat" [EMUZ] "%CEMZ%" 
"%GBC%\fart.exe" "zz.bat" [DAMVAR] "%DAMVAR%" 
if "%JOYVAL%"=="XPADDER" "%GBC%\fart.exe" "zz.bat" [XPD] "%XPADDER%" 
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPD] "%ANTMIC%" 
if "%JOYVAL%"=="ANTIMIC" "%GBC%\fart.exe" "zz.bat" [XPLT] "1" 
popd
%BSTRT% "%WBUSY%" "RJ_GUI" "Processing %GAMT%." /marquee
pushd "%CUSTGAMPATH%"
CALL :COPYMVROM
goto :extensionchk

:COPYMVROM
copy /Y "%GBC%\net\%LNCH%\%CSTLNCH%\zz.bat" "%CUSTGAMPATH%"
copy /Y "%CUSTGAMPATH%\zz.bat" "%CUSTGAMPATH%"
move /Y "%CUSTGAMPATH%\zz.bat" "%CUSTGAMPATH%\%GAMT%.bat"
exit /b

:extensionchk
"%GBC%\fart.exe" "%GAMT%.bat" "%^%%%GAMDIR%%%^%\*.[EXT]" "%GAMFULL%"
"%GBC%\fart.exe" "%GAMT%.bat" "%^%%%GAMDIR%%%^%\%^%%%ROM%%%^%.[EXT]" "%GAMFULL%"
"%GBC%\fart.exe" "%GAMT%.bat" "%^%%%CD%%%^%\%^%%%ROM%%%^%.[EXT]" "%GAMFULL%"
"%GBC%\fart.exe" "%GAMT%.bat" "%^%%%ROM%%%^%.[EXT]" "%GAMFULL%"
CALL "%GBC%\conCheck.bat">>"%GBC%\logs\conCheck.log"
CALL "%GBC%\extinjONE.bat">>"%GBC%\logs\extinjONE.log"
popd
if "%XPDCST%"=="1" goto :XPDCP
goto :INDVCONT


:AMC2CHK
if "%AMC2CST%"=="0" set BOTHOFF=1
goto :INDVCONT
:XPD2CHK
if "%XPD2CST%"=="0" set BOTHOFF=1
goto :INDVCONT

:INDVCONT
del /s /q "%GAMTPATH%\zz*.bat"

:XPDCP
if "%JOYVAL%"=="XPADDER" for %%a in ("%XPROF%") do (
set NPROF=%%~a
set PRFXT=xpadderprofile
)
if "%JOYVAL%"=="ANTIMIC" for %%a in ("%APROF%") do (
set NPROF=%%~a
set PRFXT=amgp
)
if "%XPD1CST%"=="0" goto :%PREFIX%2CHK
if "%BOTHOFF%"=="1" goto :INDVOUT
"%SEVENZIP%" x -y "%GBC%\net\%NPROF%\%NPROF%.zip" -o"%GBC%\net\%NPROF%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\Other\retroArch1.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\Other\retroArch2.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\EMU\Other\retroArch1.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%RTROA%" copy /y "%GBC%\net\%NPROF%\EMU\Other\retroArch2.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\Other\cps31.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\Other\cps32.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\EMU\Other\cps31.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%CPS3EMU%" copy /y "%GBC%\net\%NPROF%\EMU\Other\cps32.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\Other\NullDC1.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\Other\NullDC2.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\EMU\Other\NullDC1.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%NULLDC%" copy /y "%GBC%\net\%NPROF%\EMU\Other\NullDC2.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\Other\mess1.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player1.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\Other\mess2.%PRFXT%"  "%GBC%\net\%NPROF%\Other\Player2.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\EMU\Other\mess1.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player1.%PRFXT%"
if "%CEMU%"=="%MESS%" copy /y "%GBC%\net\%NPROF%\EMU\Other\mess2.%PRFXT%"  "%GBC%\net\%NPROF%\EMU\Other\Player2.%PRFXT%"
pushd "%CUSTGAMPATH%"
if "%XPD1EF%"=="1" copy /Y "%GBC%\net\%NPROF%\%CSTLNCH%\Player1.%PRFXT%" "%CUSTGAMPATH%"
if "%XPD1BLNK%"=="1" copy /Y "%GBC%\net\%NPROF%\Blank\Player1.%PRFXT%" "%CUSTGAMPATH%"
if "%XPD1EMU%"=="1" copy /Y "%GBC%\net\%NPROF%\EMU\%CSTLNCH%\Player1.%PRFXT%" "%CUSTGAMPATH%"
if "%XPD2EF%"=="1" copy /Y "%GBC%\net\%NPROF%\%CSTLNCH%\Player2.%PRFXT%" "%CUSTGAMPATH%"
if "%XPD2BLNK%"=="1" copy /Y "%GBC%\net\%NPROF%\Blank\Player2.%PRFXT%" "%CUSTGAMPATH%"
if "%XPD2EMU%"=="1" copy /Y "%GBC%\net\%NPROF%\EMU\%CSTLNCH%\Player2.%PRFXT%" "%CUSTGAMPATH%"
for /f "delims=" %%i in ('dir /b /ad "%CUSTGAMPATH%"') do copy /Y "%CUSTGAMPATH%\	" "%CUSTGAMPATH%\%%~ni"
pushd "%GBC%"

:INDVOUT
if "%CUSTGAMPATH%" NEQ "" goto :gamPrcd
if "%NOTEXST%" NEQ "1" goto :gamPrcd
