SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%NEOPKTC%"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%NEOPKTC%\%MEDN%*.cfg" "%%~g"
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
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".ngp" "%GBC%\fart.exe" "*.bat" [EXT] ngp
if /I "%%~xa"==".neo" "%GBC%\fart.exe" "*.bat" [EXT] neo
if /I "%%~xa"==".npk" "%GBC%\fart.exe" "*.bat" [EXT] npk
if /I "%%~xa"==".ngc" "%GBC%\fart.exe" "*.bat" [EXT] ngc
)
CALL "%GBC%\Neopktcinject.bat"
popd
:skp