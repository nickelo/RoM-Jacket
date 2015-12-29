SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
set TOUHLNK=

if "%CANCELLED%"=="1" exit /b
pushd "%GBC%\net\%LNCH%\%TOUHU%"
if "%CEMU%"=="%ANEX%" call "%GBC%\anexinj.bat">>"%GBC%\logs\anexinj.log"
popd
if not exist "%GBG%\%GAM%\%CONS%\%TOUHU%\SOURCE" mkdir "%GBG%\%GAM%\%CONS%\%TOUHU%\SOURCE"
attrib +H "%GBG%\%GAM%\%CONS%\%TOUHU%\SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%TOUHU%\SOURCE"
call :TSTOUT
popd

for %NIVA% %%g IN (%NEWGAMDIR%) DO (
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
copy /y "%GBC%\net\%LNCH%\%TOUHU%\preAnex.cmd" "%%~g"
copy /y "%GBC%\net\%LNCH%\%TOUHU%\postAnex.cmd" "%%~g"
copy /y "%GBC%\net\%LNCH%\%TOUHU%\DEFAULT.cmd" "%%~g"
pushd "%%~g"
CALL "%GBC%\Touhuinject.bat">>"%GBC%\logs\touhuinject.log"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnk" SET TOUHLNK=%%~a
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" "REG ADD" "REM REG ADD"
if /I "%%~xa"==".lnk" CALL "%GBC%\touhu2inject.bat">>"%GBC%\logs\touhu2inject.log"
if /I "%%~xa"==".lnk" exit /b
if /I "%%~xa"==".hdi" "%GBC%\fart.exe" "*.bat" "REM [SDK]" --remove
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" "REM [SDK]" --remove
)
popd
:skp
exit /b

:TSTOUT
for /f "delims=" %%a in ('dir /b/ad-h') do (
set MIRROR=%%~a
pushd "%%~a"
call :INHERE
)
exit /b
:INHERE
set TOHXE=
for /f "delims=" %%a in ('dir /b/a-d "th*e.exe"') do set TOHXE=%%~a
if "%TOHXE%"=="" for /f "delims=" %%a in ('dir /b/a-d "th*.exe"') do set TOHXE=%%~a
if "%TOHXE%"=="" for /f "delims=" %%a in ('dir /b/a-d "*.exe"') do set TOHXE=%%~a
if "%TOHXE%" NEQ "" mkdir "%GBG%\%GAM%\%CONS%\%TOUHU%\%MIRROR%"
if "%TOHXE%" NEQ "" "%GBC%\xxmklink.exe" "%GBG%\%GAM%\%CONS%\%TOUHU%\%MIRROR%\%MIRROR%.lnk" "%GBG%\%GAM%\%CONS%\%TOUHU%\SOURCE\%MIRROR%\%TOHXE%" " " "%GBG%\%GAM%\%CONS%\%TOUHU%\SOURCE" "%MIRROR%" 1 ""