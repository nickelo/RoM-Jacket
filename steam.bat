call "%GBC%\steamprep.bat">>"%GBC%\logs\steamprep.log"
if "%UNPREP%"=="1" exit /b
if "%STEAMICE%"=="" goto :RJSTEAM

call "%GBC%\steamice.bat">>"%GBC%\logs\steamice.log"
exit /b

:RJSTEAM
copy /y "%GBC%\net\STEAM\compile.set" "%GBC%\net\STEAM\compile.ini"
:SELECTCONSOLE
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%LOCMIR%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :QUITOUT 

:RECURSIVE
%BSTRT% "%WBUSY%" "RJ_GUI" "Adding" All Consoles" /marquee
set ADDALL=1
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set CSTCONS=%%~a
call :BEGIN
)
call :FINISH

%BSTRT% "%WFINS%" "RJ_GUI" "ALL Games Added" /STOP /TIMEOUT:1
exit /b


:BEGIN
set ICONUM=0
set FZQTOT=
%BSTRT% "%WBUSY%" "RJ_GUI" "Adding %CSTCONS% Games" /marquee
for /f "delims=" %%a in ('dir /s/b/a-d-h "%GBG%\%GAM%\%LOCMIR%\%CSTCONS%"') do (
set ROMF=%%~nxa
set ROMNAME=%%~na
set ROMFULL=%%~a
set ROMP=%%~dpa
CALL :COMP
)

:COMPILE
pushd "%GBC%\net\STEAM\%CSTCONS%"
for /f "delims=" %%a in ('dir /a:-d /o:n /b') do call :ANDQ "%%a"
popd
GOTO :UNNAMED

:ANDQ
set "newname=%~nx1"
set "newname=%newname:&=@%"
ren %1 "%newname%
exit /b

:UNNAMED
del /q "%GBC%\net\STEAM\addenum.ini"
del /q "%GBC%\net\STEAM\addenum.cmd"
REM del /q "%GBC%\net\STEAM\compile.ini"
del /q "%GBC%\net\STEAM\compile.cmd"
copy /y "%GBC%\net\STEAM\addenum.set" "%GBC%\net\STEAM\addenum.ini"
REM copy /y "%GBC%\net\STEAM\compile.set" "%GBC%\net\STEAM\compile.ini"
"%GBC%\fart.exe" "%GBC%\net\STEAM\compile.ini" [GBC] "%GBC%"

set FZQNUM=0
set REMAIN=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\STEAM\%CSTCONS%\*.fzq"') do set /a REMAIN+=1
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\STEAM\%CSTCONS%\*.fzq"') do (
set FZQN=%%~a
if "%FZQNUM%"=="" call "%GBC%\tmpdel.cmd">>"%GBC%\logs\tmpdel.log"
echo.del /q "%GBC%\net\STEAM\%CSTCONS%\%%~a">>"%GBC%\tmpdel.cmd"
set /a FZQNUM+=1
set /a REMAIN=-1
call :FZQCOMP
)

echo|set /p=" "[STMPTH]\Z.tot" ">>"%GBC%\net\STEAM\addenum.ini"
"%GBC%\fart.exe" "%GBC%\net\STEAM\addenum.ini" [STMPTH] "%GBC%\net\STEAM\%CSTCONS%"
del /q "%GBC%\net\STEAM\addenum.cmd"
rename "%GBC%\net\STEAM\addenum.ini" "addenum.cmd"
call "%GBC%\net\STEAM\addenum.cmd">>"%GBC%\logs\%CSTCONS%%FZQTOT%.log"
copy /y "%GBC%\net\STEAM\addenum.set" "%GBC%\net\STEAM\addenum.ini"
call "%GBC%\tmpdel.cmd">>"%GBC%\logs\tmpdel.log"
echo --------------->>"%GBC%\logs\tmpdel.log"
del /q "%GBC%\tmpdel.cmd"
goto :FZQCONT

:FZQCOMP
echo|set /p=" "[STMPTH]\%FZQN%" ">>"%GBC%\net\STEAM\addenum.ini"
if %REMAIN% EQU 0 exit /b
if %FZQNUM% LEQ 50 echo|set /p=" + ">>"%GBC%\net\STEAM\addenum.ini"
if %FZQNUM% LEQ 50 exit /b
set FZQNUM=
set /a FZQTOT+=1
call :TOTCOMP
exit /b

:TOTCOMP
echo|set /p=" "[STMPTH]\%FZQTOT%.tot" ">>"%GBC%\net\STEAM\addenum.ini"
"%GBC%\fart.exe" "%GBC%\net\STEAM\addenum.ini" [STMPTH] "%GBC%\net\STEAM\%CSTCONS%"
del /q "%GBC%\net\STEAM\addenum.cmd"
rename "%GBC%\net\STEAM\addenum.ini" "addenum.cmd"
call "%GBC%\net\STEAM\addenum.cmd">>"%GBC%\logs\%CSTCONS%%FZQTOT%.log"
copy /y "%GBC%\net\STEAM\addenum.set" "%GBC%\net\STEAM\addenum.ini"
call "%GBC%\tmpdel.cmd">>"%GBC%\logs\tmpdel.log"
echo --------------->>"%GBC%\logs\tmpdel.log"
del /q "%GBC%\tmpdel.cmd"
exit /b

:FZQCONT
"%GBC%\fart.exe" "%GBC%\net\STEAM\addenum.ini" [STMPTH] "%GBC%\net\STEAM\%CSTCONS%"
pushd "%GBC%\net\STEAM\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/a-d "*.tot"') do (
echo|set /p=" "%GBC%\net\STEAM\%CSTCONS%\%%~a" ">>"%GBC%\net\STEAM\compile.ini"
echo|set /p=" + ">>"%GBC%\net\STEAM\compile.ini"
)
"%GBC%\fart.exe" "%GBC%\net\STEAM\compile.ini" [STMPTH] "%GBC%\net\STEAM\%CSTCONS%"
if "%ADDALL%"=="1" goto :ADDMORE
%BSTRT% "%WFINS%" "RJ_GUI" "%CSTCONS% Games Added" /STOP /TIMEOUT:1
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to add another console to your Steam account?" "Yes;Finish"
if %ERRORLEVEL%==1 goto :ADDMORE
if %ERRORLEVEL%==2 goto :FINISH
goto :EOF

:ADDMORE
set ANOT=1
"%GBC%\fart.exe" "%GBC%\consoles.ini" "%CSTCONS%" --remove
copy /y "%GBC%\net\STEAM\SYSNAME.set" "%GBC%\net\STEAM\SYSNAME.tmp"
copy /y "%GBC%\net\STEAM\ICONUM.set" "%GBC%\net\STEAM\ICONUM.tmp"
"%GBC%\fart.exe" "%GBC%\net\STEAM\SYSNAME.tmp" [SYSNAME] "%CSTCONS%"
"%GBC%\fart.exe" "%GBC%\net\STEAM\ICONUM.tmp" [ICONUM] "%ICONUM%"
if "%ICONUM%"=="1" goto :SKP
if "%ICONUM%"=="0" goto :SKP
rename "%GBC%\net\STEAM\%CSTCONS%\Z.tot" "Z.del"
copy /b "%GBC%\net\STEAM\%CSTCONS%\Z.del" + "%GBC%\net\STEAM\SYSN.vdf"%ICONTMP% + "%GBC%\net\STEAM\SETEND.vdf" "%GBC%\net\STEAM\%CSTCONS%\Z.tot"
:SKP
if "%ADDALL%"=="1" exit /b
goto :SELECTCONSOLE

:FINISH
echo|set /p=" "[GBC]\net\STEAM\FIN.vdf" "[GBC]\net\STEAM\shortcuts.vdf" ">>"%GBC%\net\STEAM\compile.ini"
"%GBC%\fart.exe" "%GBC%\net\STEAM\compile.ini" [GBC] "%GBC%"
rename "%GBC%\net\STEAM\compile.ini" "compile.cmd"
call "%GBC%\net\STEAM\compile.cmd"
pushd "%GBC%"
copy /y "%GBC%\net\STEAM\shortcuts.vdf" "%STMSHRTCTPTH%"
exit /b

:COMP
set ICNEXST=
if "%STEAMICON%"=="" goto :COMPTIN
if exist "%HPN%\Media\%CSTCONS%\Wheel\%ROMNAME%.png" set ICNEXST=1
:COMPTIN
for %%a in ("%ROMP:~0,-1%") do set ROMPTH=%%~a
for %%a in ("%ROMPTH%") do set SYSNAME=%%~na
copy /y "%GBC%\net\STEAM\ROMN.set" "%GBC%\net\STEAM\ROMN.tmp"
copy /y "%GBC%\net\STEAM\FULLROM.set" "%GBC%\net\STEAM\FULLROM.tmp"
if "%ICNEXST%"=="1" copy /y "%GBC%\net\STEAM\ICONPATH.set" "%GBC%\net\STEAM\ICONPATH.tmp"
if "%ICNEXST%"=="1" "%GBC%\nconvert.exe" -resize 460 215 -out png -o "%GBC%\net\STEAM\%CSTCONS%\%ROMNAME%.png"  "%HPN%\Media\%CSTCONS%\Wheel\%ROMNAME%.png"
if "%ICNEXST%"=="1" "%GBC%\fart.exe" "%GBC%\net\STEAM\ICONPATH.tmp" [ICONPTH] "%GBC%\net\STEAM\%CSTCONS%\%ROMNAME%.png"
copy /y "%GBC%\net\STEAM\STARTDIR.set" "%GBC%\net\STEAM\STARTDIR.tmp"
copy /y "%GBC%\net\STEAM\SYSNAME.set" "%GBC%\net\STEAM\SYSNAME.tmp"
copy /y "%GBC%\net\STEAM\ICONUM.set" "%GBC%\net\STEAM\ICONUM.tmp"

pushd "%GBC%\net\STEAM"
if not exist "%CSTCONS%" mkdir "%CSTCONS%"
"%GBC%\fart.exe" "%GBC%\net\STEAM\ROMN.tmp" [ROMN] "%ROMNAME%"
"%GBC%\fart.exe" "%GBC%\net\STEAM\STARTDIR.tmp" [ROMPTH] "%ROMPTH%"
"%GBC%\fart.exe" "%GBC%\net\STEAM\FULLROM.tmp" [ROMPTH] "%ROMPTH%"
"%GBC%\fart.exe" "%GBC%\net\STEAM\FULLROM.tmp" [ROM] "%ROMF%"
if "%ICNEXST%"=="1" "%GBC%\fart.exe" "%GBC%\net\STEAM\ICONPATH.tmp" [ICONPTH] "%ICONPTH%"
"%GBC%\fart.exe" "%GBC%\net\STEAM\SYSNAME.tmp" [SYSNAME] "%CSTCONS%"
if "%ICONUM%"=="0" "%GBC%\fart.exe" "%GBC%\net\STEAM\ICONUM.tmp" [ICONUM] "0"
"%GBC%\fart.exe" "%GBC%\net\STEAM\ICONUM.tmp" [ICONUM] "%ICONUM%"
set ICONP=
if "%ICNEXST%"=="1" set ICONP= + "%GBC%\net\STEAM\ICONPATH.tmp"
set ICONTMP= + "%GBC%\net\STEAM\ICONUM.tmp"
if "%ICONUM%"=="1" copy /b "%GBC%\net\STEAM\SETEND.vdf" + "%GBC%\net\STEAM\ROMN.tmp" + "%GBC%\net\STEAM\EXE.vdf" + "%GBC%\net\STEAM\FULLROM.tmp" + "%GBC%\net\STEAM\START.vdf" + "%GBC%\net\STEAM\STARTDIR.tmp" + "%GBC%\net\STEAM\ICON.vdf"%ICONP% + "%GBC%\net\STEAM\TAGS.vdf" + "%GBC%\net\STEAM\SYSNAME.tmp"  "%GBC%\net\STEAM\%CSTCONS%\%ROMNAME%.fzq"
if "%ICONUM%"=="0" copy /b "%GBC%\net\STEAM\ROMN.tmp" + "%GBC%\net\STEAM\EXE.vdf" + "%GBC%\net\STEAM\FULLROM.tmp" + "%GBC%\net\STEAM\START.vdf" + "%GBC%\net\STEAM\STARTDIR.tmp" + "%GBC%\net\STEAM\ICON.vdf"%ICONP% + "%GBC%\net\STEAM\TAGS.vdf" + "%GBC%\net\STEAM\SYSNAME.tmp" + "%GBC%\net\STEAM\SYSN.vdf"%ICONTMP% "%GBC%\net\STEAM\%CSTCONS%\0000001.fzq"
if %ICONUM% GTR 1 copy /b "%GBC%\net\STEAM\SYSN.vdf"%ICONTMP% + "%GBC%\net\STEAM\SETEND.vdf" + "%GBC%\net\STEAM\ROMN.tmp" + "%GBC%\net\STEAM\EXE.vdf" + "%GBC%\net\STEAM\FULLROM.tmp" + "%GBC%\net\STEAM\START.vdf" + "%GBC%\net\STEAM\STARTDIR.tmp" + "%GBC%\net\STEAM\ICON.vdf"%ICONP% + "%GBC%\net\STEAM\TAGS.vdf" + "%GBC%\net\STEAM\SYSNAME.tmp" "%GBC%\net\STEAM\%CSTCONS%\%ROMNAME%.fzq"
SET /a ICONUM+=1
