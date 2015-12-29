:UNSORT
del /q "%GBC%\currentlist.ini"
del /q "%GBC%\output_(currentlist).txt"
%BSTRT% "%WBUSY%" "Indexing" "Indexing your library" /Marquee
echo.=>"%GBC%\currentlist.ini"
echo.ALL>>"%GBC%\currentlist.ini"
if not exist "%GBC%\conselect.ini" goto :INIT
CALL :NOTEXIST
if "%ISTNM%"=="" %BSTRT% "%WFINS%" "Indexing" "Complete" /Stop /timeout:1
if "%ISTNM%"=="" exit /b

:INIT
if not exist "%GBC%\conselect.ini" call :CONCAT
SET /A UNNUM=0
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
SET CURLIST=%%~a
call :REMOVE
)

%BSTRT% "%WFINS%" "Indexing" "Complete" /Stop /timeout:1
call :STRIPINI
call :TEST
for %%R in ("%GBC%\currentlist.ini") do if %%~zR leq 8 exit /b
goto :UNEMPTY

:NOTEXIST
set ISTNM=
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET ALIST=%%~a
call :INTESTS
)
exit /b

:CONCAT
for /f "delims=" %%a in ('type "%GBC%\extendedselect.set"') do echo.%%~a>>"%GBC%\conselect.ini"
exit /b

:INTESTS
for /f "delims=" %%a in ('type "%GBC%\conselect.ini"') do if "%%~a"=="%ALIST%" set ISTNM=1
exit /b

:REMOVE
SET HERE=
for /f "delims=" %%a in ('type "%GBC%\conselect.ini"') do if /i "%CURLIST%"=="%%~a" SET HERE=1
REM if "%HERE%"=="" move /y "%GBG%\%GAM%\%CONS%\%CURLIST%" "%GBG%\%ROMJ%"
if "%HERE%"=="" call :CURLIST
if "%HERE%"=="" SET /A UNNUM+=1
exit /b

:CURLIST
for %%a in ("%CURLIST%") do echo.%%~a>>"%GBC%\currentlist.ini"
exit /b

:TEST
set ALLSET=1
for %%R in ("%GBC%\currentlist.ini") do if %%~zR leq 8 SET ALLSET=0
exit /b

:UNEMPTY
if "%UNNUM%"=="0" exit /b
%BSTRT% "%WFINS%" "Indexing" "%UNNUM% systems found" /Stop /timeout:2
"%GBC%\wbox.exe" "RJ_GUI" "^####################################################^%UNNUM% unknown or improperly named systems have been found in your library.^####################################################^^        You may choose to:^^[IMPORT] unidentified consoles as custom consoles^^[SORT] unidentified consoles to your RJ-Sort-Folder^^[DETECT] unidentified consoles using fuzzy matching logic.^^[MATCH] an unidentified console to a supported console.^^[IGNORE] improperly named consoles and continue jacketizing.^" "IMPORT;SORT;DETECT;MATCH;IGNORE;HELP" /AL /DB=3
if %ERRORLEVEL%==1 goto :ADD
if %ERRORLEVEL%==2 goto :MOVE
if %ERRORLEVEL%==3 goto :FUZZ
if %ERRORLEVEL%==4 goto :RENAME
if %ERRORLEVEL%==5 goto :EOF
if %ERRORLEVEL%==6 goto :HELP
goto :EOF

:RENAME
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "ALL" "=="
"%GBC%\wselect.exe" "%GBC%\currentlist.ini" "Select to rename" "set UNKNO=$item" > "%GBC%\unknown.cmd"
if %errorlevel% == 0 goto :UNEMPTY
call "%GBC%\unknown.cmd"
if /i "%UNKNO%"=="" goto :RENAME
if /i "%UNKNO%"=="=" goto :RENAME
if /i "%UNKNO%"=="==" goto :RENAME
if /i "%UNKNO%"=="ALL" goto :RENAME
"%GBC%\wselect.exe" "%GBC%\extendedselect.set" "%UNKNO% matches..." "set KNOWN=$item" > "%GBC%\known.cmd"
if %errorlevel% == 0 goto :UNEMPTY
call "%GBC%\known.cmd"
if exist "%GBG%\%GAM%\%CONS%\%KNOWN%" (%ROBOCPY% "%GBG%\%GAM%\%CONS%\%UNKNO%" "%GBG%\%GAM%\%CONS%\%KNOWN%" /R:2 /W:2 /NP /E /IS /MOVE	 && "%GBC%\fart.exe" "%GBC%\currentlist.ini" "%UNKNO%" --remove) ELSE (rename "%GBG%\%GAM%\%CONS%\%UNKNO%" "%KNOWN%" && "%GBC%\fart.exe" "%GBC%\currentlist.ini" "%UNKNO%" --remove)
SET /A UNNUM=-1
goto :UNEMPTY

:HELP
"%GBC%\docs\sort.html"
"%GBC%\wbox.exe" "RJ_GUI" "Help is opening" "OK" /TM=3
goto :UNEMPTY

:MOVE
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "==" "ALL"
"%GBC%\wselect.exe" "%GBC%\currentlist.ini" "System integration" "set UNKNO=$item" > "%GBC%\unknown.cmd"
if %errorlevel% == 0 exit /b
call "%GBC%\unknown.cmd"
if "%UNKNO%"=="ALL" goto :TORJF
if "%UNKNO%"=="=" goto :MOVE
if "%UNKNO%"=="" exit /b
move /y "%GBG%\%GAM%\%CONS%\%UNKNO%" "%GBG%\%ROMJ%" && set /A UNNUM+=-1
goto :UNEMPTY

:ADD
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "==" "ALL"
"%GBC%\wselect.exe" "%GBC%\currentlist.ini" "System integration" "set UNKNO=$item" > "%GBC%\unknown.cmd"
if %errorlevel% == 0 exit /b
call "%GBC%\unknown.cmd"
if "%UNKNO%"=="ALL" goto :ADDALL
if "%UNKNO%"=="=" goto :ADD
if "%UNKNO%"=="" exit /b
for %%a in ("%UNKNO%") do echo.%%~a>>"%GBC%\conselect.ini"
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "%UNKNO%" --remove
CALL :STRIPINI
call :TEST
if "%ALLSET%"=="0" exit /b
set /A UNNUM=-1
goto :UNEMPTY

:FUZZ
%BSTRT% "%WBUSY%" "RJ_GUI" "RomJacket is attempting to identify and catalogue your unidentified systems." /Marquee
set PREREQ=
CALL "%GBC%\presort.bat">>"%GBC%\logs\presort.log"
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /stop /TIMEOUT:1
CALL :STRIPINI
call :TEST
if "%ALLSET%"=="0" goto :UNEMPTY
goto :UNEMPTY

:TORJF
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "ALL" --remove
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "==" --remove
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "=" --remove
for /f "delims=" %%a in ('type "%GBC%\currentlist.ini"') do move /y "%%~a" "%GBG%\%ROMJ%"
exit /b

:ADDALL
for /f "delims=" %%a in ('type "%GBC%\currentlist.ini"') do if "%%~a" NEQ "=" echo.%%~a>>"%GBC%\conselect.ini"
set /a UNNUM=0
exit /b

:STRIPINI
for %%A in ("%GBC%\currentlist.ini") do call :Strip %%A
exit /b

:Strip
For %%x in (%*) do set OutF=output_(%%~nx).txt
del %OutF%
for /F "tokens=* delims=" %%B in (%*) do echo %%B >> %OutF%
Goto :EOF
