SET RCALL=
:GENCUST
if "%DLGM%"=="1" goto :CSD
if "%DLGM%"=="0" goto :IND
:FOLDERQUERY
SET DLM= 
"%GBC%\wbox.exe" "RJ_GUI" "###FOLDER GENERATION ###^^##############^#Consolidate#^#############^Groups ROMs for titles using ()[] standard conventions for a frontend environment.^^############^#Individuate#^############^Each ROM gets it's own folder.^" "Consolidate;Individuate" /DB=1
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
goto :regen

:regen
SET RCALL=1
goto :generatedlib

:CSD
set DLM=0
goto :FOLDERBEGIN

:IND
set DLM=1
goto :FOLDERBEGIN

:FOLDERBEGIN
pushd "%GBG%\%GAM%\%CONS%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Processing folders." /marquee
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" SET CURNTA=conselect.ini
for /f "delims=" %%a in ('type "%GBC%\%CURNTA%"') do (
SET LDR=%%a
set CSTCONS=%%~a
CALL :libiterate
)
%BSTRT% "%WFINS%" "RJ_GUI" "Folders Processed" /Stop /timeout:1
popd
goto :generatedlib

:libiterate
call "%GBC%\emuDefaults.bat">>"%GBC%\logs\emuDefaults.log"
if not exist "%GBG%\%GAM%\%CONS%\%LDR%" exit /b
pushd "%GBG%\%GAM%\%CONS%\%LDR%"
if "%LDR%"=="%MSDS%" CALL "%GBC%\MSDSAlias.bat">>"%GBC%\logs\MSDSAlias.log"
if "%LDR%"=="%ARCD%" CALL "%GBC%\mameAlias.bat">>"%GBC%\logs\mameAlias.log"
if "%LDR%"=="%TAITX%" CALL "%GBC%\TAITXAlias.bat">>"%GBC%\logs\TAITXAlias.log"
if "%LDR%"=="%SGFX%" CALL "%GBC%\necAlias.bat">>"%GBC%\logs\necAlias.log"
if "%LDR%"=="%PCENG%" CALL "%GBC%\necAlias.bat">>"%GBC%\logs\necAlias.log"
if "%LDR%"=="%TG16%" CALL "%GBC%\necAlias.bat">>"%GBC%\logs\necAlias.log"
if "%LDR%"=="%CPS%" CALL "%GBC%\cpsAlias.bat">>"%GBC%\logs\cpsAlias.log"
if "%LDR%"=="%CPS2%" CALL "%GBC%\cps2Alias.bat">>"%GBC%\logs\cps2Alias.log"
if "%LDR%"=="%CPS3%" CALL "%GBC%\cps3Alias.bat">>"%GBC%\logs\cps3Alias.log"
if "%LDR%"=="%NEOGE%" CALL "%GBC%\HNG64Alias.bat">>"%GBC%\logs\HNG64Alias.log"
if "%LDR%"=="%NEOGE%" CALL "%GBC%\neogeoAlias.bat">>"%GBC%\logs\neogeoAlias.log"
if "%LDR%"=="%SEGM2%" CALL "%GBC%\model2Alias.bat">>"%GBC%\logs\model2Alias.log"
if "%LDR%"=="%SEGM3%" CALL "%GBC%\model3Alias.bat">>"%GBC%\logs\model3Alias.log"
if "%LDR%"=="%NAOMI%" CALL "%GBC%\naomiAlias.bat">>"%GBC%\logs\naomiAlias.log"
if "%LDR%"=="%ATMS%" CALL "%GBC%\atomisAlias.bat">>"%GBC%\logs\atomisAlias.log"
if "%LDR%"=="%SEGAMD%" CALL "%GBC%\megaDriveAlias.bat">>"%GBC%\logs\megaDriveAlias.log"
if "%LDR%"=="%SEGAG%" CALL "%GBC%\megaDriveAlias.bat">>"%GBC%\logs\megaDriveAlias.log"
if "%DLM%"=="1" call :hidemeta
if "%DLM%"=="1" call :MOVEONE
if "%DLM%"=="1" exit /b
call :MOVEREMAINING
exit /b

:MOVEREMAINING
del /q "%GBC%\ROMS*.ini"
for /f "delims=" %%a in ('dir /b /a-d-h "%GBG%\%GAM%\%CONS%\%LDR%"') do (
SET SNAME=
SET TOTALCOUNT=
SET RCOUNT=
SET ROMF=%%~na
SET ROMA=%%~a
CALL :DEFCHK
)

:BASE_NAME_PARENTH
for /f "delims=" %%a in ('dir /b /a-d-h "*(*"') do (
SET RCOUNT=
SET TOTALCOUNT=
SET SNAME=
call :hidemeta
SET ROMK=%%~na
SET ROMX=%%~nxa
call :GETPARENTH
call :unhidemeta
)
goto :MOVELIST
exit /b

:DEFCHK
for /f "tokens=1 delims=([" %%a in ("%ROMF%") do SET SNAME=%%~nxa
if "%SNAME%" NEQ "%ROMF%" exit /b
for /f "delims=" %%a in ('dir /b/a-d "%ROMF%*"') do SET /A TOTALCOUNT+=1
echo."%ROMF%">>"%GBC%\ROMS-%TOTALCOUNT%-.ini" 
exit /b

:MOVEONE
for /f "delims=" %%a in ('dir /b/a-d-h') do (
md "%%~na" >null
move /y "%%~a" "%%~na"
)
exit /b

:MOVETRANSFORMED
exit /b

:MOVEALL
for %%a in ("%ROMF%") do set FOROM=%%~nxa
for /f "delims=" %%a in ('dir /b /a-d-h "%ROMF%.*"') do (
move "%%~a" "%FOROM%"
)
exit /b

:UPDATE
if "%CLSTR%"=="~0,1" set CLSTR=
if "%CLSTR%"=="" exit /b
if "%CLCHNG%" NEQ "%CLSTR%" %BSTRT% "%WBUSY%" "RJ_GUI" "Foldering the ''%CLSTR%'' cluster of the %LDR% library." /marquee
SET CLCHNG=%CLSTR%
exit /b

:COUNTSHRT
for /f "delims=" %%a in ("%SNAME%") do set SNAME=%%~nxa
for /f "delims=" %%a in ('dir /b/a-d-h "%SNAME%*"') do SET /A TOTALCOUNT+=1
exit /b

:GETPARENTH
for %%a in ("%ROMX:~0,1%") do if "%%~a"=="(" exit /b
SET CLSTR=
SET TOTALCOUNT=
for /f "tokens=1 delims=([" %%a in ("%ROMX%") do (
SET SNAME=%%~nxa
CALL :COUNTSHRT
)
set CLSTR=%SNAME:~0,1%
CALL :UPDATE
CALL :WRITEINI
exit /b

:GETEXTENSION
echo."%SNAME%" | %FNDSTR% /C:"." 1>nul
if errorlevel 0 call :TRANSFORMNAME
exit /b

:WRITEINI
for %%a in ("%SNAME%") do echo."%%~nxa">>"%GBC%\ROMS-%TOTALCOUNT%-.ini"
mkdir "%SNAME%"
exit /b

:MOVELIST
pushd "%GBC%\net\%LNCH%\%CSTLNCH%"
%BSTRT% "%WBUSY%" "RJ_GUI" "Consolidating the %LDR% library." /marquee
popd
SET /A NEWNUM=0
for /f "delims=" %%a in ('TYPE "%GBC%\hundo.set"') do (
SET NEWNUM=%%~a
call :chkfor
)
call :STRAGL
exit /b

:chkfor
if exist "%GBC%\ROMS-%NEWNUM%-.ini" CALL :COPYINI
exit /b

:COPYINI
"%GBC%\fart.exe" "%GBC%\ROMS-%NEWNUM%-.ini" \" --remove
for /f "delims=" %%a in ('TYPE "%GBC%\ROMS-%NEWNUM%-.ini"') do (
mkdir "%%~a"
SET TOREN=%%~a
call :RENAME
)
exit /b

:RENAME
for /f "delims=" %%a in ("%TOREN%") do SET SNAME=%%~nxa
move /y "%SNAME%*.*" "%SNAME%"
exit /b

:NUMEND
exit /b

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:MOVEIN_B
md "%ROMN%" >nul
for /f "delims=" %%a in ('dir /b /a-d-h "%ROMN%*[*"') do (
move "%%~a" "%ROMN%"
)
exit /b

:MOVEIN_P
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d-h "%SNAME%*"') do (
set SNAME=%%~nxa
mkdir "%%~nxa"
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:CONCATNAME
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d-h "%ROMF%") do set SNAME=%%~nxa
exit /b

:TRANSFORMNAME
for %%a in ("%SNAME%") do set SNAME=%%~nxa
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::STRAGGLERS:::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:STRAGL
for /f "delims=" %%a in ('dir /b/a-d-h') do (
set JSTROM=%%~nxa
set JSTRMN=%%~na
CALL :CCTATE
)
for /f "delims=" %%a in ('dir /b/a-d-h') do (
set JSTROM=%%~snxa
set JSTRMN=%%~sna
CALL :CCTATE
)
exit /b

:CCTATE
for %%a in ("%JSTRMN:~0,-1%") do set ROMFLD=%%~a
for %%a in ("%JSTRMN:~-1%") do if "%%~a"=="." call :SPCDIR
exit /b

:SPCDIR
for %%a in ("%ROMFLD:~-1%") do if "%%~a"==" " call :DELDOT
for %%a in ("%ROMFLD:~-1%") do if "%%~a"=="." call :DELDOT
if exist "%JSTROM%" mkdir "%ROMFLD%" && move /y "%JSTROM%" "%ROMFLD%"
exit /b

:DELDOT
for %%a in ("%ROMFLD:~0,-1%") do set ROMFLD=%%~a
goto :SPCDIR
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::METASKIP:::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:hidemeta
for /f "delims=" %%a in ('dir /b /a-d') do (
set ROMNCFGS=%%~a
set ROMXCFG=%%~xa
call :SETMETA
)
exit /b

:SETMETA
for /f "delims=" %%a in (".settings" ".config" ".conf" ".cfg" ".ini" ".jpg" ".png" ".xml" ".nfo" ".tbn") do if "%ROMXFG%"=="%%~a" set attrib +h "%ROMNCFGS%"
for /f "delims=" %%a in (".pdf"') do if /i "%ROMXFG%"=="%%~a" move /y "%%~a" ".Man"
for /f "delims=" %%a in (".mp4"') do if /i "%ROMXFG%"=="%%~a" "backdrops"
for /f "delims=" %%a in (".srm"') do if /i "%ROMXFG%"=="%%~a" ".Mem"
for /f "delims=" %%a in (".sav"') do if /i "%ROMXFG%"=="%%~a" ".Mem"
for /f "delims=" %%a in (".mc0"') do if /i "%ROMXFG%"=="%%~a" ".sstates"
for /f "delims=" %%a in (".exe"') do if /i "%ROMXFG%"=="%%~a" SET EXEFLAG=1
exit /b

:unhidemeta
for /f "delims=" %%a in (".settings" ".config" ".conf" ".cfg" ".ini" ".jpg" ".png" ".xml" ".nfo" ".tbn") do if /i "%ROMXFG%"=="%%~a" set attrib -h "%ROMNCFGS%"
for /f "delims=" %%a in (".pdf"') do if /i "%ROMXFG%"=="%%~a" move /y "%%~a" ".Man"
for /f "delims=" %%a in (".mp4"') do if /i "%ROMXFG%"=="%%~a" "backdrops"
for /f "delims=" %%a in (".srm"') do if /i "%ROMXFG%"=="%%~a" ".Mem"
for /f "delims=" %%a in (".sav"') do if /i "%ROMXFG%"=="%%~a" ".Mem"
for /f "delims=" %%a in (".mc0"') do if /i "%ROMXFG%"=="%%~a" ".sstates"
for /f "delims=" %%a in (".exe"') do if /i "%ROMXFG%"=="%%~a" SET EXEFLAG=1
exit /b

:generatedlib
