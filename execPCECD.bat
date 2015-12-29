for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*.pce"') do set PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*CD-ROM System*.pce"') do SET PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*Super CD-ROM2 System*.pce"') do SET PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*TurboGrafx CD*.pce"') do SET PCCDBIOS=%%~a
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"') do SET PCCDBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%MEDN%" "%GBC%\net\%EXECT%\%CSTCONS%"
call "%GBC%\mednInj.bat">>"%GBC%\logs\%CSTCONS%mednInj.log"
echo.copy /y "%PCCDBIOS%.bak" "%PCCDBIOS%">>"%GBC%\bioscpy.ini"
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\PCECDexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PCECD%"
"%GBC%\fart.exe" "*.bat" [PCCDBIOS] "%PCCDBIOS%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
if /I "%%~xa"==".mds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mds
)
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1