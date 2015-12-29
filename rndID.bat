del /q altnum.ini
if "%WINVER%"=="XP" goto :XP
Setlocal EnableDelayedExpansion
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set _count=0
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%61
SET _rndalphanum=!_Alphanumeric:~%_RND%,1!
Echo !_rndalphanum!>>altnum.ini
If !_count! leq 33 goto _loop
for /f "Tokens=*" %%i in (altnum.ini) do (
set var=%%i
if defined var set data=!data!!var!
)
set RNDVAR=!data!
echo %RNDVAR% >"%GBC%\randnum.ini"
endlocal
exit /b


:XP
for /f "tokens=1,2,3,4,5 delims=-" %%a in ('"%GBC%\uuidgen.exe"') do set RNDVAR=%%~a%%~b%%~c%%~d%%~e
echo %RNDVAR% >"%GBC%\randnum.ini"
exit /b
for /f "delims=" %%a in ('"%GBC%\pwg.exe" -n -cf2 -l 32') do set RNDVAR=%%~a
echo %RNDVAR% >"%GBC%\randnum.ini"
exit /b
call "%GBC%\rndID2.bat">>"%GBC%\logs\rndid2.bat"
set RNDVAR=%RandomPassword%
echo %RNDVAR% >"%GBC%\randnum.ini"
