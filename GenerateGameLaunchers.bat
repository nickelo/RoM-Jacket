%GAMDRV%
cd "%GBG%\%GAM%\%CONS%"
for /f "delims=" %%a in ('type "%GBC%\conSelect.set"') do (
SET GLR=%%a
CALL :ggliterate
)
goto :glrout

:OVERWRITEBATS
set MOVETYPE=move /y
if "%COPYTYPE%"=="echo n|copy /-y" for %%a in ("%echo n|copy /-y") do set MOVETYPE=%%~a
if "%RECONF%"=="1" copy /Y "%CD%\zz.bat" "%CD%\%INDVROMS%" && %MOVETYPE% "%CD%\%INDVROMS%\zz.bat" "%CD%\%INDVROMS%\%INDVROMS%.bat"
goto :glrout

:ggliterate
if not exist "%GBG%\%GAM%\%CONS%\%GLR%" goto :glrout
pushd "%GBG%\%GAM%\%CONS%\%GLR%"

for /f "delims=" %%a in ('dir /b /a "*.settings"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.config"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.conf"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.cfg"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.ini"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.jpg"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.png"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.xml"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a "*.nfo"') do ATTRIB +H "%%~a"
for /f "delims=" %%a in ('dir /b /a-d "*.pdf"') do if /i "%%~xa"==".pdf" move /y "%%~a" ".Man"
for /f "delims=" %%a in ('dir /b /a-d "*.mp4"') do if /i "%%~xa"==".mp4" move /y "%%~a" "backdrops"
for /f "delims=" %%a in ('dir /b /a-d "*.exe"') do if /i "%%~xa"==".exe" SET EXEFLAG=1
copy /Y "%GBC%\net\%LNCH%\%GLR%\zz.bat" "%GBG%\%GAM%\%CONS%\%GLR%"


set MOVETYPE=move /y
if "%COPYTYPE%"=="echo n|copy /-y" for %%a in ("%echo n|copy /-y") do set MOVETYPE=%%~a
for /d %%i in (*) do (
SET INDVROMS=%%i
CALL :COPYMVROMS
) 	
exit /b

:COPYMVROMS
if "%BATOV%"=="1" GOTO :OVERWRITEBATS
copy /Y "%CD%\zz.bat" "%CD%\%INDVROMS%" && %COPYTYPE% "%CD%\%INDVROMS%\zz.bat" "%CD%\%INDVROMS%\%INDVROMS%.bat"

:glrout