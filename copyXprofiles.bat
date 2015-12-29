"%SEVENZIP%" x -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBC%\net\%XPROF%"
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET XPTMP=%%a
CALL :RNTMP
)
goto :cpexit
:RNTMP
if not exist "%GBG%\%GAM%\%CONS%\%XPTMP%" goto :cpexit
copy /Y "%GBC%\net\%XPROF%\%XPTMP%\*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
pushd "%GBG%\%GAM%\%CONS%\%XPTMP%"
for /R %%i in (.) do copy "*.xpadderprofile" "%%~i"
for /f "delims=" %%a in ('dir /b /ad /s') do rename "%%a\%EMUN%1.xpadderprofile" "Player1.xpadderprofile"
for /f "delims=" %%a in ('dir /b /ad /s') do rename "%%a\%EMUN%2.xpadderprofile" "Player2.xpadderprofile"
popd
:cpexit