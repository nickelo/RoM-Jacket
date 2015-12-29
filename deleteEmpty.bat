for /f "delims=" %%d in ('dir /s /b /ad-h "%GBG%\%ROMJ%"') do rd /q "%%~d"
for /f "delims=" %%d in ('dir /s /b /ad-h "%GBG%\%GAM%\%CONS%"') do rd /q "%%~d"	