del /s /q "%GBG%\%ROMJ%\*.bat"
del /s /q "%GBG%\%ROMJ%\*.xpadderprofile"
del /s /q "%GBG%\%ROMJ%\*.amgp"
for /f "delims=" %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
CALL :INCONS
popd
)

:INCONS
rd /s /q "Player1"
rd /s /q "Player2"
rd /s /q "zz"
rd /q ".Mem"
rd /q ".patches"
rd /q ".cheats"
rd /q ".Man"
rd /q ".snaps"
rd /q ".sstates"
del /q "null"
del /q "Player1.xpadderprofile"
del /q "Player2.xpadderprofile"
del /q "zz.bat"