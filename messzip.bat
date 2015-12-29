SET ZIPSKIP=
SET /A VARNUM=
SET FILCNT=
SET FILN=
SET ARCN=
SET ARCF=
SET ARCE=
SET CDIN=
SET ARCINS=	

set ZIPN=%FULLNM%
"%SEVENZIP%" l -slt "%ZIPN%">"%GBC%\tmp.ini"
CALL :ALLPROC
del /q "%GBC%\tmp.ini"

if "%REXTN%"=="" SET REXTN=%ARCE%
if "%REALN%"=="" SET REALN=%ARCN%
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
if "%PATHN%" NEQ "Path" exit /b
SET /A VARNUM+=1
for /f "tokens=2 delims==" %%a in ("%ZIPCURL%") do (
set ARCN=%%~nxa
set ARCF=%%~nxa
set ARCE=%%~xa
if "%VARNUM%" NEQ "1" CALL :ARCSET
)
exit /b

:SKIPZIP
SET SKIPZIP=1
exit /b

:CDIN
SET CDIN=1
exit /b

:ARCSET
if "%ARCE%"=="" GOTO :SKIPZIP
if /i "%ARCE%"==".bat" GOTO :SKIPZIP
if /i "%ARCE%"==".ini" GOTO :SKIPZIP
if /i "%ARCE%"==".settings" GOTO :SKIPZIP
if /i "%ARCE%"==".config" GOTO :SKIPZIP
if /i "%ARCE%"==".conf" GOTO :SKIPZIP
if /i "%ARCE%"==".cfg" GOTO :SKIPZIP
if /i "%ARCE%"==".txt" GOTO :SKIPZIP
if /i "%ARCE%"==".jpg" GOTO :SKIPZIP
if /i "%ARCE%"==".png" GOTO :SKIPZIP
if /i "%ARCE%"==".html" GOTO :SKIPZIP
if /i "%ARCE%"==".htm" GOTO :SKIPZIP
if /i "%ARCE%"==".tbn" GOTO :SKIPZIP
if /i "%ARCE%"==".nfo" GOTO :SKIPZIP
if /i "%ARCE%"==".zip" set ARCINS=1
if /i "%ARCE%"==".zip" GOTO :SKIPZIP
if /i "%ARCE%"==".rar" set ARCINS=1
if /i "%ARCE%"==".rar" GOTO :SKIPZIP
if /i "%ARCE%"==".7z" set ARCINS=1
if /i "%ARCE%"==".7z" GOTO :SKIPZIP
if /i "%ARCE%"==".iso" GOTO :CDIN
if /i "%ARCE%"==".img" GOTO :CDIN
if /i "%ARCE%"==".cdi" GOTO :CDIN
if /i "%ARCE%"==".bin" GOTO :CDIN
if /i "%ARCE%"==".rom" GOTO :CDIN
if /i "%ARCE%"==".cue" GOTO :CDIN
if /i "%ARCE%"==".ccd" GOTO :CDIN
if /i "%ARCE%"==".gdi" GOTO :CDIN
if /i "%ARCE%"==".nrg" GOTO :CDIN
if /i "%ARCE%"==".md5" GOTO :CDIN
if /i "%ARCE%"==".mdf" GOTO :CDIN
if /i "%ARCE%"==".mds" GOTO :CDIN
if /i "%INZIP%"=="1" SET OUTZIP=1
if /i "%OUTZIP%"=="1" SET INZIP=

:REX
if "%MTYP%" NEQ "" SET REXTN=%ARCE%
if "%MTYP%" NEQ "" SET REALN=%ARCF%
exit /b

:MESSCHK
CALL "%GBC%\messchk.bat"
goto :REX
