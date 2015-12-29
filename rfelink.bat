pushd "%GBG%\%GAM%\%CONS%\%HSCONDIR%"
if "%HSCONDIR%"=="%SEGM3%" goto :SPECIAL
if "%HSCONDIR%"=="%SEGM2%" goto :SPECIAL
if "%HSCONDIR%"=="%ARCD%" goto :SPECIAL
if "%HSCONDIR%"=="%NEOGE%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS2%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS3%" goto :SPECIAL

for /f "delims=" %%a in ('dir /b /ad') do (
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
set LIBLOC=HS
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
set MIRORICN= 
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
set MIRORICN= 
"%GBC%\xxmklink.exe" "%MIRLOC%\%MIRDN%\%HSCONDIR%\%ROMSP%.lnk" "%ROMB%" " " "%ROMPTH%" "%ROMSP%" 1 "%MIRORICN%"
exit /b

:FINISH