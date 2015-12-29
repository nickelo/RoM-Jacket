set TOUHLNK=
pushd "%GBC%\net\%EXECT%\%TOUHU%"
if "%CEMU%"=="%ANEX%" call "%GBC%\anexinj.bat">>"%GBC%\logs\anexinj.log"
popd
if not exist "%GBC%\net\%EXECT%\%TOUHU%\SOURCE" mkdir "%GBC%\net\%EXECT%\%TOUHU%\SOURCE"
attrib +H "%GBC%\net\%EXECT%\%TOUHU%\SOURCE"
pushd "%GBC%\net\%EXECT%\%TOUHU%\SOURCE"
call :TSTOUT
popd

for %NIVA% %%g IN (%NEWGAMDIR%) DO (
  set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
  copy /y "%GBC%\net\%EXECT%\%TOUHU%\preAnex.cmd" "%%~g"
  copy /y "%GBC%\net\%EXECT%\%TOUHU%\postAnex.cmd" "%%~g"
  copy /y "%GBC%\net\%EXECT%\%TOUHU%\DEFAULT.cmd" "%%~g"
  pushd "%%~g"
CALL "%GBC%\Touhuinject.bat">>"%GBC%\logs\touhuexeject.log"
  call :injext
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnk" SET TOUHLNK=%%~a
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" "REG ADD" "REM REG ADD"
if /I "%%~xa"==".lnk" CALL "%GBC%\touhu2exeject.bat">>"%GBC%\logs\touhu2exeject.log"
if /I "%%~xa"==".lnk" exit /b
if /I "%%~xa"==".hdi" "%GBC%\fart.exe" "*.bat" "REM [SDK]" --remove
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" "REM [SDK]" --remove
)
:skp
exit /b

:TSTOUT
for /f "delims=" %%a in ('dir /b/ad-h') do (
set MIRROR=%%~a
pushd "%%~a"
call :INHERE
popd
)
exit /b
:INHERE
set TOHXE=
for /f "delims=" %%a in ('dir /b/a-d "th*e.exe"') do set TOHXE=%%~a
if "%TOHXE%"=="" for /f "delims=" %%a in ('dir /b/a-d "th*.exe"') do set TOHXE=%%~a
if "%TOHXE%"=="" for /f "delims=" %%a in ('dir /b/a-d "*.exe"') do set TOHXE=%%~a
if "%TOHXE%" NEQ "" mkdir "%GBC%\net\%EXECT%\%TOUHU%\%MIRROR%"
if "%TOHXE%" NEQ "" "%GBC%\xxmklink.exe" "%GBC%\net\%EXECT%\%TOUHU%\%MIRROR%\%MIRROR%.lnk" "%GBC%\net\%EXECT%\%TOUHU%\SOURCE\%MIRROR%\%TOHXE%" " " "%GBC%\net\%EXECT%\%TOUHU%\SOURCE" "%MIRROR%" 1 ""
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1