SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%TRIF%"
call "%GBC%\dolphInj.bat">>"%GBC%\logs\%CSTCONS%dolphInj.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
mkdir "%%~g\.Mem"
attrib +H "%%~g\.Mem"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%TRIF%\*.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%TRIF%\GCPadNew.ini" "%%~g"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%TRIF%\WiimoteNew.ini" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
SET WIIROM=
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
if "%INDVGAME%" NEQ "" SET ROM=%CNGAMT%
if "%INDVGAME%" NEQ "" SET TRIFROM=%CNGAMT%
if "%INDVGAME%" NEQ "" popd
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
SET ROM=%%~a
if /I "%%~xa"==".dol" SET TRIFROM=%%~a
if /I "%%~xa"==".elf" SET TRIFROM=%%~a
if /I "%%~xa"==".wad" SET TRIFROM=%%~a
if /I "%%~xa"==".wbfs" SET TRIFROM=%%~a
if /I "%%~xa"==".iso" SET TRIFROM=%%~a
if /I "%%~xa"==".ciso" SET TRIFROM=%%~a
if /I "%%~xa"==".dol" "%GBC%\fart.exe" "*.bat" [EXT] dol
if /I "%%~xa"==".wbfs" "%GBC%\fart.exe" "*.bat" [EXT] wbfs
if /I "%%~xa"==".elf" "%GBC%\fart.exe" "*.bat" [EXT] elf
if /I "%%~xa"==".wad" "%GBC%\fart.exe" "*.bat" [EXT] wad
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".ciso" "%GBC%\fart.exe" "*.bat" [EXT] ciso
)
CALL "%GBC%\trifinject.bat"
popd
:skp