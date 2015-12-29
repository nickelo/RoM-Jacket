:GLOBALVAR
pushd "%GBC%"
del /q "%GBC%\crclist.ini"
del /q "%GBC%\tmpDAT.ini"
SET DATNUM=
popd

copy /y "%DATFILE%" "%GBC%\tmpDAT.ini"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "&apos;" "'"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "&amp;" "[#]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "%%%" "[+]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<game name=" "for /f \"delims=\" [x] in ("
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" " index=.*" "[z]"
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<\?xml version=.*" ""
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<?xml version=\"1.0\"?>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "[z]" ") do SET ROMTITLE=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<description>" "for /f \"delims=\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</description>" "\") do SET ROMGET=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<rating>" "for /f \"delims=\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</rating>" "\") do SET RATING=[y]"
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<manufacturer>.*" ""
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<manufacturer>" "for /f \"delims=\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</manufacturer>" "\") do SET DVLPR=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<genre>" "for /f \"delims=\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</genre>" "\") do SET GENRE=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<year>" "SET YEAR="
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</year>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<crc>" "SET CRCGET="
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</crc>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<enabled>Yes</enabled>" "echo.:%%%\%CRCGET%\%%%>>\"%%%\%[v]%\%%a%\hashing\%CSTCONS%%DATNUM%.cmd\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<enabled>No</enabled>" "echo.:%%%\%CRCGET%\%%%>>\"%%%\%[v]%\%%%\hashing\%CSTCONS%%DATNUM%.cmd\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</game>" "echo.\"for /f \"delims=\" [i] in (\"%%%\%ROMTITLE%\%%%\") do SET ROMRNM=[n][#] exit /b\">>\"%%%\%[v]%\%%%\hashing\%CSTCONS%%DATNUM%.cmd\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<menu>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</menu>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<header>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</header>" --remove
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<listname.*" ""
REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<listname>" "for /f \"delims=\" [x] in (\""
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</listname>" "\") do SET CSTXMLCON=[y]"
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<listversion.*" ""
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<exporterversion.*" ""
REM call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<exporterversion.*" "[u]"
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<lastlistupdate.*" ""
REM call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<lastlistupdate.*" "[c]"
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"
call :REPLACE "%GBC%\tmpDAT.ini" "tmpDAT.tmp" "<cloneof.*" ""
del /q "%GBC%\tmpDAT.ini" && rename "tmpDAT.tmp" "%GBC%\tmpDAT.ini"

REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "[c]" "for /f \"delims=\" [x] in (\"%%%\%CSTCONS%\%%%\") do if not exist \"%%%\%[L1]%\%%%\%%%\%[L2]%\%%%\%%%\%[L3]%\%%%\[y]\" call \"%%%\%[v]%\%%%\fuzchk.bat\">>\"%%%\%[v]%\%%%\logs\fuzchk.log\"
REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "[u]" "if \"%%%\%CSTCONS%\%%%\"==\"\" exit /b
REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "    " --remove

"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L1] "GBG"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L2] "GAM"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L3] "CONS"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [v] "GBC"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [x] "%%%%a"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [y] "%%%%~a"
set DATNUM=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\%CSTCONS%*.cmd"') do SET /A DATNUM+=1
copy /y "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.cmd" && del/q "%GBC%\tmpDAT.ini"
echo.goto :%%CRCSRC%%>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
echo.exit /b>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
call "%GBC%\tmpDAT.cmd"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "\"" --remove
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "[+]" "%%%"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [i] "%%%%a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [n] "%%%%~a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "\"for /f" "for /f"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "exit /b\"" "exit /b"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "[#]" "&"
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
