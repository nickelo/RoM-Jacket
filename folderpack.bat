for %%a in ("%GBC%\net\%FLDR%\%FLDR%.zip") do set FLDRFILE=%%~nxa
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDRFILE%" -o"%GBC%\net\%FLDR%"
for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%GBC%\net\%FLDR%\%%~a.png" "%GBG%\%GAM%\%CONS%\%%~a\%FLDR%.png"
)
