for /f "delims=" %%a in ('dir /b/ad-h "%HPN%\Media"') do (
SET HYPNAM=%%~a
CALL :HSCONTHEME
)
exit /b
:HSCONTHEME
if "%HYPNAM%"=="Main Menu" exit /b
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Media\Favorites\Images\Letters\*.png"') do copy /Y "%HPN%\Media\Favorites\Images\Letters\%%~a" "%HPN%\Media\%HYPNAM%\Images\Letters"
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Media\Favorites\Images\Special\*.png"') do copy /Y "%HPN%\Media\Favorites\Images\Special\%%~a" "%HPN%\Media\%HYPNAM%\Images\Special"
for /f "delims=" %%a in ('dir /b/a-d-h "%HPN%\Media\Favorites\Images\Other\*.png"') do copy /Y "%HPN%\Media\Favorites\Images\Other\%%~a" "%HPN%\Media\%HYPNAM%\Images\Other"
exit /b
