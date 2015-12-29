SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*.pce"') do set PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*CD-ROM System*.pce"') do SET PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*Super CD-ROM2 System*.pce"') do SET PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*TurboGrafx CD*.pce"') do SET PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"') do SET PCCDBIOS=%%~a
if "%PCCDBIOS%"=="" echo.%PCECD% Bios>>"%GBC%\mbios.ini"
pushd "%GBC%\net\%LNCH%\%PCECD%"
if "%CEMU%"=="%MEDN%" "%GBC%\fart.exe" "%MEDN%*.cfg" [PCECDBIOS] "%PCCDBIOS%"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
if "%CEMU%"=="%MEDN%" call "%GBC%\mednafenJoy.bat">>"%GBC%\logs\%CSTCONS%mednafenjoy.log"
popd
if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
if "%RECONF%"=="1" %COPYTYPE% "%GBC%\net\%LNCH%\%PCECD%\%MEDN%*.cfg" "%%~g"
set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
pushd "%%~g"
call :injext
)
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
"%GBC%\fart.exe" "*.bat" [PCCDBIOS] "%PCCDBIOS%"
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mds
)
call "%GBC%\PCECDinject.bat"
[p[d
:skp