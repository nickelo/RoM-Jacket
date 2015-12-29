for %%a in ("%GBG%\%GAM%\%CONS%\%MIRDIR%") do set DIRTOLIST=%%~a
pushd "%GBG%\%GAM%\%CONS%\%HSCONDIR%"
if "%HSCONDIR%"=="%SEGM3%" goto :SPECIAL
if "%HSCONDIR%"=="%SEGM2%" goto :SPECIAL
if "%HSCONDIR%"=="%ARCD%" goto :SPECIAL
if "%HSCONDIR%"=="%NEOGE%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS2%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS3%" goto :SPECIAL

for /f "delims=" %%a in ('dir /b /ad-h') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
pushd "%%~a"
CALL :DIRLIST
popd
)
goto :FINISH

:DIRLIST
for /f "delims=" %%a in ('dir /s/b/a-d-h "*.bat"') do (
set ROMT=%%~a
set ROM=%%~nxa
SET ROMNAME=%%~na
set ROMN=%%~dpa
CALL :XXMK
)
exit /b

:XXMK
set MICNEXT=
set NOICN=
for /f "delims=" %%a in ("%ROMN:~0,-1%") do (
set ROMPTH=%%~a
set ROMPTA=%%~nxa
)
if "%MIRICN%"=="1" call :CHKICON
if "%MICNEXT%" NEQ "" call :CONVICON
if "%MICNEXT%"=="" CALL :GENCNV
set MIRORICN= 
for %%a in ("%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMNAME%.ico") do if exist "%%~a" set MIRORICN=%%~a
"%GBC%\xxmklink.exe" "%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMNAME%.lnk" "%ROMT%" " " "%ROMPTH%" "%ROMNAME%" 1 "%MIRORICN%"
exit /b

:SPECIAL
for /f "delims=" %%a in ('dir /s/b/a-d-h "%GBG%\%GAM%\%CONS%\%HSCONDIR%\*.zip"') do (
set ROMN=%%~dpa
set ROMT=%%~a
set ROM=%%~nxa
SET ROMNAME=%%~na
CALL :XXMKS
)
popd
exit /b

:XXMKS
for /f "delims=" %%a in ('echo "%ROMN:~0,-1%"') do set ROMPTH=%%~a
for %%a in ("%ROMPTH%") do set ROMSP=%%~nxa
for /f "delims=" %%a in ('dir /b /a-d /s "%ROMPTH%\*.bat"') do (
SET ROMB=%%~dpnxa
CALL :LINKING
)
exit /b

:LINKING
set MICNEXT=
set NOICN=
if "%MIRICN%"=="1" call :CHKICON
if "%MICNEXT%" NEQ "" call :CONVICON
if "%MICNEXT%"=="" CALL :GENCNV
set MIRORICN= 
for %%a in ("%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMNAME%.ico") do if exist "%%~a" set MIRORICN=%%~a
"%GBC%\xxmklink.exe" "%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMSP%.lnk" "%ROMB%" " " "%ROMPTH%" "%ROMSP%" 1 "%MIRORICN%"
exit /b

:CHKICON
set BOXFLDR=Folder
for /f "delims=" %%a in ("%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%") do set FLDRLOC=%%~a
if "%LIBLOC%"=="HS" for /f "delims=" %%a in ("%HPN%\Media\%HSCONDIR%\Images\%ARTNUM%") do set FLDRLOC=%%~a
if "%LIBLOC%"=="HS" for /f "delims=" %%a in ("%ROMNAME%") do set BOXFLDR=%%~a
if "%LIBLOC%"=="OTH" for /f "delims=" %%a in ("%OTHRART%") do set FOLDRLOC=%%~a
if "%LIBLOC%"=="OTH" for /f "delims=" %%a in ("%ROMNAME%") do set BOXFLDR=%%~a
if exist "%FLDRLOC%\Folder.jpg" set MICNEXT=jpg
if exist "%FLDRLOC%\Folder.png" set MICNEXT=png
if "%MICNEXT%"=="" call :RECHK
exit /b

:RECHK
set BOXFLDR=Folder
for /f "delims=" %%a in ("%GBG%\%GAM%\%CONS%\%HSCONDIR%\%ROMDIR%") do set FLDRLOC=%%~a
if exist "%FLDRLOC%\Folder.jpg" set MICNEXT=jpg
if exist "%FLDRLOC%\Folder.png" set MICNEXT=png
exit /b

:CONVICON
"%GBC%\any2ico.exe" -img="%FLDRLOC%\%BOXFLDR%.%MICNEXT%" -icon="%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMNAME%.ico" -formats=32,48,96,128,256 -pngc %ICNFMT%
exit /b

:GENCNV
if exist "%GBC%\net\%FLDR%\%HSCONDIR%.png" "%GBC%\any2ico.exe" -img="%GBC%\net\%FLDR%\%HSCONDIR%.png" -icon="%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMNAME%.ico" -formats=32,48,96,128,256 -pngc %ICNFMT%
if not exist "%GBC%\net\%FLDR%\%HSCONDIR%.png" copy /y "%GBC%\exec.ico" "%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMNAME%.ico"
exit /b
:FINISH