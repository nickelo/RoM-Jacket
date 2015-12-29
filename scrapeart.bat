set VIDCHK=
set BCKDRPNUM=
set FANART=
set BANCHK=
set FLDCHK=
set LOGOCHK=
if "%GTMTA%"=="" exit /b
if "%SNAP1ART%"=="" goto :SNAP2
for /f "delims=" %%a in ("%FLDRN%") do pushd "%%~a"
for /f "delims=" %%a in ("%SNAP1ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps" "%SNAP1ART%"&for /f "delims=" %%a in ('dir /b/s/a-d ".snaps\%%~nxa"') do if "%%~za" LEQ "1" del /q "%%~a"

:SNAP2
if "%SNAP2ART%"=="" goto :SNAP3
for /f "delims=" %%a in ("%SNAP2ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps" "%SNAP2ART%"&for /f "delims=" %%a in ('dir /b/s/a-d ".snaps\%%~nxa"') do if "%%~za" LEQ "1" del /q "%%~a"
:SNAP3
if "%SNAP3ART%"=="" goto :SNAP4
for /f "delims=" %%a in ("%SNAP3ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps" "%SNAP3ART%"&for /f "delims=" %%a in ('dir /b/s/a-d ".snaps\%%~nxa"') do if "%%~za" LEQ "1" del /q "%%~a"

:SNAP4
if "%SNAP4ART%"=="" goto :SNAP5
for /f "delims=" %%a in ("%SNAP4ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps" "%SNAP4ART%"&for /f "delims=" %%a in ('dir /b/s/a-d ".snaps\%%~nxa"') do if "%%~za" LEQ "1" del /q "%%~a"

:SNAP5
if "%SNAP5ART%"=="" goto :FLDCHK
for /f "delims=" %%a in ("%SNAP5ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\.snaps" "%SNAP5ART%"&for /f "delims=" %%a in ('dir /b/s/a-d ".snaps\%%~nxa"') do if "%%~za" LEQ "1" del /q "%%~a"

:FLDCHK
if "%B1ART%"=="" goto :FLD2CHK
SET FLDCHK=
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Folder.*") do SET /A FLDCHK+=1
for /f "delims=" %%a in ("%B1ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Folder%%~xa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --out="Folder%FLDCHK%%%~xa" --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%B1ART%"&&rename "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%%~nxa" "Folder%%~xa"&for /f "delims=" %%a in ('dir /b/s/a-d "Folder%%~xa"') do if "%%~za" LEQ "1" del /q "%%~a"& set /A FLDCHK+=1||rename "%%~nxa" "Folder%%~xa"

:FLD2CHK
if "%B2ART%"=="" goto :BANCHK
for /f "delims=" %%a in ("%B2ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --out="Folder%FLDCHK%%%~xa" --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%B2ART%"&&if "%FLDCHK%"=="" rename ""%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Folder%FLDCHK%%%~nxa" "Folder%%~xa"&for /f "delims=" %%a in ('dir /b/s/a-d "Folder%%~xa"') do if "%%~za" LEQ "1" del /q "%%~a"||rename "%%~nxa" "Folder%%~xa"

:BANCHK
SET BANCHK=
if "%BANNR%"=="" goto :FANCHK
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Banner*.*") do SET /A BANCHK+=1
if "%BANCHK%"=="" for /f "delims=" %%a in ("%BANNR%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Banner%%~xa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --out="Banner%BANCHK%%%~xa" --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%BANNR%"&& rename "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%%~nxa" "Banner%%~xa"&for /f "delims=" %%a in ('dir /b/s/a-d "Banner%%~xa"') do if "%%~za" LEQ "1" del /q "%%~a"& set /A BANCHK+=1||rename "%%~nxa" "Banner%%~xa"

:FANCHK
set FANART=
if "%FAN1ART%"=="" goto :FAN2CHK
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Backdrop*.*") do SET /a FANART+=1
if "%FANART%"=="" for /f "delims=" %%a in ("%FAN1ART%") do %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --out="Backdrop%FANART%%%~xa" --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%FAN1ART%"&&rename "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "Backrop%%~xa"&for /f "delims=" %%a in ('dir /b/s/a-d "Backdrop%%~xa"') do if "%%~za" LEQ "1" del /q "%%~a"& set /A FANART+=1||rename "%%~nxa" "Backdrop%%~xa"

:FAN2CHK
set FANART=
if "%FAN2ART%"=="" goto :LOGOCHK
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\Backdrop*.*") do SET /A FANART+=1
set BCKDRPNUM=Backrop
if "%FANART%"=="2" set BCKDRPNUM=Backrop2
if "%FANART%"=="" goto :LOGOCHK
if %FANART% LEQ 1 for /f "delims=" %%a in ("%FAN2ART%") do %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --out="Backdrop%FANART%%%~xa" --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%FAN2ART%"&&rename "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%BCKDRPNUM%%%~xa"&for /f "delims=" %%a in ('dir /b/s/a-d "%BCKDRPNUM%%%~xa"') do if "%%~za" LEQ "1" del /q "%%~a"||rename "%%~nxa" "%BCKDRPNUM%%%~xa"

:LOGOCHK
if "%LOG1ART%"=="" goto :VIDID
set LOGOCHK=
set BANTYP=Logo
if "%BANCHK%"=="" set BANTYP=Banner
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%BANTYP%*.*") do SET /A LOGOART+=1
if "%LOGOCHK%"=="" for /f "delims=" %%a in ("%LOG1ART%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\%%~nxa" %WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --out="Logo%LOGOART%%%~xa" --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%" "%LOG1ART%"&for /f "delims=" %%a in ('dir /b/s/a-d "Logo%%~xa"') do if "%%~za" LEQ "1" del /q "%%~a"||rename "%%~nxa" "Logo%%~xa"

:VIDID
if "%PYOK%"=="" goto :COMPL
if "%VIDID%"=="" goto :COMPL
set VIDCHK=
set VIDTYP=videoid
for /f "delims=" %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\backdrops\*.mp4") do SET /A VIDNUM+=1
if not exist "backdrops" mkdir "backdrops"
attrib +H backdrops
pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\backdrops"
if "%VIDCHK%"=="" for /f "delims=" %%a in ("%VIDID%") do if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%FLDRN%\backdrops\%FLDRN%.mp4" %WSTRT% "%GBC%\youtube-dl.exe" --id "%VIDID%"

move /y "%VIDID%.mp4" "%FLDRN%.mp4"
:COMPL
popd
popd