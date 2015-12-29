SET HYPOVR=
if "%HYPCON%"=="" set HYPCON=%CONSCAB%
"%GBC%\wbox.exe" "RJ_GUI" "Select the BoxArt Directory for %CONSCAB%" "OK" /TM=3
if %ERRORLEVEL%==1 goto :SELECT

:SELECT
del /q "%GBC%\artset.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
if not exist "%GBC%\artset.ini" do set ARTNUM=Artwork2
if not exist "%GBC%\artset.ini" goto :ARTCALL
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET HYPOVR=1
CALL "%GBC%\artSel.cmd"

:ARTCALL
if "%ARTNUM%"=="" SET HYPOVR=1
if not exist "%HPN%\Media\%HYPCON%\Images\Wheel" set HYPOVR=1