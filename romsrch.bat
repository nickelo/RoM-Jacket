"%GBC%\Winput.exe" "$input" "Search for" "">"%GBC%\search.ini"
if %ERRORLEVEL%==1 goto :CANCELLED
for /f "delims=" %%a in ('type "%GBC%\search.ini"') do set SRCHTRM=%%~a
del /q "%GBC%\rdftd.ini"
del /q "%GBC%\net\%ROMDPT%\masterlist.ini"
del /q "%GBC%\net\%ROMDPT%\search.php"
del /q "%GBC%\net\%ROMDPT%\srchlst.ini"
del /q "%GBC%\net\%ROMDPT%\searchres.ini"
%WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBC%\net\%ROMDPT%" "%DWNPRFX%/search.php?search=%SRCHTRM%&system=All"
for /f "delims=" %%a in ("%GBC%\net\%ROMDPT%\search.php") do type "%%~a" |"%GBC%\Repl.bat" "=" "\r\n" x >"%GBC%\net\%ROMDPT%\searchres.ini"
"%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\searchres.ini" "\"" --remove

for /f "tokens=1 delims=>" %%a in ('type "%GBC%\net\%ROMDPT%\searchres.ini"') do (
set LINE=%%~a
if "%%~a" NEQ "" call :CHKSRCH
)
"%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\srchlst.ini" "%DWNPRFX%/" --remove
"%GBC%\fart.exe" "%GBC%\net\%ROMDPT%\srchlst.ini" "\"" --remove
del /q "%GBC%\curlist.ini"
call "%GBC%\multisel.exe" "%GBC%\net\%ROMDPT%\srchlst.ini" "%GBC%\curlist.ini"

REM call "%GBC%\fesysadd.bat">>"%GBC%\logs\srchfesysadd.log"


set ROMSRCH=
if not exist "%GBC%\curlist.ini" goto :GETSEARCH
for /f "tokens=1* delims=\" %%a in ('type "%GBC%\curlist.ini"') do (
set CSTCONS=%%~a
set ROMTCH=%%~b
call :SRCHROMS
)
exit /b

:CHKSRCH
set ROMSRCH=1
for /f "delims=" %%a in ("%LINE"~0,1%") do if "%%~a"=="~0,1" exit /b
for /f "delims=" %%a in ("%LINE:~0,27%") do if "%%~a" NEQ "%DWNPRFX%" exit /b
set SUBCONS=
set RGN=
for /f "delims=" %%a in ("%LINE%") do set FILN=%%~nxa
for /f "tokens=1,2 delims=\" %%a in ("%LINE%") do (
set CSTCONS=%%~nxa
set FILEC=%%~b
)
echo."%LINE%">>"%GBC%\net\%ROMDPT%\srchlst.ini"
if "%FILEN%" NEQ "%FILEC%" for %%a in ("%FILEC%") do set RGN=%%~a
call "%GBC%\rdcons.bat">>"%GBC%\logs\rdcons.log"
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
exit /b

:SRCHROMS
set SHRTN=
for /f "tokens=1,2 delims=\/" %%a in ("%ROMTCH%") do if "%%~b" NEQ "" set ROMTCH=%%~a/%%~b
for %%a in ("%ROMTCH%") do set ROMNAME=%%~a
for /f "tokens=1,2 delims=\/" %%a in ("%ROMTCH%") do if "%%~b" NEQ "" set ROMNAME=%%~nxb
call "%GBC%\rdcons.bat">>"%GBC%\logs\rdcons.log"
call "%GBC%\shortname.bat">>"%GBC%\logs\shortname.log"
call :ROMGOT
exit /b

:ROMGOT
for /f "tokens=2 delims=\" %%a in ("%FILEC%") do set REGION=%%~a
call :%SHRTN%REGION
%BSTRT% "%WBUSY%" "RJ_GUI" "DOWNLOADING ROMS" /marquee
%WSTRT% "%ARIA2C%" --connect-timeout=3 --conditional-get=true --dir="%GBG%\%GAM%\%CONS%\%CSTCONS%" "%DWNPRFX%/%RDCONS%/%ROMTCH%"
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%\%ROMNAME%" echo."%RDCONS%/%ROMTCH%">>"%GBC%\rdftd.ini"
exit /b

:TG16REGION	
if "%REGION%"=="SuperGrafx" do set CSTCONS=%SGFX%	
if "%REGION%"=="Japan" do set CSTCONS=%PCENG%
exit /b

:NESREGION
if "%REGION%"=="Japan" do set CSTCONS=%NFAM%
exit /b

:SEGAGREGION
if "%REGION%"=="Europe" do set CSTCONS=%SEGAMD%			
if "%REGION%"=="Japan" do set CSTCONS=%SEGAMD%
if "%REGION%"=="Australia" do set CSTCONS=%SEGAMD%
if "%REGION%"=="China" do set CSTCONS=%SEGAMD%
if "%REGION%"=="France" do set CSTCONS=%SEGAMD%
exit /b