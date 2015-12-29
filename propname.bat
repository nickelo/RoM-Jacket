for /f "delims=" %%a in ('type "%GBC%\conselect.set"') do (
set REALNAME=%%~a
call :RENAME
)
exit /b
:RENAME
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do if /i "%%~a"=="%REALNAME%" rename "%GBG%\%GAM%\%CONS%\%%~a" "%REALNAME%"