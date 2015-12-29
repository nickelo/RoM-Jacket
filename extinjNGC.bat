SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%NGC%"
call "%GBC%\dolphInj.bat">>"%GBC%\logs\%CSTCONS%dolphInj.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
mkdir "%%~g\.Profiles"
attrib +H "%%~g\.Profiles"
mkdir "%%~g\.Mem"
attrib +H "%%~g\.Mem"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NGC%\*.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NGC%\GCP*.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NGC%\*.raw" "%%~g\.Mem"
SET NGCROM=
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
if "%INDVGAME%" NEQ "" SET ROMN=%GAMFULL%
if "%INDVGAME%" NEQ "" SET ROMD=%GAMT%
if "%INDVGAME%" NEQ "" SET ROME=%GAMTEXT%
if "%INDVGAME%" NEQ "" SET ROMF=%CNGAMT%
if "%INDVGAME%" NEQ "" CALL :EACHROM
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d') do (
set ROM=%%~a
if /I "%%~xa"==".iso" set NGCROM=%%~a
if /I "%%~xa"==".gcz" set NGCROM=%%~a
if /I "%%~xa"==".gcm" set NGCROM=%%~a
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".gcm" "%GBC%\fart.exe" "*.bat" [EXT] gcm
if /I "%%~xa"==".gcz" "%GBC%\fart.exe" "*.bat" [EXT] gcz
)
call "%GBC%\NGCinject.bat" 
popd
:skp