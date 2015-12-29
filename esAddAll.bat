del /q "%GBC%\net\%EMST%\*.tmp"
del /q "%GBC%\net\%EMST%\es_systems.cfg"
del /q "%GBC%\net\%EMST%\escurrent.ini"
type "%GBC%\net\%EMST%\config.start.set" >"%GBC%\net\%EMST%\es_systems.cfg"
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
echo."%%~a">>"%GBC%\net\%EMST%\escurrent.ini"
set CONSESPTH=%EMSROMS%\%%~a
set CSTCONS=%%~a
set CONSES=%%~a
CALL :ESCA
)
"%GBC%\fart.exe" "%GBC%\net\%EMST%\escurrent.ini" "\"" --remove
goto :ADDALL

:ESCA
pushd "%EMSROMS%"
if not exist "%CSTCONS%" exit /b
copy /Y "%GBC%\net\%EMST%\system.set" "%GBC%\net\%EMST%\%CONSES%.tmp"
CALL "%GBC%\esConAdd.bat">>"%GBC%\logs\esConAdd.log"
popd
exit /b

:ADDALL
type "%GBC%\net\%EMST%\config.end.set">>"%GBC%\net\%EMST%\es_systems.cfg"

:ADDEND