if "%DISPASPCT%"=="4x3" goto :SETCROP
if "%DISPASPCT%"=="widescreen" goto :WIDESPCT
:GETREZ
call "%GBC%\ratio.bat">>"%GBC%\logs\ratio.log"
for /f "tokens=1,2 delims=.," %%a in ('cscript //nologo "%GBC%\ratio.vbs" %DREZY% %DREZX%') do (
set LONG=%%~a
set CROP=%%~b
call :CROP
)
if "%RATOP%" NEQ "LEQ" set RATOP=GEQ
set BCROP=
if "%RATIO%" %RATOP% "7" set BCROP=1
if "%BCROP%"=="" SET DISPASPCT=widescreen
if "%BCROP%"=="1" SET DISPASPCT=4x3
if "%DISPASPCT%"=="4x3" goto :SETCROP
goto :WIDESPCT

:CROP
set RATOP=GEQ
if "%LONG%" GEQ "1" set RATOP=LEQ
for %%a in ("%CROP:~0,2%") do (
if "%%~a"=="" set /a CROP=%CROP%0
if %%~a GEQ 5 set /a CROP+=1
)
for %%a in ("%CROP:~0,1%") do set RATIO=%%~a
exit /b

:WIDESPCT
set DISPASPCT=widescreen
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\%BCKD%.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a
set BACKEXTN=jpg
for /f "delims=" %%a in ('dir /s/b/ad "%GBC%\net\%HYPS%"') do rd /s /q "%%~a"

if "%BCROP%"=="1" call :SETCROP
goto :SETCHOICE

:SETCROP
set DISPASPCT=4x3
set BACKDROP=
for /f "delims=" %%a in ("%GBC%\net\%BCKD%\CROPPED\CROPPED.zip") do (
set BACKDROP=%%~dpnxa
set BACKTMP=%%~dpa
)
set BACKEXTN=png
for %%a in ("%BACKTMP:~0,-1%") do set BACKDEST=%%~a

:SETCHOICE
SET BDWN=BACKDROPS NEEDED
SET IDWN=ICONS NEEDED
SET VDWN=0 VIDEOS in cache
SET WDWN=LOGOS NEEDED
if "%BDEX%"=="1" SET BDWN=CURRENT LIBRARY BACKDROPS ONLY
if "%LDEX%"=="1" SET WDWN=CURRENT LIBRARY LOGOS ONLY
if "%IDEX%"=="1" SET IDWN=CURRENT LIBRARY ICONS ONLY
if exist "%BACKDROP%" SET BDWN= BACKDROPS DOWNLOADED
if exist "%GBC%\net\%FLDR%\%FLDR%.zip" SET IDWN= ICONS DOWNLOADED
if exist "%GBC%\net\%BANN%\%BANN%.zip" SET WDWN= LOGOS DOWNLOADED
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\%VIDE%\*.mp4"') do SET VIDEXST=%%~a
set VIDNUM=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\net\%VIDE%\*.mp4"') do SET /A VIDNUM+=1
if exist "%GBC%\net\%VIDE%\%VIDEXST%" SET VDWN= %VIDNUM% VIDEOS DOWNLOADED
