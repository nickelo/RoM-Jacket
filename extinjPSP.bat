SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

pushd "%GBC%\net\%LNCH%\%PSP%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "ppsspp.ini" [General] AutoLoadLast=False 
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "ppsspp.ini" [General] Recent ==
if "%GGOFF%"=="1" copy /y "Settings.properties" "%GBE%\%EMUZ%\%JPCSP%"
if "%GGOFF%"=="1" copy /y "controls.ini" "%GBE%\%EMUZ%\%PSSP%\controls.ini"
if "%GGOFF%"=="1" copy /y "ppsspp.ini" "%GBE%\%EMUZ%\%PSSP%\ppsspp.ini"
if "%CEMU%"=="%PSSP%" call "%GBC%\ppssppInj.bat">>"%GBC%\logs\%CSTCONS%ppssppInj.log"
popd

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PSP%\Settings.properties" "%%~g\Settings.properties"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PSP%\controls.ini" "%%~g\controls.ini"
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PSP%\ppsspp.ini" "%%~g\ppsspp.ini"
if "%CEMU%"=="%RTROA%" mkdir "%%~g\PPSSPP"
if "%CEMU%"=="%RTROA%" mkdir "%%~g\PPSSPP\flash0"
if "%CEMU%"=="%RTROA%" mkdir "%%~g\PPSSPP\flash0\font"
if "%CEMU%"=="%RTROA%" mkdir "%%~g\PPSSPP\shaders"
if "%CEMU%"=="%RTROA%" copy /y "%GBE%\%EMUZ%\%RTROA%\system\PPSSPP\*" "%%~g\PPSSPP"
if "%CEMU%"=="%RTROA%" copy /y "%GBE%\%EMUZ%\%RTROA%\system\PPSSPP\flash0\font\*" "%%~g\PPSSPP\flash0\font"
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
if "%INDVGAME%" NEQ "" SET PSPROM=%CNGAMT%
if "%INDVGAME%" NEQ "" SET ROMF=%CNGAMT%
if "%INDVGAME%" NEQ "" CALL :EACHROM
if "%INDVGAME%" NEQ "" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".prx" "%GBC%\fart.exe" "*.bat" [EXT] prx
if /I "%%~xa"==".ciso" "%GBC%\fart.exe" "*.bat" [EXT] ciso
if /I "%%~xa"==".cso" "%GBC%\fart.exe" "*.bat" [EXT] cso
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".jso" "%GBC%\fart.exe" "*.bat" [EXT] jso
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".pbp" "%GBC%\fart.exe" "*.bat" [EXT] pbp
if /I "%%~xa"==".prx" set PSPROM=%%~nxa
if /I "%%~xa"==".cso" set PSPROM=%%~nxa
if /I "%%~xa"==".iso" set PSPROM=%%~nxa
if /I "%%~xa"==".jso" set PSPROM=%%~nxa
if /I "%%~xa"==".bin" set PSPROM=%%~nxa
if /I "%%~xa"==".pbp" set PSPROM=%%~nxa
REM if /I "%%~xa"==".ciso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".cso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".jso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [TYP] f
REM if /I "%%~xa"==".pbp" "%GBC%\fart.exe" "*.bat" [TYP] fx
)
CALL "%GBC%\PSPinject.bat"
popd
:skp
