set PARSTYP=HASH
:REPARSE
for %%a in ("RJ Sort-Folder") do set SORTFLD=%%~a
if "%PREJACKET%"=="1" for %%a in ("Console's Folder") do set SORTFLD=%%~a
"%GBC%\wbox.exe" "RJ_GUI" "^#########^### ROM IDENTIFICATION ###^#########^^### HASH ###^Use known CRC identifiers to Catalog files in your %SORTFLD%^^### WIZARD ###^Intelligently sort roms individually and via known extensions.^" "%PARSTYP%;WIZARD" /DB=2
if %errorlevel%==1 goto :DATV
if %errorlevel%==2 goto :ROMV
goto :QUITOUT

:DATV
set SORTING=1
set COMPSORT=
call "%GBC%\xmlvar.bat">>"%GBC%\logs\xmlvar.log"
popd
pushd "%GBC%"
set PARSTYP=REHASH
goto :REPARSE2

:ROMV
set AUTOSRT=1
if "%ROMULT%"=="1" exit /b
if "%COMPSORT%" NEQ "1" call "%GBC%\Romulate.bat">>"%GBC%\logs\romulate.log"
exit /b
