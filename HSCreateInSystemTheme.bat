if "%HMIRZ%"=="" goto :NOMIRZ
if "%PRECONF%"=="1" goto :OVRTYPE
"%GBC%\wbox.exe" "RJ_GUI" "Update: Files will be created but existing files will not be overwritten^Overwrite: All files will be copied and existing files will be overwritten." "Update;Overwrite" /DB=1
if %ERRORLEVEL%==1 goto :CPYTYPE
if %ERRORLEVEL%==2 goto :OVRTYPE
goto :HSCREATEEND

:NOMIRZ
"%GBC%\wbox.exe" "RJ_GUI" "HyperMirrors have not been defined" "OKAY" /DB=1
if %errorlevel%==1 goto :HSCREATEEND
goto :HSCREATEEND

:CPYTYPE
for /f "delims=" %%a in ("echo n|copy /-y") do set CPTYP=%%~a
goto :TYPE

:OVRTYPE
set CPTYP=copy /y
goto :TYPE

:TYPE
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\%BCKD%.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a

for /f "delims=" %%a in ('dir /s/b/ad "%GBC%\net\%HYPS%"') do rd /s /q "%%~a"

if "%HCROP%"=="1" call :SETCROP
goto :ALLCONSOLE

:SETCROP
set BACKDROP=
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\CROPPED\CROPPED.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a

:ALLCONSOLE
del /q "%GBC%\list.ini"
del /q "%GBC%\curlist.ini"
for /f "delims=" %%a in ('dir /b/ad-h "%HMIRZ%"') do echo."%%~a">>"%GBC%\list.ini"
"%GBC%\fart.exe" "%GBC%\list.ini" "\"" --remove
if "%PRECONF%"=="1" copy /y "%GBC%\list.ini" "%GBC%\curlist.ini"
if "%PRECONF%"=="1" goto :GETLST
"%GBC%\multisel.exe" "%GBC%\list.ini" "%GBC%\curlist.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Building In-System Themes"  /marquee
if not exist "%GBC%\curlist.ini" goto :COMPLETE
:GETLST
for /f "delims=" %%a in ('type "%GBC%\curlist.ini"') do (
SET HYPCON=%%~a
CALL :ALLCONV
)
goto :ZIPUP

:ALLCONV
call "%GBC%\HSDirCreate.bat">>"%GBC%\logs\HSDirCreate.log
mkdir "%GBC%\net\%HYPS%\%HYPCON%\Themes"
if not exist "%HPN%\Media\%HYPCON%\Theme\Default.zip.orig" %CPTYP% "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.zip.orig"
move /Y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.bak"
"%GBC%\nconvert.exe" -resize 1024 768 -out png -o "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png" "%BACKDEST%\%HYPCON%1.%BACKEXTN%"
if not exist "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png" %CPTYP% "%BACKDEST%\Favorites.%BACKEXTN%" "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png" && "%GBC%\nconvert.exe" -resize 1024 768 -out png -overwrite "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png"
%CPTYP% "%GBC%\net\%HYPS%\InTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Themes\Theme.xml"
%CPTYP% "%HPN%\Media\Favorites\Images\Other\pointer.png" "%HPN%\Media\%HYPCON%\Images\Other\Pointer.png"
%GBC%\net\%HYPS%\%HYPCON%
pushd "%GBC%\net\%HYPS%\%HYPCON%\Themes"
for /f "delims=" %%a in ('dir /b/a-d-h "*.png" "*.xml"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%GBC%\net\%HYPS%\%HYPCON%\Themes\%%~a"
popd
exit /b

:ZIPUP
CALL "%GBC%\HSCopyMedia.bat">>"%GBC%\logs\HSCopyMedia.log
%BSTRT% "%WFINS%" "RJ_GUI" "Complete" /STOP /TIMEOUT:1
:HSCREATEEND
exit /b
