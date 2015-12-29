pushd "%GBC%"
for /f "tokens=1,2 delims=x," %%a in ('"%GBC%\QRES.exe" /v/s') do (
set RESX=%%a
set RESY=%%b
)
popd