:bannerTrans
SET HSCHOICE=
SET RJCP=
SET SELHS=banner
if "%HSALT%"=="1" goto :MediaSelected
set HSMN=Media
for %%A in ("%HPN:~0,2%") do set HSDR=%%~A
for %%A in ("%HPN%\Media") do set HSMETA=%%~A

:MediaSelected
set DEFINEDIR=
echo ALL>"%GBC%\HsMedia.ini"
echo -------->>"%GBC%\HsMedia.ini"
echo.-LOCATE->>"%GBC%\HsMedia.ini"
echo.-------->>"%GBC%\HsMedia.ini"
:selhscon
for /f "delims=" %%a in ('dir /b /ad-h "%HSMETA%"') do echo %%~a>>"%GBC%\HsMedia.ini"
"%GBC%\Wselect.exe" "%GBC%\HsMedia.ini" "Select a console to transfer" "set HSCHOICE=$item" > "%GBC%\conchoice.cmd"
if %errorlevel%==0 GOTO :metaout
CALL "%GBC%\conchoice.cmd"
if /i "%HSCHOICE%"=="--------" goto :selhscon
for /f "delims=" %%a in ("%HSMETA%\%HSCHOICE%\Images\Wheel") do set BANLOC=%%~a
if /i "%HSCHOICE%"=="-LOCATE-" goto :DEFINEDIR
CALL "%GBC%\hsLst.bat">>"%GBC%\logs\hslst.log"
if "%DEFINEDIR%"=="1" goto :testcomplete
pushd "%GBG%\%GAM%\%CONS%"
if /i "%HSCHOICE%"=="ALL" goto :allbanner
if not exist "%HSCHOICE%" goto :rjcptst
goto :testcomplete

:rjcptst
if not exist "%RJCP%" call :xnotfound	
if "%RJCP%"=="" goto :metaout

:testcomplete
popd
if /i "%HSCHOICE%"=="ALL" goto :allbanner
if "%RJCP%" neq "" CALL "%GBC%\Hyperspinbanner.bat">>"%GBC%\logs\Hyperspinbanner.log"
goto :metaout

:DEFINEDIR
set DEFINEDIR=1
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET BANLOC=" "" "Select a wheel location" /noquote') do %%a
exit /b

:FUZZYTEST
"%GBC%\wbox.exe" "RJ_GUI" "Would you like to enable fuzzy matching for your artwork migration?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :fuzzy
if %ERRORLEVEL%==2 goto :strict
goto :strict
:fuzzy
set FUZZY=1
goto :METHODSET
:strict
set FUZZY=0
goto :METHODSET

:allbanner
call :FUZZYTEST

:METHODSET
for /f "delims=" %%a in ('dir /b /ad-h "%HSMETA%"') do (
SET HSCHOICE=%%~a
if "%%~a"=="Main Menu" exit /b
if "%%~a"=="Frontend" exit /b
CALL "%GBC%\hsLst.bat">>"%GBC%\logs\hslst.log"
pushd "%GBG%\%GAM%\%CONS%"
call :matchq
popd
if "%RJCP%" neq "" CALL "%GBC%\hyperSpinbanner.bat">>"%GBC%\logs\Hyperspinbanner.log"
)
goto :metaout

:notfound
for %%a in ("%RJCP%") do echo.%%~a>"%GBC%\hsnotfound.ini"
exit /b

:xnotfound
for %%a in ("%RJCP%") do echo.%%~a>"%GBC%\hsnotfound.ini"
"%GBC%\wbox.exe" "RJ_GUI" "%HSCHOICE%^does not exist in your library^or^may be named differently.^^MATCH:match to a console in your library" "Match;Skip" /DB=2 /TM=20
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :boxartTrans
goto :boxartTrans

:matchq
if exist "%RJCP%" exit /b
"%GBC%\wbox.exe" "RJ_GUI" "%HSCHOICE%^does not exist in your library^or^may be named differently.^^MATCH:match to a console in your library" "Match;Skip" /DB=2 /TM=20
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :skip
set RJCP=
exit /b

:skip
set RJCP=
exit /b

:match
del /q "%GBC%\consoles.ini"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\consoles.ini"
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "%HSCHOICE% is actually:" "set RJCP=$item" > "%GBC%\conschoice.cmd"
if %errorlevel%==0 GOTO :metaout
CALL "%GBC%\conschoice.cmd"
exit /b

:metaout