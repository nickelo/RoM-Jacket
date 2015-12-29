pushd "%GBC%\net\%EXECT%\%AT52%"
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200*.bin"') do SET AT52BIOS=%%~a
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200*.rom"') do SET AT52BIOS=%%~a
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200*a.rom"') do SET AT52ABIOS=%%~a
for /f "delims=" %%a in ('dir /b/s /a-d "%GBE%\%EMUZ%\%AT8E%\*5200a*.rom"') do SET AT52ABIOS=%%~a
copy /y "%GBE%\%EMUZ%\%AT8E%\%AT52BIOS%" "%GBC%\net\%EXECT%\%AT52%"
echo. copy /y "%AT52BIOS%.bak" "%AT52BIOS%">>"%GBC%\bioscpy.ini"
call "%GBC%\at800Inj.bat">>"%GBC%\logs\at800Inj.log"
"%GBC%\fart.exe" ".atari*.*" [BIOSA] "%AT52ABIOS%"
"%GBC%\fart.exe" ".atari*.*" [BIOS] "%AT52BIOS%"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\AT52exeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%AT52%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if "%AT52BIOS%" NEQ "" "%GBC%\fart.exe" "*.bat" [BIOS] "%AT52BIOS%"
if /I "%%~xa"==".a52"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] a52
if /I "%%~xa"==".bin"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".rom"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".a52" SET AT52ROM=%%~nxa
if /I "%%~xa"==".bin" SET AT52ROM=%%~nxa
if /I "%%~xa"==".rom" SET AT52ROM=%%~nxa
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1