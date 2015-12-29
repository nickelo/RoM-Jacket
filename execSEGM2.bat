pushd "%GBC%\net\%EXECT%\%SEGM2%"
call "%GBC%\m2emuInj.bat">>"%GBC%\logs\m2emuInj.log"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
EMULATOR.ini" "%GBE%\%EMUZ%\%M2EMU%"
popd
for /d %%g IN ("%CSTM%") DO (
mkdir CFG
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\SEGM2exeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SEGM2%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
copy /Y "%GBC%\net\%EXECT%\%SEGM2%\%P1T%%P2T%.input" "CFG\%GAMT%.input"
  if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".lnk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnk
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1