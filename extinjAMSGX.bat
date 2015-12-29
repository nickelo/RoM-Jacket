SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
pushd "%GBC%\net\%LNCH%\%AMSGX%"
call "%GBC%\winapeinj.bat">>"%GBC%\logs\winapeinj.log"
popd
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
copy /Y "%GBC%\net\%LNCH%\%AMSGX%\WinAPE.ini" "%%~g\WinAPE.ini"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b /a-d "*.cpr" "*.crt"') do (
if /I "%%~xa"==".cpr" SET AMSGXDSK=%%~a
if /I "%%~xa"==".crt" SET AMSGXDSK=%%~a
)
CALL "%GBC%\Amsgxinject.bat"
popd
:skp