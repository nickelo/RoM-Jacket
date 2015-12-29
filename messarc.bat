SET ZIPSKIP=
SET /A VARNUM=
SET FILCNT=
SET FILN=
SET ARCN=
SET ARCF=
SET ALLEXT=
SET ARCINS=	
set ZIPN=%FULLNM%
"%SEVENZIP%" l -slt "%ZIPN%">"%GBC%\tmp.ini"
CALL :ALLPROC
del /q "%GBC%\tmp.ini"

if "%REXTN%"=="" SET REXTN=%ALLEXT%
if "%REALN%"=="" SET REALN=%ARCN%
exit /b

:ALLPROC
CALL :NAMEME

:GLOBAL
SET /A FILCNT+=1
call :GETME
if "%FILCNT%"=="%FILN%" exit /b
goto :GLOBAL

:NAMEME
set FILN=
for /f %%a in ('type "%GBC%\tmp.ini"') do set /A FILN+=1
exit /b

:GETME
set urlNthL=%FILCNT%
set ZIPCURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\tmp.ini" /L:%urlNthL%') do set ZIPCURL=%%~a
popd

:ZIPSET
set MTYP=
set WRITTEN=
for /f "tokens=1 delims==" %%a in ("%ZIPCURL%") do (
SET PATHF=%%~a
)
for %%a in ("%PATHF%") do set PATHN=%%~nxa
if "%PATHN%" NEQ "Path" exit /b
SET /A VARNUM+=1
for /f "tokens=2 delims==" %%a in ("%ZIPCURL%") do (
set ARCN=%%~nxa
set ARCF=%%~nxa
set ALLEXT=%%~xa
if "%VARNUM%" NEQ "1" CALL :ARCSET
if "%WRITTEN%"=="1" goto :EOF
)
exit /b

:SKIPZIP
SET SKIPZIP=1
exit /b

:CDIN
SET CDIN=1
exit /b

:ARCSET
if "%ALLEXT%"=="" exit /b
if /I "%ALLEXT%"==".mx1" SET MTYP=flop1
if /i "%ALLEXT%"==".bin" SET MTYP=cart
if /i "%ALLEXT%"==".rom" SET MTYP=cart
if /I "%ALLEXT%"==".ws" SET MTYP=cart
if /I "%ALLEXT%"==".sv" SET MTYP=cart
if /I "%ALLEXT%"==".wsc" SET MTYP=cart
if /I "%ALLEXT%"==".x64" SET MTYP=cart
if /I "%ALLEXT%"==".p00" SET MTYP=quik
if /I "%ALLEXT%"==".t64" SET MTYP=quik
if /I "%ALLEXT%"==".g64" SET MTYP=flop
if /I "%ALLEXT%"==".d64" SET MTYP=flop
if /I "%ALLEXT%"==".xex" SET MTYP=flop
if /I "%ALLEXT%"==".1dd" SET MTYP=flop1
if /I "%ALLEXT%"==".atr" SET MTYP=flop1
if /I "%ALLEXT%"==".obx" SET MTYP=flop1
if /I "%ALLEXT%"==".pro" SET MTYP=flop
if /I "%ALLEXT%"==".ngc" SET MTYP=cart
if /I "%ALLEXT%"==".emr" SET MTYP=cart
if /I "%ALLEXT%"==".neo" SET MTYP=cart
if /I "%ALLEXT%"==".ngp" SET MTYP=cart
if /I "%ALLEXT%"==".npk" SET MTYP=cart
if /I "%ALLEXT%"==".int" SET MTYP=cart
if /I "%ALLEXT%"==".col" SET MTYP=cart
if /I "%ALLEXT%"==".a78" SET MTYP=cart
if /I "%ALLEXT%"==".a26" SET MTYP=cart
if /I "%ALLEXT%"==".a52" SET MTYP=cart
if /I "%ALLEXT%"==".mfi" SET MTYP=flop
if /I "%ALLEXT%"==".dfi" SET MTYP=flop
if /I "%ALLEXT%"==".stx" SET MTYP=flop
if /I "%ALLEXT%"==".st" SET MTYP=flop
if /I "%ALLEXT%"==".msa" SET MTYP=flop
if /I "%ALLEXT%"==".lnx" SET MTYP=cart
if /I "%ALLEXT%"==".v64" SET MTYP=cart
if /I "%ALLEXT%"==".gb" SET MTYP=cart
if /I "%ALLEXT%"==".z64" SET MTYP=cart
if /I "%ALLEXT%"==".n64" SET MTYP=cart
if /I "%ALLEXT%"==".gbc" SET MTYP=cart
if /I "%ALLEXT%"==".jag" SET MTYP=cart
if /I "%ALLEXT%"==".sgb" SET MTYP=cart
if /I "%ALLEXT%"==".gba" SET MTYP=cart
if /I "%ALLEXT%"==".vb" SET MTYP=cart
if /I "%ALLEXT%"==".vboy" SET MTYP=cart
if /I "%ALLEXT%"==".mx2" SET MTYP=flop
if /I "%ALLEXT%"==".unf" SET MTYP=cart
if /I "%ALLEXT%"==".nsf" SET MTYP=cart
if /I "%ALLEXT%"==".nsf" SET MTYP=cart
if /I "%ALLEXT%"==".nes" SET MTYP=cart
if /I "%ALLEXT%"==".smc" SET MTYP=cart
if /I "%ALLEXT%"==".pco" SET MTYP=cart
if /I "%ALLEXT%"==".gen" SET MTYP=cart
if /I "%ALLEXT%"==".ptp" SET MTYP=cass
if /I "%ALLEXT%"==".tzx" SET MTYP=cass
if /I "%ALLEXT%"==".sna" SET MTYP=dump
if /I "%ALLEXT%"==".z80" SET MTYP=dump
if /I "%ALLEXT%"==".nas" SET MTYP=dump
if /I "%ALLEXT%"==".sav" SET MTYP=dump
if /I "%ALLEXT%"==".ach" SET MTYP=dump
if /I "%ALLEXT%"==".frz" SET MTYP=dump
if /I "%ALLEXT%"==".sem" SET MTYP=dump
if /I "%ALLEXT%"==".snx" SET MTYP=dump
if /I "%ALLEXT%"==".mtx" SET MTYP=dump
if /I "%ALLEXT%"==".m65" SET MTYP=dump
if /I "%ALLEXT%"==".zx" SET MTYP=dump
if /I "%ALLEXT%"==".sg" SET MTYP=cart
if /I "%ALLEXT%"==".sms" SET MTYP=cart
if /I "%ALLEXT%"==".gg" SET MTYP=cart
if /I "%ALLEXT%"==".32x" SET MTYP=cart
if /I "%ALLEXT%"==".sgx" SET MTYP=cart
if /I "%ALLEXT%"==".sad" SET MTYP=flop
if /I "%ALLEXT%"==".mgt" SET MTYP=flop1
if /I "%ALLEXT%"==".td0" SET MTYP=flop1
if /I "%ALLEXT%"==".opk" SET MTYP=cart
if /I "%ALLEXT%"==".pce" SET MTYP=cart
if /I "%ALLEXT%"==".d77" SET MTYP=flop1
if /I "%ALLEXT%"==".blk" SET MTYP=cass
if /I "%ALLEXT%"==".bit" SET MTYP=cass
if /I "%ALLEXT%"==".t77" SET MTYP=cass
if /I "%ALLEXT%"==".uef" SET MTYP=cass
if /I "%ALLEXT%"==".wav" SET MTYP=cass
if /I "%ALLEXT%"==".mdv" SET MTYP=cass
if /I "%ALLEXT%"==".rk" SET MTYP=cass
if /I "%ALLEXT%"==".rkr" SET MTYP=cass
if /I "%ALLEXT%"==".rk8" SET MTYP=cass
if /I "%ALLEXT%"==".gam" SET MTYP=cass
if /I "%ALLEXT%"==".g16" SET MTYP=cass
if /I "%ALLEXT%"==".pki" SET MTYP=cass
if /I "%ALLEXT%"==".dim" SET MTYP=flop1
if /I "%ALLEXT%"==".swc" SET MTYP=cart
if /I "%ALLEXT%"==".fig" SET MTYP=cart
if /I "%ALLEXT%"==".vec" SET MTYP=cart
if /I "%ALLEXT%"==".cmd" SET MTYP=quik
if /I "%ALLEXT%"==".scr" SET MTYP=quik
if /I "%ALLEXT%"==".prg" SET MTYP=quik
if /I "%ALLEXT%"==".pgm" SET MTYP=quik
if /I "%ALLEXT%"==".tvc" SET MTYP=quik
if /I "%ALLEXT%"==".fds" SET MTYP=flop
if /I "%ALLEXT%"==".sfc" SET MTYP=cart
if /I "%ALLEXT%"==".nez" SET MTYP=cart
if /I "%ALLEXT%"==".md" SET MTYP=cart
if /I "%ALLEXT%"==".m7" SET MTYP=cart
if /I "%ALLEXT%"==".smd" SET MTYP=cart
if /I "%ALLEXT%"==".d81" SET MTYP=flop
if /I "%ALLEXT%"==".adf" SET MTYP=flop
if /I "%ALLEXT%"==".rp2" SET MTYP=cart
if /I "%ALLEXT%"==".sap" SET MTYP=flop1
if /I "%ALLEXT%"==".qd" SET MTYP=flop1
if /I "%ALLEXT%"==".os9" SET MTYP=flop1
if /I "%ALLEXT%"==".dsk" SET MTYP=flop1
if /i "%ALLEXT%"==".zmk" SET MTYP=flop1
if /i "%ALLEXT%"==".tgc" SET MTYP=cart1
if /i "%ALLEXT%"==".img" SET MTYP=flop1
if /i "%ALLEXT%"==".ace" SET MTYP=dump
if /i "%ALLEXT%"==".20" SET MTYP=cart
if /i "%ALLEXT%"==".40" SET MTYP=cart
if /i "%ALLEXT%"==".60" SET MTYP=cart
if /i "%ALLEXT%"==".70" SET MTYP=cart
if /i "%ALLEXT%"==".b0" SET MTYP=cart
if /i "%ALLEXT%"==".a0" SET MTYP=cart
if /i "%ALLEXT%"==".crt" SET MTYP=cart
if /i "%ALLEXT%"==".do" SET MTYP=flop1
if /i "%ALLEXT%"==".po" SET MTYP=flop1
if /i "%ALLEXT%"==".2mg" SET MTYP=flop3
if /i "%ALLEXT%"==".cpr" SET MTYP=cart
if /i "%ALLEXT%"==".cas" SET MTYP=cass
if /i "%ALLEXT%"==".xdf" SET MTYP=flop1
if /i "%ALLEXT%"==".ipf" SET MTYP=flop
if /i "%ALLEXT%"==".tap" SET MTYP=cass
if /i "%ALLEXT%"==".wav" SET MTYP=cass
if /i "%ALLEXT%"==".k7" SET MTYP=cass
if /i "%ALLEXT%"==".cin" SET MTYP=cass
if /i "%ALLEXT%"==".for" SET MTYP=cass
if /i "%ALLEXT%"==".hdf" SET MTYP=sasi
if /i "%ALLEXT%"==".dup" SET MTYP=cart
if /i "%ALLEXT%"==".ima" SET MTYP=flop1
if /i "%ALLEXT%"==".imd" SET MTYP=flop1
if /i "%ALLEXT%"==".cqm" SET MTYP=flop1
if /i "%ALLEXT%"==".d88" SET MTYP=flop1
if /i "%ALLEXT%"==".2hd" SET MTYP=flop1
if /i "%ALLEXT%"==".2dd" SET MTYP=flop1
if /i "%ALLEXT%"==".fdi" SET MTYP=flop1
if /i "%ALLEXT%"==".dsd" SET MTYP=cart
if /i "%ALLEXT%"==".hd" SET MTYP=hard1
if "%MTYP%"=="" exit /b
if "%MTYP%" NEQ "" "%GBC%\fart.exe" "*.bat" [TYP] %MTYP%
set WRITTEN=1
exit /b

:REX
if "%MTYP%" NEQ "" SET REXTN=%ALLEXT%
if "%MTYP%" NEQ "" SET REALN=%ARCF%
exit /b
