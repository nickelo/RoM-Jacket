if not exist ".Man" mkdir "%CD%\.Man"
if not exist ".Mem" mkdir "%CD%\.Mem"
if not exist ".cheats" mkdir "%CD%\.cheats"
if not exist ".patches" mkdir "%CD%\.patches"
if not exist ".sstates" mkdir "%CD%\.sstates"
if not exist ".snaps" mkdir "%CD%\.snaps"
if not exist "backdrops" mkdir "%CD%\backdrops"
for /f "delims=" %%a in ('dir /b /ad ".*"') do ATTRIB +H "%%~a"
ATTRIB +H "backdrops"