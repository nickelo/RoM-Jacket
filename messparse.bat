:GLOBALVAR
pushd "%GBC%"
del /q "%GBC%\crclist.ini"
del /q "%GBC%\tmpDAT.ini"
SET DATNUM=
popd
set TDLM=delims=
if "%SWTCH%"=="1" set TDLM=[DELIM]
copy /y "%DATFILE%" "%GBC%\tmpDAT.ini"

"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "&apos;" "'"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" ":" "-"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "&amp;" "[#]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "%%%" "[+]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<software name=\"" "for /f \"delims=\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<description>" "for /f \"[swtch]\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</description>" "\") do SET ROMFLDR=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<softwarelist name=\"" ":"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<part name=\"" "SET TYP="
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\" interface=" " interface="
REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</part>" "SET CRCVAL=[z])"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<publisher>" "for /f \"delims=\" [x] in (\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</publisher>" "\") do SET DVLPR=[y]"
REM \\//"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</dataarea>" "set ROMRNM=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" " size=" ":"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\" crc=\"" ":"	
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\" sha1=\"" ":"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\" md5=\"" ":"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<rom name=" "for /f \"tokens=1,3 delims=:\" [x] in ("
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "<year>" "SET YEAR="
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</year>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" ">\"" --remove
REM "%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</software>" "echo.:%%%\%CRCVAL%\%%%>>\"%%%\%[$]%\%%%\hashing\%%%\%[L4]%\%%%_%%%\%DATNUM%\%%%.cmd\"&echo^.for [x] in (\"[ROMRNM]\") do move /y \"[y]\" \"[DEST]\">>\"%%%\%[$]%\%%%\hashing\%%%\%[L4]%\%%%_%%%\%DATNUM%\%%%.cmd\"&echo^.exit /b>>\"%%%\%[$]%\%%%\hashing\%%%\%[L4]%\%%%_%%%\%DATNUM%\%%%.cmd\""
REM \\//"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</software>" "echo.:[CRC]>>"[;]%%%\%[$]%\%%%\hashing\[Dn].cmd[;]"&echo^.for [x1] in ([,][ROMRNM][,]) [ui] [,][y1][,] [,][DEST]\[ROMRNM][,]>>[;]%%%\%[$]%\%%%\hashing\[Dn].cmd[;]&echo^.exit /b>>[;]%%%\%[$]%\%%%\hashing\[Dn].cmd[;]"
REM \\//\\"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</software>" "echo.:[CRC]>>"[;]%%%\%[$]%\%%%\hashing\[Dn].cmd[;]"&echo^.[forloop]>>[;]%%%\%[$]%\%%%\hashing\[Dn].cmd[;]&echo^.[extcmd]>>[;]%%%\%[$]%\%%%\hashing\[Dn].cmd[;]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</software>" --remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [Dn] "%%%\%[L4]%\%%%_%%%\%[L9]%\%%%"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L1] "GBG"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L2] "GAM"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L3] "CONS"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L4] "CSTCONS"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [L9] "DATNUM"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [CRC] "%%%\%CRCVAL%\%%%"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [swtch] "%TDLM%"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [$] "GBC"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\":\"" ":"
call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" " offset=.*" "[@]"	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "-->.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"


"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "[@]" ") do (SET ROMRNM=[y]&set CRCVAL=[z]&call :ICHO)"
call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<!DOCTYPE.*" "[$]"
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "[$]" "exit /b"
call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<\?xml version=.*" "[aj]"
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "[aj]" "goto :%%%\%MESXML%\%%%"
call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<info name=.*" ""
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "</part.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"


call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "</dataarea.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"


call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<feature.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<dataarea.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" " cloneof=.*" "[ed]"	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" " supported=.*" "[ed]"
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" " interface=.*" ""
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\" description=" " description="
call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" " description=.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<sharedfeat name=.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"

call :REPLACE "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.tmp" "<!--.*" ""	
del /q "%GBC%\tmpDAT.ini" && rename "%GBC%\tmpDAT.tmp" "tmpDAT.ini"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\"^>"	"[ed]"
for /f "delims=" %%a in ('type "%GBC%\meshsh.set"') do echo.%%~a>>"%GBC%\tmpDat.ini"

"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [;] "\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [ed] "\") do SET ROMTITLE=[y]"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "</softwarelist>" "exit /b"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "\"\""	"\""
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" "	"	--remove
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [x] "%%%%a"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [y] "%%%%~a"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [z] "%%%%~b"
"%GBC%\fart.exe" "%GBC%\tmpDAT.ini" [DELIM] "tokens=1 delims=("
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [x1] "%%%%a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [y1] "%%%%~a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [z1] "%%%%~b"

:CNTCONS
set DATNUM=
for /f "delims=" %%a in ('dir /b/a-d-h "%GBC%\hashing\%CSTCONS%*.cmd"') do SET /A DATNUM+=1
set /A DATNUM+=1
copy /y "%GBC%\tmpDAT.ini" "%GBC%\tmpDAT.cmd" && del/q "%GBC%\tmpDAT.ini"
echo.goto :%%CRCSRC%%>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
echo.exit /b>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
call "%GBC%\tmpDAT.cmd" 
copy /y "%GBC%\tmpDat.cmd" "%GBC%\hashing\%MESXML%_%DATNUM%.cmd"
REM "%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "\"" --removeCSTCONS

"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "[ROMRNM]" "%%%\%[ROMF]%\%%%\%%%\%[ROMV]%\%%%"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "[+]" "%%%"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [i] "%%%%a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [DESTN] "%%%\%[L1]%\%%%\%%%\%[L2]%\%%%\%%%\%[L3]%\%%%\%%%\%[L4]%\%%%"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [n] "%%%%~a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "exit /b\"" "exit /b"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "[#]" "&"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" "[TYP]" "%%%\%TYP%\%%%"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [x1] "%%%%a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [y1] "%%%%~a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [z1] "%%%%~b"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [ui] "do move /y"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [,] "\""
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [L1] "GBG%"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [L2] "GAM"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [L3] "CONS"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [L4] "CSTCONS"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [ROMV] "CSTCONS"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [q] "\""
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd" [FLDRING] "%%%\%FLDSWTCH%\%%%"
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
