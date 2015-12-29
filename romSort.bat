:ROMSORT
set /A TOTALNUM=
if "%ROMUSET%"=="1" goto :ROMPCK

:ROMPCK
ATTRIB +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
del /q "%GBC%\unsorted.ini"

for /f "delims=" %%a in ('dir /b /a-h "%GBG%\%ROMJ%"') do echo.%%~a>>"%GBC%\unsorted.ini"

for %%R in ("%GBC%\unsorted.ini") do if "%%~zR" equ "" goto :romsortquit
for %%R in ("%GBC%\unsorted.ini") do if %%~zR equ 0 goto :romsortquit
CALL "%GBC%\createConsoleDirectories.bat">>"%GBC%\logs\createConsoleDirectories.log"

%BSTRT% "%WFINS%" "RJ_GUI" "...UNSORTED ROMS..." /Stop /timeout:1
"%GBC%\wbox.exe" "RJ_GUI" "^^The RJ-Sort-Folder contains items that were not automatically identified and must be assigned to a console manually.^^     [Open Rom-Jacket]^Opens the RJ-Sort-Folder^     [Continue]^Main Menu^^" "Open_Rom-Jacket;Continue" /AL /DB=2 /BW=150
if %ERRORLEVEL%==1 goto :expRJ
if %ERRORLEVEL%==2 goto :romsortquit
goto :romsortquit

:expRJ
for /f "delims=" %%a in ('dir /b/a/s "%GBG%\%ROMJ%") do ATTRIB -H "%%~a"
explorer "%GBG%\%ROMJ%"
goto :RSComplete

:romsortquit
ATTRIB +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
CALL "%GBC%\cleanup.bat">>"%GBC%\logs\cleanup.log"
CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
:RSComplete
