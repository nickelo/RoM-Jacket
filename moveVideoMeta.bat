:videometa
pushd "%GBG%\%GAM%\%CONS%"
for /f "delims=" %%b in ('dir /b /ad "%GBC%\%GAM%\%CONS%"') do (
set CURCON=%%~b
call :MOVMOVE
)
popd
exit /b

:MOVMOVE
pushd "%GBG%\%GAM%\%CONS%\%CURCON%"
for /f "delims=" %%a in ('dir /b /ad-h') do (
set TRAIL=
set GAM=%%~a
CALL :movielist
popd
)
exit /b

:movielist
pushd "%GAM%"
if not exist ".Man" mkdir "%CD%\.Man"
if not exist ".patches" mkdir "%CD%\.patches"
if not exist ".cheats" mkdir "%CD%\.cheats"
if not exist ".Mem" mkdir "%CD%\.Mem"
if not exist ".sstates" mkdir "%CD%\.sstates"
if not exist ".snaps" mkdir "%CD%\.snaps"
if not exist "backdrops" mkdir "%CD%\backdrops"
attrib +h .patches
attrib +h .cheats
attrib +h .Man
attrib +h .Mem
attrib +h .sstates
attrib +h .snaps
attrib +h backdrops
for /f "delims=" %%c in ('dir /b /a-d "*.*"') do (
set MOVIEXT=%%~xc
CALL :metaOrg
move /Y "%CD%\*%TRAIL%" "backdrops\"
popd
)
exit /b

:metaOrg
if /I "%MOVIE%"==".mkv" set TRAIL=mkv
if /I "%MOVIE%"==".avi" set TRAIL=avi
if /I "%MOVIE%"==".flv" set TRAIL=flv
if /I "%MOVIE%"==".mp4" set TRAIL=mp4
if /I "%MOVIE%"==".avi" set TRAIL=mpg
if /I "%MOVIE%"==".vob" set TRAIL=vob