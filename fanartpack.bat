"%SEVENZIP%" x -y "%GBC%\net\%BCKD%\%BCKDFILE%" -o"%GBC%\net\%BCKD%"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%GBC%\net\%BCKD%\%%~a.jpg" "%GBG%\%GAM%\%CONS%\%%~a\%FNRT%.jpg"
)