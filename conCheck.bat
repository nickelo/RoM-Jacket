CALL "%GBC%\shortname.bat"
set CURNTA=conselect.set
REM if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
if "%CEMU%"=="%MAME%" goto :ARCD
for /f "delims=" %%a in ('type "%GBC%\%CURNTA%"') do if /i "%CSTCONS%"=="%%~a" goto :CALLING
exit /b

:CALLING
if "%CEMU%"=="%RTROA%" exit /b
if "%CEMU%"=="%MESS%" exit /b
SET INJSKP=1
if /I "%ALLEXT%"==".pdf" move /y "%ALLNAM%" ".Man"
if "%FERID%"=="1" CALL :EVERYROM
if "%FERID%"=="1" exit /b
if "%INDVGAME%"=="" pushd "%CUSTCONSPTH%"
:LEGEND
CALL "%GBC%\extinj%SHRTN%.bat">>"%GBC%\logs\extinj%SHRTN%.log""
if "%INDVGAME%"=="" popd
exit /b


:ARCD
if "%CSTCONS%"=="%ARCD%" goto :CALLING
SET INJSKP=1
if /I "%ALLEXT%"==".pdf" move /y "%ALLNAM%" ".Man"
if "%FERID%"=="1" CALL :EVERYROM
if "%FERID%"=="1" exit /b
if "%INDVGAME%"=="" pushd "%CUSTCONSPTH%"
CALL "%GBC%\extinjMAME.bat">>"%GBC%\logs\extinjMAME.log""
if "%INDVGAME%"=="" popd
