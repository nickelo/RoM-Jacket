pushd "%GBC%"
for /f "tokens=1,2 delims=x," %%a in ('"%GBC%\QRES.exe" /v/s') do (
set DREZX=%%a
set DREZY=%%b
)
:SETRES
"%GBC%\fart.exe" "locset.ini" "[REX]" "%DREZX%"
"%GBC%\fart.exe" "locset.ini" "[REY]" "%DREZY%"
popd