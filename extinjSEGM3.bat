SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%CEMU%"=="%SPRM3%" call "%GBC%\sprm3Inj.bat">>"%GBC%\logs\%CSTCONS%sprm3Inj.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SEGM3%\*.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
"%GBC%\fart.exe" "*.bat" [INPUTTYPE] "%INPUTTYPE%"
"%GBC%\fart.exe" "*.bat" [REZX] "%REZX%"
"%GBC%\fart.exe" "*.bat" [REZY] "%REZY%"
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
)
CALL "%GBC%\Segm3inject.bat"
popd
:skp