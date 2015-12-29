if "%DEFINEDIR%" NEQ "1" goto :DEFPUSH
if "%HYPTYPE%"=="BA" pushd "%BARTLOC%" && set CPS3NAME=Folder.png
if "%HYPTYPE%"=="VD" pushd "%VIDLOC%" && set CPS3NAME=.trailer\%NWDIR%
if "%HYPTYPE%"=="BN" pushd "%BANLOC%" && set CPS3NAME=Banner.png
goto :CPYBEGIN

:DEFPUSH
if "%HYPTYPE%"=="BA" pushd "%HSMETA%\%CPS3%\Images\%ARTNUM%" && set CPS3NAME=Folder.png
if "%HYPTYPE%"=="VD" pushd "%HSMETA%\%CPS3%\Video" && set CPS3NAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" pushd "%HSMETA%\%CPS3%\Images\Wheel" && set CPS3NAME=Banner.png
:CPYBEGIN
for %%a in ("JoJo's Bizarre Adventure - Heritage for the Future") do set NWDIR=%%~a
for %%a in ("jojoba.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojo.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojoalt.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III 2nd Impact - Giant Attack") do set NWDIR=%%~a
for %%a in ("sfiii2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future") do set NWDIR=%%~a
for %%a in ("sfiii3.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (Alt)") do set NWDIR=%%~a
for %%a in ("sfiii3a.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III - New Generation") do set NWDIR=%%~a
for %%a in ("sfiii.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Warzard") do set NWDIR=%%~a
for %%a in ("warzard.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("JoJo's Bizarre Adventure - Heritage for the Future") do set NWDIR=%%~a
for %%a in ("jojobachd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojoaltchd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojochd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III 2nd Impact - Giant Attack (CHD)") do set NWDIR=%%~a
for %%a in ("sfiii2chd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (Alt) (CHD)") do set NWDIR=%%~a
for %%a in ("sfiii3achd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (CHD)") do set NWDIR=%%~a
for %%a in ("sfiii3chd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Street Fighter III - New Generation (CHD)") do set NWDIR=%%~a
for %%a in ("sfiiichd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
for %%a in ("Warzard") do set NWDIR=%%~a
for %%a in ("warzardchd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%CPS3NAME%"
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"