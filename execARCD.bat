pushd "%GBC%\net\%EXECT%\%ARCD%"
call "%GBC%\mameJoy.bat">>"%GBC%\logs\mameJoy.log"
call "%GBC%\mameInj.bat">>"%GBC%\logs\%CSTCONS%mameInj.log"
if "%SHDRON%"=="0" "%GBC%\fart.exe" "Mame.ini" [SHD] "0"
if "%SHDRON%"=="0" goto :INJCOMPLETE
if "%SHDRON%"=="1" call "%GBC%\injectshader.bat">>"%GBC%\logs\injectshader.log"
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZX] %DREZX%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [REZY] %DREZY%
if "%SHDRON%"=="1" "%GBC%\fart.exe" "Mame.ini" [MASK] %DREZY%
popd
for /d %%g IN ("%CSTM%") DO (
mkdir "%%~g\.cfg"
mkdir "%%~g\.hi"
mkdir "%%~g\.inp"
mkdir "%%~g\.ini"
mkdir "%%~g\.ctrlr"
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
CALL "%GBC%\Arcdexeject.bat"
  )
   exit /b
   
:injext
pushd "%GBC%\net\%EXECT%\%ARCD%"
  for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".lnk"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnk
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1