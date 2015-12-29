set BATYPE=
set LOTYPE=
set VDTYPE=
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
if "%%~a"=="Boxart" set BATYPE=1
if "%%~a"=="Wheels" set LOTYPE=1
if "%%~a"=="Videos" set VDTYPE=1
)
set FUZZY=
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable fuzzy matching for your artwork migration?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :fuzzy
if %ERRORLEVEL%==2 goto :strict
goto :strict

:fuzzy
SET FUZZY=1
goto :AllTrans
:strict
SET FUZZY=0

:AllTrans
if "%HSALT%"=="1" goto :MediaSelected
set HSMN=Media
for %%A in ("%HPN:~0,2%") do set HSDR=%%~A
for %%A in ("%HPN%\Media") do set HSMETA=%%~A

:MediaSelected
for /f "delims=" %%a in ('dir /b /ad-h "%HSMETA%"') do (
set HSCHOICE=%%~a
pushd "%GBG%\%GAM%\%CONS%"
CALL "%GBC%\hsLst.bat">>"%GBC%\logs\hslst.log"
CALL :NWFND
popd
)
exit /b

:NWFND
if not exist "%RJCP%" call :matchq
if "%RJCP%"=="" exit /b
set ARTNUM=
echo.Artwork1>"%GBC%\artset.ini"
echo.Artwork2>>"%GBC%\artset.ini"
echo.Artwork3>>"%GBC%\artset.ini"
echo.Artwork4>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select Boxart Folder" "set ARTNUM=$item" > "%GBC%\artsel.cmd"
call "%GBC%\artsel.cmd"
if "%ARTNUM%"=="" goto :metaout

if "%RJCP%" neq "" CALL "%GBC%\HyperFullTransfer.bat">>"%GBC%\logs\HyperFullTransfer.log"
exit /b

:matchq
"%GBC%\wbox.exe" "RJ_GUI" "%HSCHOICE%^does not exist in your library^or^may be named differently.^^MATCH:match to a console in your library" "Match;Skip"
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :skip
set RJCP=
exit /b

:skip
set RJCP=
exit /b

:match
del /q "%GBC%\consoles.ini"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo."%%~a">>"%GBC%\consoles.ini"
"%GBC%\fart.exe" "%GBC%\consoles.ini" "\"" --remove
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "%HSCHOICE% is actually:" "$item" > "%GBC%\conschoice.cmd"
if %errorlevel%==0 GOTO :metaout
for /f "delims=" %%a in ('type "%GBC%\conschoice.cmd"') do set HSCHOICE=%%~a
exit /b

:metaout