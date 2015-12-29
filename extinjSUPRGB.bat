SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%SUPRGB%"
if "%CEMU%"=="%BGB%" call "%GBC%\bgbJoy.bat">>"%GBC%\logs\%CSTCONS%bgbjoy.log"
if "%CEMU%"=="%BGB%" call "%GBC%\bgbInj.bat">>"%GBC%\logs\%CSTCONS%bgbInj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%SUPRGB%\%BGB%*.ini" "%%~g"
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
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".gb" "%GBC%\fart.exe" "*.bat" [EXT] gb
if /I "%%~xa"==".gbc" "%GBC%\fart.exe" "*.bat" [EXT] gbc
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".bin" set CSTROM=%%~a
if /I "%%~xa"==".gb" set CSTROM=%%~a
if /I "%%~xa"==".gbc" set CSTROM=%%~a
if /I "%%~xa"==".zip" set CSTROM=%%~a
)
CALL "%GBC%\suprgbinject.bat"
popd
:skp