for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
CALL "%GBC%\PC98exeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%PC98%"
CALL "%GBC%\PC98exeject.bat"
:skp