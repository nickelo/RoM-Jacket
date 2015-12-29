in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*CDTV*Ext*.rom"') do set CDTVEXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Ext*CDTV*.rom"') do set CDTVEXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Extended*2.3*.rom"') do set CDTVEXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Extended*2.7*.rom"') do set CDTVEXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*CDTV*1.0*.rom"') do set CDTVEXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*CDTV*Extended*.rom"') do set CDTVEXT=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*KS*CDTV*"') do set CDTVBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*CDTV*Kick*"') do set CDTVBIOS=%%~a
for /f "delims=" %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*CDTV*"') do set CDTVBIOS=%%~a

pushd "%GBC%\net\%EXECT%\%AMIGTV%"
call "%GBC%\fsuaeInj.bat">>"%GBC%\logs\EXECfsuaeInj.log"
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "[EMUPTH]\%CDTVBIOS%"
"%GBC%\fart.exe" "Config.fs-uae" [EXTENDEDPTH] "[EMUPTH]\%CDTVEXT%"
copy /y "%GBE%\%EMUZ%\%FSUAE%\%CDTVBIOS%" "%GBC%\net\%EXECT%\%AMIGTV%"
copy /y "%GBE%\%EMUZ%\%FSUAE%\%CDTVEXT%" "%GBC%\net\%EXECT%\%AMIGTV%"
echo. copy /y "%CDTVBIOS%.bak" "%CDTVBIOS%">>"%GBC%\bioscpy.ini"
echo. copy /y "%CDTVEXT%.bak" "%CDTVEXT%">>"%GBC%\bioscpy.ini"

popd

for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\AMIGTVexeject.bat"
  popd
  )
  exit /b
  
:injext
pushd "%GBC%\net\%EXECT%\%AMIGTV%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
)
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".img"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".bin"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".cdi"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".nrg"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".mdf"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
pop
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1 