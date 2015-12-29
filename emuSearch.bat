:BLDLIST
set ALLEMU=
set EXTRAUTO=
del /q "%GBC%\curlist.tmp"
del /q "%GBC%\extra.ini"
del /q "%GBC%\curlist.ini"
del /q "%GBC%\list.tmp"
del /q "%GBC%\list.ini"
copy /y "%GBC%\emuAssign.set" "%GBC%\list.ini"


:STATE
del /q "%GBC%\emxt.ini"
set EMUINI=list.ini
set EMUSTATE=Select a system to add
if "%HAVEARC%"=="1" call :REPOR
"%GBC%\multisel.exe" "%GBC%\%EMUINI%" ""%GBC%\curlist.ini"
if not exist "%GBC%\curlist.ini" goto :cbout
REM "%GBC%\Wselect.exe" "%GBC%\%INISTATE%.ini" "%EMUSTATE%" "set CONSCAB=$item" > "%GBC%\artSel.cmd"

for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do if "%%~a" =="ALL RECOMMENDED" set ALLEMU=1
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do if "%%~a" =="##OTHER EMULATORS##" set EXTRAUTO=1
if "%EXTRAUTO%"=="1" call :ADDUNSUP
if "%ALLEMU%"=="1" goto :ALLLIBS
exit /b

:REPOR
"%GBC%\fart.exe" "%GBC%\list.ini" "##OTHER EMULATORS##" --remove
"%GBC%\fart.exe" "%GBC%\list.ini" "ALL RECOMMENDED" --remove
type "%GBC%\extraEmulators.set">>"%GBC%\list.ini"
for /f "delims=" %%a in ('type "%GBC%\list.ini"') do for /f "delims=" %%g in ('dir /b/a-d "%GBC%\net\%%~a\%%~a*.7z"') do if exist "%GBC%\net\%%~a\%%~g" echo."%%~a">>"%GBC%\emxt.ini"
"%GBC%\fart.exe" "%GBC%\emxt.ini" "\"" --remove
set EMUINI=emxt.ini
exit /b

:ALLLIBS
copy /y "%GBC%\supportedEmulators.set" "%GBC%\curlist.ini"
if "%EXTRAUTO%"=="1" copy /b "%GBC%\curlist.tmp"+"%GBC%\extra.ini" "%GBC%\curlist.ini"
CALL "%GBC%\getEmulatorsAUTO.bat">>"%GBC%\logs\getEmulatorsAUTO.log"
exit /b

:ADDUNSUP
rename "%GBC%\curlist.ini" "curlist.tmp"
"%GBC%\multisel.exe" "%GBC%\altEmus.set" "%GBC%\extra.ini"
if not exist "%GBC%\extra.ini" goto :ESCEXT
exit /b

:ESCEXT
set EXTRAUTO=
rename "%GBC%\curtmp.ini" "curlist.ini"
del /q "%GBC%\curlist.tmp"
del /q "%GBC%\extra.ini"
exit /b

:cbout
set cbcancel=1
del /q "%GBC%\curlist.ini"