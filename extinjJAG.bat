SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"
if "%P1JOYTYPE%"=="JOY" rename "%GBC%\net\%LNCH%\%JAG%\P1J_DEFAULT.set" "P1_DEFAULT.cmd"
if "%P2JOYTYPE%"=="JOY" rename "%GBC%\net\%LNCH%\%JAG%\P2J_DEFAULT.set" "P2_DEFAULT.cmd"
if "%P1JOYTYPE%"=="KB" rename "%GBC%\net\%LNCH%\%JAG%\P1J_DEFAULT.set" "P1_DEFAULT.cmd"
if "%P2JOYTYPE%"=="KB" rename "%GBC%\net\%LNCH%\%JAG%\P2J_DEFAULT.set" "P2_DEFAULT.cmd"
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%JAG%\*.cmd" "%%~g"
pushd "%%~g"
call :injext
)
exit /b
:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (		
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%%~xa"==".abs" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%%~xa"==".jag" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%%~xa"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
)
CALL "%GBC%\Jaginject.bat"
popd
:skp
