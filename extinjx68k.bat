SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%X68K%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "XM6g.ini" [Resume] Path==
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "XM6g.ini" [SASI] File0==
if "%GGOFF%"=="1" copy /y "XM6.ini" "%GBE%\%EMUZ%\%XM6%"
call "%GBC%\XM6inj.bat">>"%GBC%\logs\XM6inj.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%X68K%\*.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
)
CALL "%GBC%\X68Kinject.bat"
popd
:skp