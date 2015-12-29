"%SEVENZIP%" x -y "%BACKDROP%" -o"%BACKDEST%"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%BACKDEST%\%%~a.%BACKEXTN%" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%.%BACKEXTN%"
copy /Y "%BACKDEST%\%%~a1.%BACKEXTN%" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%1.%BACKEXTN%"
copy /Y "%BACKDEST%\%%~a2.%BACKEXTN%" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%2.%BACKEXTN%"
copy /Y "%BACKDEST%\%%~a3.%BACKEXTN%" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%3.%BACKEXTN%"
copy /Y "%BACKDEST%\%%~a4.%BACKEXTN%" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%4.%BACKEXTN%"
)