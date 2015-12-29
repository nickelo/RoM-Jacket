:BEGINROMULATE
%GBD%
cd "%GBC%"
set ROMUSET=1
%BSTRT% "%WBUSY%" "RJ_GUI" "Indexing your RJ-Sort-Folder^" /marquee
del /q "%GBC%\copy.ini"
set ARCVTST=
set ARCVZIP=
set ARCVRAR=
set ARCVSVN=
mkdir "SORTED ARCHIVES"
ATTRIB +H "SORTED ARCHIVES"
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GBG%\%ROMJ%\SORTED ARCHIVES"') do ATTRIB +H "%%~a"
for /f  "delims=" %%c in ('dir /b /a-h /s "%GBG%\%ROMJ%"') do (
if "%%~xc"==".7z" SET ARCVTST=1
if "%%~xc"==".rar" SET ARCVTST=1
if "%%~xc"==".zip" SET ARCVTST=1
if "%%~xc"==".zip" SET ARCVZIP=1
if "%%~xc"==".rar" SET ARCVRAR=1
if "%%~xc"==".7z" SET ARCVSVN=1
echo.%%~nxc>>"%GBC%\copy.ini"
)
%BSTRT% "%WFINS%" "RJ_GUI" "Indexed" /Stop /timeout:1
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :endromulate
%BSTRT% "%WFINS%" "RJ_GUI" "Indexing complete" /Stop /timeout:3
if "%ROMULT%"=="1" call "%GBC%\datchk.bat">>"%GBC%\logs\datchk.log"
CALL "%GBC%\sortingLoose.bat">>"%GBC%\logs\sortingloose.log"
if "%XPADDER%"=="DISABLED" goto :cleanupromulating
CALL "%GBC%\cleanup.bat">>"%GBC%\logs\cleanup.log"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
CALL "%GBC%\emulatorcheck.bat">>"%GBC%\logs\emulatorCheck.log"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDE
if exist CALL "%GBC%\getEmulatorsDEPEND.bat">>"%GBC%\logs\getEmulatorsDEPEND.log"
del /q "%GBC%\copy.ini"
exit /b

:cleanupromulating
%BSTRT% "%WBUSY%" "RJ_GUI" "Cleaning Up" /marquee
CALL "%GBC%\cleanup.bat">>"%GBC%\logs\cleanup.log"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete"  /Stop /timeout:3
SET FIRSTRUN=0
CALL "%GBC%\emulatorcheck.bat">>"%GBC%\logs\emulatorCheck.log"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDE
CALL "%GBC%\getEmulatorsDEPEND.bat">>"%GBC%\logs\getEmulatorsDEPEND.log"

:METAUNHIDE
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET GLR=%%~a
CALL :UNHIDE
)
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
exit /b

:UNHIDE
%GAMDRV%
cd "%GBG%\%GAM%\%CONS%\%GLR%"
for /f "delims=" %%a in ('dir /b /a "*.jpg"') do ATTRIB -H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.png"') do ATTRIB -H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.xml"') do ATTRIB -H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.nfo"') do ATTRIB -H "%%~a"

:endromulate
del /q "%GBC%\copy.ini"
exit /b
