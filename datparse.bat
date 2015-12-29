set CNSLIST=matchlist.ini
set HSHTYP=%CNSLIST%
set REBUILD=
SET INIFILE=tst.ini
pushd "%GBG%\%ROMJ%"
for /f "delims=" %%a in ('dir /b/a-dh') do attrib -h "%%~a"
if not exist "%GBC%\%CNSLIST%" goto :GETHASHINI
goto :DATQUERY

:GETHASHINI
call "%GBC%\hashsort.bat">>"%GBC%\logs\hashsort.log"

:DATQUERY
GOTO :QUERYTYPE

:REHASH
set REBUILD=1
del /q "%GBC%\ROMINT.ini"
del /q "%GBC%\%CNSLIST%"
pushd "%GBG%\%ROMJ%"
call "%GBC%\hashsort.bat">>"%GBC%\logs\hashsort.log"

:QUERYTYPE
set CONSIDRD=1
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\hashing\*.cmd"') do if "%%~a" NEQ "" SET CONSIDRD=2
"%GBC%\wbox.exe" "RJ_GUI" "^#########^### DATABASES ###^#########^^### CHECK ###^Check hashed index against existing databases^^### REHASH ###^Rehash the contents of the RJ-Sort Folder to create an index^" "CHECK;REHASH;MENU" /DB=%CONSIDRD%
if %errorlevel%==1 goto :ROMV
if %errorlevel%==2 goto :REHASH
if %errorlevel%==3 goto :QUITOUT
goto :CONVERT

:ROMV
echo.-------->"%GBC%\extendedSelect.ini"
echo.-ALL->>"%GBC%\extendedSelect.ini"
type "%GBC%\extendedSelect.set">>"%GBC%\extendedSelect.ini"
"%GBC%\Wselect.exe" "%GBC%\extendedselect.ini" "system to look for" "set CSTCONS=$item" > "%GBC%\cursel.cmd"
call "%GBC%\cursel.cmd"
if "%CSTCONS%"=="--------" goto :ROMV
if "%CSTCONS%"=="" goto :QUITOUT
if "%CSTCONS%"=="-ALL-" goto :CHECKALL
pushd "%GBG%\%ROMJ%"
set LISTED="*.*"
goto :GETLIST

:CHECKALL
for /f "delims=" %%a in ('type "%GBC%\extendedSelect.set"') do (
set CSTCONS=%%~a
call :GETLIST
)
exit /b

:GETLIST
set LISTED="*.*"
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
if "%DATVRB%"==".dat" call "%GBC%\tosecnames.bat">>"%GBC%\logs\tosecnames.log"
if "%DATVRB%"==".dat" call "%GBC%\tosecshortnames.bat">>"%GBC%\logs\tosecshortames.log"
call "%GBC%\listed.bat">>"%GBC%\listed.log"
for /f "tokens=1,2,3 delims=:" %%a in ('type "%GBC%\%CNSLIST%"') do (
set ROMTST=%%~a:%%~b
set CRCSRC=%%~c
call :FINALCHK
if "%ROMNRM%" NEQ "" goto :EOF
)
exit /b


:FINALCHK
for /l %%a in (1,1,10) do call "%GBC%\hashing\%CSTCONS%_%%~a.cmd">>"%GBC%\logs\%CSTCONS%_%%~a.log"
if "%ROMRNM%"=="" goto :UNKNOWN
move /y "%ROMTST%" "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMRNM%" && "%GBC%\fart.exe" "%GBC%\%CNSLIST%" "%ROMRNM%" -- remove || echo."%ROMTST%">>"%GBC%\%CNSLIST%"
popd
exit /b

:CONVERT
call "%GBC%\convertindex.bat">>"%GBC%\logs\convertindex.log"
goto :QUERYTYPE
