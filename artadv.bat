SET HYPOVR=
"%GBC%\wbox.exe" "RJ_GUI" "Select the BoxArt Directory for %CONSADVL%" "OK" /TM=3
if %ERRORLEVEL%==1 goto :SELECT
:SELECT
del /q "%GBC%\artset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET HYPOVR=1
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="" SET HYPOVR=1
if not exist "%HPN%\Media\%HYPCON%\Images\Wheel" set HYPOVR=1
