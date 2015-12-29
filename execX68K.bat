"%SEVENZIP%" e -y "%GBC%\net\M71\M71.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%EMEXE%.exe"

pushd "%GBE%\net\%EXECT%\%X68K%"
call "%GBC%\XM6inj.bat">>"%GBC%\logs\XM6inj.log"
copy /y "*.rom"  "%GBC%\net\%EXECT%\%CSTCONS%"
for /f "delims=" %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%CEMU%\*.bin" "%GBE%\%EMUZ%\%CEMU%\*.dat" "%GBE%\%EMUZ%\%CEMU%\*.rom"') do echo. copy /y "%%~a.bak" "roms">>"%GBC%\prefxe.ini"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext

CALL "%GBC%\X68Kexeject.bat"
)
exit /b
:injext
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1
:skp
