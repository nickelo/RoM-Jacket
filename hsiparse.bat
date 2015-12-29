:GLOBALVAR
if "%MESNM%"=="" for /f "delims=" %%a in ("%DATFILE%") do set MESSNM=%%~na
call "%GBC%\messmatch.bat">>"%GBC%\logs\messmatch.log"
if "%MESMAT%"=="" for %%a in ("%CSTCONS%") do set MESMAT=%%~a
for /f "tokens=1 delims=_" %%a in ("%MESSNM%") do if "%%~a" NEQ "%MESMAT%" do set 
pushd "%GBC%"
del /q "%GBC%\crclist.ini"
del /q "%GBC%\tmpDAT.ini"
SET DATNUM=
popd
set TDLM=delims=
if "%SWTCH%"=="1" set TDLM=tokens=1 delims=(
copy /y "%DATFILE%" "%GBC%\tmpDAT.ini"

"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "%%%" "[;]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "&apos;" "'"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" ":" "-"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "&amp;" "[#]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "%%%" "[+]"
"%GBC%\fart.exe" %GBC%\tmpDAT.ini" "</hash>" --remove
"%GBC%\fart.exe" "tmpDAT.ini" "</hashfile>" --remove
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" "<status>.*" ""
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" "<extrainfo>.*" ""	
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" "<!--.*" ""
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" "<manufacturer>.*" ""	
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" " sha1=.*name=" ":"
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" ">.*" ""
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
call :REPLACE %GBC%\tmpDAT.ini" "%GBC%\net\CRC\tmpDAT.tmp" "<year>.*" ""
del /q %GBC%\tmpDAT.ini" && rename "%GBC%\net\CRC\tmpDAT.tmp" "tmpDAT.ini"
"%GBC%\fart.exe" "tmpDAT.ini" "<hash crc32=" --remove
"%GBC%\fart.exe" "tmpDAT.ini" "\"" --remove
set DATNUM=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\%CSTCONS%*.set"') do SET /A DATNUM+=1
copy /y "%GBC%\tmpDat.ini" "%GBC%\crc\%CSTCONS%_%DATNUM%.set"
exit /b


:REPLACE
if "%~3"=="" (
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
