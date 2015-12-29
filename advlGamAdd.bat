SET BTMP=
SET BKTMP=
SET TTMP=
SET FTMP=
SET STMP=
SET BCKDRP=
SET BART=
SET SNAP=
SET TRAIL=

:HYPMETA
if "%HYPOVR%"=="1" goto :MBPATHS
if not exist "%HPN%\Media" goto :MBPATHS

:HYPPATH
for /f "delims=" %%a in ('dir /b /a-d "%HPN%\Media\%CONSADVL%\Images\Backgrounds\%ADVLROM%*.png"') do SET BTMP=%%~nxa
if exist "%BTMP%" set BCKDRP=%BTMP%
for /f "delims=" %%a in ('dir /b /a-d "%HPN%\Media\%CONSADVL%\Images\%ARTNUM%\%ADVLROM%*.png"') do SET FTMP=%%~nxa
if exist "%FTMP%" set BART=%FTMP%
for /f "delims=" %%a in ('dir /b /a-d "%HPN%\Media\%CONSADVL%\Video\%ADVLROM%*.*"') do SET TTMP=%%~dpnxa
if exist "%TTMP%" set TRAIL=%TTMP%
pushd "%GBC%\net\%ADVLR%"
if "%BCKDRP%" NEQ "" "%GBC%\fart.exe" "%ADVLROM%.tmp" [FANART] "%BCKDRP%"
if "%BART%" NEQ "" "%GBC%\fart.exe" "%ADVLROM%.tmp" [FOLDER] "%BART%"
if "%TRAIL%" NEQ "" "%GBC%\fart.exe" "%ADVLROM%.tmp" [TRAILER] "%TRAIL%"
popd

:MBPATHS
for /f "delims=" %%a in ('dir /b /a-d "%ADVLRPTH%\%ADVLROM%\Backdrop.*"') do SET BKTMP=%ADVLRPTH%\%ADVLROM%\%%~nxa
if exist "%BKTMP%" set BCKDRP=%BKTMP%
for /f "delims=" %%a in ('dir /b /a-d "%ADVLRPTH%\%ADVLROM%\Folder.*"') do SET FTMP=%ADVLRPTH%\%ADVLROM%\%%~nxa
if exist "%FTMP%" set BART=%FTMP%
for /f "delims=" %%a in ('dir /b /a-d "%ADVLRPTH%\%ADVLROM%\.snaps\*.*"') do SET SNAP=%ADVLRPTH%\%ADVLROM%\.snaps\%%~nxa
if exist "%STMP%" set SNAP=%STMP%
for /f "delims=" %%a in ('dir /b /a-d "%ADVLRPTH%\%ADVLROM%\backdrops\*.*"') do SET TTMP=%ADVLRPTH%\%ADVLROM%\backdrops\%%~nxa
if exist "%TTMP%" set TRAIL=%TTMP%
pushd "%GBC%\net\%ADVLR%"
if "%BCKDRP%"=="" CALL :fanartremove 
if "%BART%"=="" CALL :folderremove
if "%SNAP%"=="" CALL :snapsremove 
if "%TRAIL%"=="" CALL :trailremove
CALL :trailadd
popd
exit /b

:trailremove
"%GBC%\fart.exe" "*.tmp" [TRAILERS] --remove
exit /b
)
:fanartremove
"%GBC%\fart.exe" "*.tmp" [FANART] --remove
exit /b
)
:folderremove
"%GBC%\fart.exe" "*.tmp" [FOLDER] --remove
exit /b
)
:snapsremove
"%GBC%\fart.exe" "*.tmp" [SNAP] --remove
exit /b
)

:trailadd
CHCP 850
"%GBC%\fart.exe" "*.tmp" [ROM] "%ADVLROM%"
"%GBC%\fart.exe" "*.tmp" [ROMPTH] "%ADVLRPTH%\%ADVLROM%\%ADVLBAT%"
"%GBC%\fart.exe" "*.tmp" [EMUL] "%CONSADVL%"
"%GBC%\fart.exe" "*.tmp" [FOLDER] "%BART%"
"%GBC%\fart.exe" "*.tmp" [FANART] "%BCKDRP%"
"%GBC%\fart.exe" "*.tmp" [SNAP] "%SNAP%"
"%GBC%\fart.exe" "*.tmp" [TRAILER] "%TRAIL%"
type "%GBC%\net\%ADVLR%\%ADVLROM%.tmp">>"%GBC%\net\%ADVLR%\config.xml"
rename "%GBC%\net\%ADVLR%\%ADVLROM%.tmp" "%ADVLROM%.set"
CHCP 1252
:GAMFIN