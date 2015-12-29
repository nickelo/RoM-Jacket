for /f "delims=" %%a in ('dir /b/a-d-h "%RENLOC%\%DELOG%"') do (
call :REPLACE "%RENLOC%\%%~a" "%RENLOC%\%%~na.tmp" ">>.*\\logs\\*.*" ""
del /q "%RENLOC%\%%~a" && rename "%RENLOC%\%%~na.tmp" "%%~a"
)
exit /b

:REPLACE
@echo off
if "%~3"=="" (
echo.Search and replace
echo Syntax:
echo %0 "filein.txt" "fileout.ext" "regex" "replace_text" [first]
echo.
echo. if [first] is present only the first occurrence is changed
goto :EOF
)
if "%~5"=="" (set global=true) else (set global=false)
set s=regex.replace(wscript.stdin.readall,"%~4")
 >_.vbs echo set regex=new regexp
>>_.vbs echo regex.global=%global%
>>_.vbs echo regEx.IgnoreCase=True           
>>_.vbs echo regex.pattern="%~3"
>>_.vbs echo wscript.stdOut.write %s%
cscript /nologo _.vbs <"%~1" >"%~2"
del _.vbs

