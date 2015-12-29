for /f "delims=" %%a in ('dir /s/b/a-d-h "*.7z" "*.001"') do (
SET /A VARNUM=
SET FILCNT=
SET FILN=
SET ARCN=
SET ARCF=
SET ARCE=
set ZIPN=%%~dpnxa
set ZIPNL=%%~na
"%SEVENZIP%" l -slt "%%~dpnxa">"%GBC%\tmp.ini"
CALL :ALLPROC
)
del /q "%GBC%\tmp.ini"
exit /b

:ALLPROC
CALL :NAMEME

:GLOBAL
SET /A FILCNT+=1
call :GETME
if "%FILCNT%"=="%FILN%" exit /b
goto :GLOBAL

:NAMEME
set FILN=
for /f %%a in ('type "%GBC%\tmp.ini"') do set /A FILN+=1
exit /b

:GETME
set urlNthL=%FILCNT%
set ZIPCURL=
pushd "%GBC%"
for /f "delims=" %%a in ('Readline.exe "%GBC%\tmp.ini" /L:%urlNthL%') do set ZIPCURL=%%~a
popd

:ZIPSET
for /f "tokens=1 delims==" %%a in ("%ZIPCURL%") do (
SET PATHF=%%~a
)
for %%a in ("%PATHF%") do set PATHN=%%~nxa
REM if "%PATHN%" NEQ "Path " exit /b

SET /A VARNUM+=1
for /f "tokens=2 delims==" %%a in ("%ZIPCURL%") do (
set ARCN=%%~nxa
set ARCE=%%~xa
if "%VARNUM%" NEQ "1" CALL :ARCSET
)
exit /b

:ARCSET
if "%ARCE%"=="" exit /b
if /i "%ARCE%"==".txt" exit /b
if /i "%ARCE%"==".jpg" exit /b
if /i "%ARCE%"==".png" exit /b
if /i "%ARCE%"==".html" exit /b
if /i "%ARCE%"==".htm" exit /b
if /i "%ARCE%"==".tbn" exit /b
if /i "%ARCE%"==".nfo" exit /b
if /i "%ARCE%"==".zip" exit /b
if /i "%ARCE%"==".rar" exit /b
if /i "%ARCE%"==".7z" exit /b
if /i "%ARCE%"==".iso" exit /b
if /i "%ARCE%"==".img" exit /b
if /i "%ARCE%"==".cdi" exit /b
if /i "%ARCE%"==".bin" exit /b
if /i "%ARCE%"==".rom" exit /b
if /i "%ARCE%"==".cue" exit /b
if /i "%ARCE%"==".ccd" exit /b
if /i "%ARCE%"==".gdi" exit /b
if /i "%ARCE%"==".nrg" exit /b
if /i "%ARCE%"==".md5" exit /b
if /i "%ARCE%"==".mdf" exit /b
if /i "%ARCE%"==".mds" exit /b
for /f "delims=" %%a in ("%ARCN%") do set ARCN=%%~nxa

CALL "%GBC%\matcharcext.bat">>"%GBC%\logs\matcharcext%ZIPNL%.log"
