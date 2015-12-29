pushd "%GBC%"
:DATCVR
del /q "%GBC%\datlist.ini"
set DATFILE=
set DATFLDR=
set PARSETYPE=
set DATEXTN=
set DATVRB=
"%GBC%\wbox.exe" "RJ_GUI" "####################^^### DAT ####^Select a .dat to convert^^### DATSET ###^Select a folder of .dat files to convert^^##################^^### XML ###^Select an .xml to convert^^### XMLSET ###^Select a folder of .xml files to convert^^" "DAT;DATSET;XML;XMLSET" /DB=1
if %errorlevel%==1 goto :PARSEONE
if %errorlevel%==2 goto :ALLDATS
if %errorlevel%==3 goto :PARSEXML
if %errorlevel%==4 goto :XMLALL
goto :QUITOUT

:ALLDATS
set DATVRB=.dat
goto :PARSEALL

:PARSEONE
set DATVRB=.dat
goto :DATSELECT

:PARSEXML
set DATVRB=.xml
goto :DATSELECT

:DATSELECT
if "%DATVRB%"==".xml" call :XMLTYPE
for /f "delims=" %%a in ('Wfile.exe "SET DATFILE=" "%GBC%\net\CRC\*%DATVRB%" "Select a %DATVRB% file to convert" /noquote') do %%a
if "%DATFILE%"=="" goto :QUITOUT
popd
for /f "delims=" %%a in ("%DATFILE%") do set DATEXTN=%%~xa
for /f "delims=" %%a in ('echo "%DATFILE%"') do set DATTMP=%%~dpa

for %%a in ("%DATTMP:~0,-1%") do set DATFLDR=%%~a
set INDVSET=
set CSTCONS=
echo.-------->"%GBC%\extendedSelect.ini"
type "%GBC%\extendedSelect.set">>"%GBC%\extendedSelect.ini"
set CSTCONS=
set DATNUM=
"%GBC%\Wselect.exe" "%GBC%\extendedselect.ini" "system to associate" "set CSTCONS=$item" > "%GBC%\cursel.cmd"
call "%GBC%\cursel.cmd"
if "%CSTCONS%"=="--------" goto :DATSELECT
if "%CSTCONS%"=="" goto :QUITOUT
set INDVSET=1
for /f "delims=" %%a in ('dir /b/a-d/s "%DATFLDR%\%CSTCONS%*%DATVRB%"') do set DATNUM+=1
set DATNUM+=1
call :%DATVRB%
goto :DATCVR

:XMLTYPE
set HSITYPE=
"%GBC%\wbox.exe" "RJ_GUI" "XML TYPE^^### HYPERSPIN ###^Hyperspin system lists^^### MESS ###^Mess system lists" "HYPERSPIN;MESS" /DB=1
if %errorlevel%==1 goto :HYPERSPINTYPE
if %errorlevel%==2 goto :MESSTYPE
goto :QUITOUT

:HYPERSPINTYPE
set PARSETYPE=xmlparse.bat
exit /b

:MESSTYPE
for %%a in ("%CSTCONS%*.hsi") do set HSITYPE= %%a
set PARSETYPE=messparse.bat
exit /b

:XMLALL
set DATVRB=.xml

:PARSEALL
set INDVSET=
SET CSTCONS="-ALL-"
for /f "delims=" %%a in ('Wfolder.exe "SET DATFLDR=" "C:\" "Parse Folder of %DATVRB% files" /noquote') do %%a
if "%DATFLDR%"=="" goto :QUITOUT
if "%DATVRB%"==".xml" call :XMLTYPE
pushd "%DATFLDR%"
if "%PARSETYPE%"=="messparse.bat" goto :OPTFWD
for /f "delims=" %%a in ('dir /b/a-d/s "*Games*.dat"') do rename "%%~a" "%%~na.gmz"
for /f "delims=" %%a in ('dir /b/a-d/s "*Applications*.dat" "*Magazines*.dat" "*Demos*.dat" "*Newsletters*.dat" "*Commercials*.dat" "*Manuals*.dat" "*Samplers*.dat" "*Catalogs*.dat" "*Books*.dat" "*Various*.dat" "*Overlays*.dat" "*Artwork*.dat" "*Firmware*.dat" "*Educational*.dat" "*Operating Systems*.dat" "*Miscellanious*.dat" "*Multimedia*.dat" "*Docs*.dat" "*Sources*.dat" "*Public Domain*.dat" "*Diskmags*.dat" "*Coverdisks*.dat" "*Cracktros*.dat" "*Utilities*.dat"') do rename "%%~a" "%%~na.x8x"
set CONVRTNUM=
for /f "delims=" %%a in ('dir /b/a-d/s "*.gmz"') do (
set /a CONVRTNUM+=1
echo.%%~na.dat>>"%GBC%\datlist.ini"
rename "%%~a" "%%~na.dat"
)
popd

:OPTFWD
copy /y "%GBC%\extendedSelect.set" "%GBC%\extendedselect.ini"
if "%DATVRB%"==".dat" for /f "delims=" %%a in ('type "%GBC%\tosecnames.set"') do echo.%%~a>>"%GBC%\extendedselect.ini"
for /f "delims=" %%a in ('type "%GBC%\extendedSelect.ini"') do (
set CSTCONS=%%~a
call :INPARSE
)
if "%PARSETYPE%" NEQ "" exit /b
if %CONVRTNUM% LEQ 1 goto :CONVEND
for /f "delims=" %%a in ('type "%GBC%\datlist.ini"') do (
set DATFILE=%%~a
set DATEXTN=%%~xa
call :%DATVRB%a
)
exit /b
:CONVEND
%BSTRT% "%WFINS%" "RJ_GUI" "Conversion complete" /stop /timeout:1
exit /b

:INPARSE
for %%a in ("%CSTCONS%") do SET MESMAT=%%~a
if "%PARSETYPE%"=="messparse.bat" call "%GBC%\messmatch.bat">>"%GBC%\logs\messmatch.log"
pushd "%DATFLDR%"
for /f "delims=" %%a in ('dir /b/a-d/s "%MESMAT%*%DATVRB%"%HSITYPE%') do (
set DATFILE=%%~a
set DATEXTN=%%~xa
call :%DATVRB%
)
%BSTRT% "%WFINS%" "RJ_GUI" "Conversion complete" /stop /timeout:1
exit /b

:.xmla
for %%a in ("%DATFILE%") do set CSTCONS=%%~na
:.xml
%BSTRT% "%WBUSY%" "RJ_GUI" "Converting %CSTCONS% %DATVRB% files" /marquee
for %%a in ("%DATFILE%") do set MESXML=%%~na
if "%MESMAT%"=="" for /f "tokens=1 delims=_." %%a in ("%DATFILE%") do set MESMAT=%%~a
if /i "%DATEXTN%"==".xml" call "%GBC%\%PARSETYPE%">>"%GBC%\logs\xmlparse.log"
if /i "%DATEXTN%"==".hsi" call "%GBC%\hsiparse.bat">>"%GBC%\logs\xmlparse.log"
if ""=="" %BSTRT% "%WFINS%" "RJ_GUI" "Conversion complete" /stop /timeout:1
if "%INDVSET%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "Conversion complete" /stop /timeout:1
if "%NOMATCH%"=="1" "%GBC%\wbox.exe" "RJ_GUI" "%CSTCONS% does not have a match" "Okay" /TM=1
exit /b

:.data
for %%a in ("%DATFILE%") do set CSTCONS=%%~na
:.dat
%BSTRT% "%WBUSY%" "RJ_GUI" "Converting %CSTCONS% %DATVRB% databases" /marquee
del /q "%GBC%\%INIFILE%"
pushd "%GBC%"
set /a CONVRTNUM=-1
for %%a in ("%DATFILE%") do "%GBC%\fart.exe" "%GBC%\datlist.ini" "%%~nxa" --remove
for /f "tokens=1,2,* delims=(" %%a in ('type "%DATFILE%"') do if "%%~a"=="	rom " echo."%%~a(%%~b(%%~c">>"%GBC%\%INIFILE%"
"%GBC%\fart.exe" "%GBC%\%INIFILE%" " md5 " ":"
"%GBC%\fart.exe" "%GBC%\%INIFILE%" " crc " ":"
"%GBC%\fart.exe" "%GBC%\%INIFILE%" " size " ":"
"%GBC%\fart.exe" "%GBC%\%INIFILE%" "%%%" "[+]"
REM "%GBC%\fart.exe" "%INIFILE%" "game (" --remove
"%GBC%\fart.exe" "%GBC%\%INIFILE%" "\"" --remove
"%GBC%\fart.exe" "%GBC%\%INIFILE%" "	rom ( name " --remove

set DATNUM=
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\hashing\%CSTCONS%*.cmd"') do set /A DATNUM+=1
set /A DATNUM+=1
echo.goto :%%CRCSRC%%>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
echo.exit /b>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
set NAMEIN=
set CRCECK=
for /f "tokens=1,2,3 delims=:" %%a in ('type "%GBC%\%INIFILE%"') do (
set CRCECK=%%~c
set NAMEIN=%%~a
call :ECKO
)
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_*.cmd" [x] "%%%%a"
"%GBC%\fart.exe" "%GBC%\hashing\%CSTCONS%_*.cmd" [y] "%%%%~a"
if "%INDVSET%"=="1" %BSTRT% "%WFINS%" "RJ_GUI" "Conversion complete" /stop /timeout:1
exit /b

:ECKO
echo.:%CRCECK%>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
echo.for /f "delims=" [x] in ("%NAMEIN%") do set ROMRNM=[y]>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
echo.exit /b>>"%GBC%\hashing\%CSTCONS%_%DATNUM%.cmd"
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
exit /b
:QUITOUT
