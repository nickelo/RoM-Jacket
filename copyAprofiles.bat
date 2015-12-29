"%SEVENZIP%" x -y "%GBC%\net\%APROF%\%APROF%.zip" -o"%GBC%\net\%APROF%"
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET XPTMP=%%a
CALL :RNTMP
)
goto :cpexit
:RNTMP
if not exist "%GBG%\%GAM%\%CONS%\%XPTMP%" goto :cpexit
copy /Y "%GBC%\net\%APROF%\%XPTMP%\*.amgp" "%GBG%\%GAM%\%CONS%\%XPTMP%"
pushd "%GBG%\%GAM%\%CONS%\%XPTMP%"
for /R %%i in (.) do copy "*.amgp" "%%~i"
for /f "delims=" %%a in ('dir /b /ad /s') do rename "%%a\%EMUN%1.amgp" "Player1.amgp"
for /f "delims=" %%a in ('dir /b /ad /s') do rename "%%a\%EMUN%2.amgp" "Player2.amgp"
popd
:cpexit