for /f "delims=" %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
CALL :GAMDIR
popd
)
exit /b

:GAMDIR
for /f "delims=" %%a in ('dir /b/s/a-d-h "*_Fanart.png" "*_Fanart.jpg"') do (
SET CSTPTH=%%~dpnxa
SET CSTXTN=%%~xa
call :META
)
for /f "delims=" %%a in ('dir /b/s/a-d-h "*_Thumb.png" "*_Thumb.jpg"') do (
SET CSTPTH=%%~dpnxa
SET CSTXTN=%%~xa
call :METAR
)

exit /b

:METAR
rename "%CSTPTH%" "Folder%CSTXTN%"
exit /b
:META
rename "%CSTPTH%" "Backdrop%CSTXTN%"
exit /b