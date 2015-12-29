pushd "%GBC%\net\%EXECT%\%SEGM3%"
call "%GBC%\sprm3Inj.bat">>"%GBC%\logs\sprm3Inj.log"
popd
for /d %%g IN ("%CSTM%") DO (
%SEGM3%\*.ini" "%CD%"
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\Segm3exeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SEGM3%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
"%GBC%\fart.exe" "*.bat" [INPUTTYPE] "%INPUTTYPE%"
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".lnk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnk
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1