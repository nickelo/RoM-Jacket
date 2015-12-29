:INIT
if "%REPO%"=="" exit /b
for /f "tokens=2 delims=:/" %%a in ('type "%GBC%\%COMLIST%"') do if "%%~a"=="%REPO%" for /f "delims=" %%a in ("http://%%~a/download") do set DWNPRFX=%%~a
if "%DWNPRFX%"=="" exit /b
:SelList

:RESUMECONSOLES
set RGN=
set CONVXT=
set NOINDX=
set cbcancel=
set CANCELLED=
set RDRTRY=
set GETROM=
set ARCDO=1

for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\scrape\*.bat"') do echo."%%~na">>"%GBC%\consoles.ini"
"%GBC%\fart.exe" "%GBC%\consoles.ini" "\"" --remove
REM if not exist "%GBC%\net\%REPTYP%\consoles.ini" set NOINDX=1
REM if "%NOINDX%"=="1" goto :GETCONSOLES

call "%GBC%\fesysadd.bat"
if "%cbcancel%"=="1" goto :CANCELLED
set ARCDO=
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do set CSTCONS=%%~a
del /q "%GBC%\net\%REPTYP%\index.html"
call :PULLF
goto :SelList
exit /b

:ECHOSUB
call "%GBC%\	"
exit /b

:GETCONSOLES
set CSTCONS=consoles
call :GETARCORG

:PULLF
del /q "%GBC%\rdpass.ini"
del /q "%GBC%\rdftd.ini"


REM if "%NOINDX%"=="1" goto :CANCELLED
if "%NOINDX%"=="2" goto :RESUMECONSOLES


REM call "%GBC%\rdcons.bat"
call "%GBC%\shortname.bat"


set CONVXT=
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%REPTYP%\%CSTCONS%*ini"') do set CONVXT=1
if "%CONVXT%"=="" call :GETARCORG
if "%CONVXT%"=="1" call :ECHOSUB
if not exist "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.html" call :GETINDEX
if not exist "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.html" goto :FAILED
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.ini"') do echo."%%~a">>"%GBC%\rdpass.ini"
"%GBC%\fart.exe" "%GBC%\rdpass.ini" "\"" --remove
set ARCDO=
set GETROM=1
call "%GBC%\fesysadd.bat"
if "%cbcancel%"=="1" goto :CANCELLED

:ITERATE
if "%RDRTY%"=="1" copy /y "%GBC%\rdftd.ini" "%GBC%\curlist.ini"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
set NEWROM=%%~a
CALL :GETROMS
)
set GETROM=
if "%CANCELLED%"=="1" exit /b
if not exist "%GBC%\rdftd.ini" goto :DWNLCOMPL
%BSTRT% "%WBUSY%" "RJ_GUI" "Some ROMs could not be downloaded" /stop /timeout:1
"%GBC%\fart.exe" "%GBC%\rdftd.ini" "\"" --remove
goto :RDFNOTIFY
exit /b


:RDFNOTIFY
"%GBC%\wbox.exe" "RJ_GUI" "Some ROMs could not be aquired." "Retry;Abort" /DB=2
if %errorlevel%==1 goto :RDRETRY
if %errorlevel%==2 goto :CANCELLED
goto :CANCELLED

:FAILED
"%GBC%\wbox.exe" "RJ_GUI" "Index could not be downloaded" "Okay" /DB=1
if %errorlevel%==1 goto :SelList
goto :SelList

:GETINDEX
call "%GBC%\getHTML.bat"
exit /b

:RDRETRY
set RDRTRY=1
goto :ITERATE

:ADDSUBS
call "%GBC%\subHTML.bat"
goto :GETINDEX

:GETARCORG
:DWNLIND
set CANCELLED=


call "%GBC%\shortname.bat"

if exist "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.html" del /q "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.html"
REM if "%RDCONS%"=="" for %%a in ("%CSTCONS%") do set RDCONS=%%~a
if "%RDCONS%"=="consoles" set RDCONS=
set SUBCONS=
set REGION=

if "%CSTCONS%"=="consoles" set REGION=/roms
if "%CSTCONS%"=="[Game Manuals]" SET SUBCONS=1
if "%CSTCONS%"=="[Hacks]" SET SUBCONS=1
if "%CSTCONS%"=="[Homebrew]" SET SUBCONS=1
if "%CSTCONS%"=="[Pending Approval]" SET SUBCONS=1
if "%CSTCONS%"=="%ACARC%" SET SUBCONS=1
if "%CSTCONS%"=="%SG32X%" SET SUBCONS=1
if "%CSTCONS%"=="%SEGAG%" SET SUBCONS=1
if "%CSTCONS%"=="%NDS%" SET SUBCONS=1
if "%CSTCONS%"=="%CM64%" SET SUBCONS=1
if "%CSTCONS%"=="%NES%" SET SUBCONS=1
if "%CSTCONS%"=="%NGB%" SET SUBCONS=1
if "%CSTCONS%"=="%NGBA%" SET SUBCONS=1
if "%CSTCONS%"=="%NGBC%" SET SUBCONS=1
if "%CSTCONS%"=="%SSAT%" SET SUBCONS=1
if "%CSTCONS%"=="%AT78%" SET SUBCONS=1
if "%CSTCONS%"=="%TG16%" SET SUBCONS=1
if "%SUBCONS%"=="1" goto :ADDSUBS
if "%NOINDX%"=="1" goto :GETINDEX
if "%CONVXT%"=="" goto :GETINDEX
exit /b

:GETROMS
if not exist "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.ini" call :DWNLIND
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%" mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%"
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\net\%REPTYP%\%CSTCONS%%RGN%.ini"') do (
set ROMTCH=%%~a
set ROMURL=%%~b
if "%%~a"=="%NEWROM%" call :ROMAQUIRE
)
exit /b

:ROMAQUIRE
%BSTRT% "%WBUSY%" "RJ_GUI" "DOWNLOADING ROMS" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%" "%DWNPRFX%/%ROMURL%"
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMTCH%" echo."%ROMTCH%">>"%GBC%\rdftd.ini"
exit /b

:DWNLCOMPL
%BSTRT% "%WBUSY%" "RJ_GUI" "All ROMs downloaded successfully" /stop /timeout:1
goto :INIT

:CANCELLED
set CANCELLED=1