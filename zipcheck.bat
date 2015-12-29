pushd "%GBG%\%ROMJ%"
for /f "delims=" %%a in ('dir /s/b/a-d-h "*.zip"') do (
SET /A VARNUM=
set /A DISKIMG=
set /A ARCHIVE=
SET FILCNT=
SET FILN=
SET ARCN=
SET ARCP=
SET ARCF=
SET ARCE=
set ZIPF=%%~nxa
set ZIPN=%%~dpnxa
set ZIPNL=%%~na
"%SEVENZIP%" l -slt "%%~dpnxa">"%GBC%\tmp.ini"
CALL :ALLPROC
)
del /q "%GBC%\tmp.ini"
popd
exit /b

:ALLPROC
set FILN=
for /f %%a in ('type "%GBC%\tmp.ini"') do set /A FILN+=1

:GLOBAL
SET /A FILCNT+=1
call :GETME
if "%FILCNT%"=="%FILN%" exit /b
goto :GLOBAL

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
SET /A VARNUM+=1
for /f "tokens=2 delims==" %%a in ("%ZIPCURL%") do (
set ARCP=%%~a
set ARCN=%%~nxa
set ARCE=%%~xa
if "%VARNUM%" NEQ "1" CALL :ARCSET
)
exit /b

:ARCSET
set DISKIMG=
set ARCHIVE=
set ARCWITHIN=
if "%ARCN%"=="  " exit /b
if "%ARCN%"==" " exit /b
if "%ARCN%"=="%ZIPF%" exit /b
if "%ARCE%"=="" exit /b
if /i "%ARCE%"==".nfo" exit /b
if /i "%ARCE%"==".xml" exit /b
if /i "%ARCE%"==".txt" exit /b
if /i "%ARCE%"==".jpg" exit /b
if /i "%ARCE%"==".png" exit /b
if /i "%ARCE%"==".html" exit /b
if /i "%ARCE%"==".htm" exit /b
if /i "%ARCE%"==".tbn" exit /b
if /i "%ARCE%"==".rom" exit /b
if /i "%ARCE%"==".bin" exit /b

if /i "%ARCE%"==".zip" SET ARCHIVE=1
if /i "%ARCE%"==".rar" SET ARCHIVE=1
if /i "%ARCE%"==".7z" SET ARCHIVE=1
if /i "%ARCE%"==".zip" SET ARCWITHIN=1
if /i "%ARCE%"==".rar" SET ARCWITHIN=1
if /i "%ARCE%"==".7z" SET ARCWITHIN=1

if /i "%ARCE%"==".iso" SET DISKIMG=1
if /i "%ARCE%"==".img" SET DISKIMG=1
if /i "%ARCE%"==".cdi" SET DISKIMG=1
if /i "%ARCE%"==".cue" SET DISKIMG=1
if /i "%ARCE%"==".ccd" SET DISKIMG=1
if /i "%ARCE%"==".gdi" SET DISKIMG=1
if /i "%ARCE%"==".nrg" SET DISKIMG=1
if /i "%ARCE%"==".md5" SET DISKIMG=1
if /i "%ARCE%"==".mdf" SET DISKIMG=1
if /i "%ARCE%"==".mds" SET DISKIMG=1
for /f "delims=" %%a in ("%ARCP:~1,255%") do set ARCP=%%~a
if "%ARCHIVE%"=="" CALL "%GBC%\matcharcext.bat"
if "%ARCHIVE%"=="1" "%SEVENZIP%" e -y "%ZIPN%" -o"%GBG%\%ROMJ%" && move /y "%ZIPN%" "%GBG%\%ROMJ%\SORTED ARCHIVES" && attrib +H "%GBG%\%ROMJ%\SORTED ARCHIVES\%ZIPF%"
