del /q "%GBC%\ROMINT.ini"
del /q "%GBC%\lrg.ini"
del /q "%GBC%\max.ini"
del /q "%GBC%\mid.ini"
del /q "%GBC%\low.ini"
del /q "%GBC%\min.ini"
%BSTRT% "%WBUSY%" "RJ_GUI" "Generating HASH index." /marquee

:GETHASHINI
set ROMINT=
for /f "delims=" %%a in ('dir /b/a-d-h/s %LISTED%') do (
set RSIZ=%%~za
set ROMTST=%%~a
set /a ROMINT+=1
call :XPHASH
)		
echo.%ROMINT%>"%GBC%\ROMINT.ini"
"%GBC%\fart.exe" "%GBC%\%CNSLIST%" "\":" " ":"
"%GBC%\fart.exe" "%GBC%\%CNSLIST%" "\"" --remove
"%GBC%\fart.exe" "%GBC%\%CNSLIST%" " :" ":"

"%GBC%\fart.exe" "%GBC%\min.ini" "\":" " ":"
"%GBC%\fart.exe" "%GBC%\min.ini" "\"" --remove
"%GBC%\fart.exe" "%GBC%\min.ini" " :" " ":"

"%GBC%\fart.exe" "%GBC%\low.ini" "\":" " ":"
"%GBC%\fart.exe" "%GBC%\low.ini" "\"" --remove
"%GBC%\fart.exe" "%GBC%\low.ini" " :" " ":"

"%GBC%\fart.exe" "%GBC%\med.ini" "\":" " ":"
"%GBC%\fart.exe" "%GBC%\med.ini" "\"" --remove
"%GBC%\fart.exe" "%GBC%\med.ini" " :" " ":"

"%GBC%\fart.exe" "%GBC%\lrg.ini" "\":" " ":"
"%GBC%\fart.exe" "%GBC%\lrg.ini" "\"" --remove
"%GBC%\fart.exe" "%GBC%\lrg.ini" " :" " ":"

"%GBC%\fart.exe" "%GBC%\max.ini" "\":" " ":"
"%GBC%\fart.exe" "%GBC%\max.ini" "\"" --remove
"%GBC%\fart.exe" "%GBC%\max.ini" " :" " ":"
%BSTRT% "%WFINS%" "RJ_GUI" HASH GENERATION COMPLETE" /stop /timeout:2
exit /b

:XPHASH
pushd "%GBC%"	
for /f "tokens=2 delims=:" %%a in ('crc.exe "%ROMTST%"') do (
set CRCTMP=%%~a
call :RECHO
)
popd
exit /b

:MAX
echo."%ROMTST%":%CRCSRC%>>"%GBC%\max.ini"
echo."%ROMTST%":%CRCSRC%>>"%GBC%\%HSHTYP%"
exit /b
:LRG
echo."%ROMTST%":%CRCSRC%>>"%GBC%\lrg.ini"
echo."%ROMTST%":%CRCSRC%>>"%GBC%\%HSHTYP%"
exit /b
:MED
echo."%ROMTST%":%CRCSRC%>>"%GBC%\mid.ini"
echo."%ROMTST%":%CRCSRC%>>"%GBC%\%HSHTYP%"
exit /b
:LOW
echo."%ROMTST%":%CRCSRC%>>"%GBC%\low.ini"
echo."%ROMTST%":%CRCSRC%>>"%GBC%\%HSHTYP%"
exit /b
:MIN
echo."%ROMTST%":%CRCSRC%>>"%GBC%\min.ini"
echo."%ROMTST%":%CRCSRC%>>"%GBC%\%HSHTYP%"
exit /b

:RECHO
set ROMRNM=
set CRCSRC=
for %%a in ("%CRCTMP:~1,11%") do set CRCSRC=%%~a
if %RSIZ% GTR 500000000 goto :MAX
if %RSIZ% GTR 100000000 goto :LRG
if %RSIZ% GTR 10000000 goto :MED
if %RSIZ% GTR 2000000 goto :LOW
if %RSIZ% LEQ 2000000 goto :MIN
exit /b
