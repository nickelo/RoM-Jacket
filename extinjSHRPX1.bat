SET NEWGAMDIR=*
if "%INDVGAME%" NEQ "" call "%GBC%\redefineGAM.bat">>"%GBC%\logs\redefineGAM.log"

if "%CANCELLED%"=="1" exit /b
for %NIVA% %%g IN (%NEWGAMDIR%) DO (
  set CSTM=%%~g
if "%INDVGAME%"=="1" set CSTM=%%~nxg
  Pushd "%%~g"
call :injext
  )	
exit /b

:injext
if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
for /f "delims=" %%a in ('dir /b/a-d "%GBC%\net\%LNCH%\%SHRPX1%\*.inj"') do copy /y "%GBC%\net\%LNCH%\%SHRPX1%\%%~a" "%GBC%\net\%LNCH%\%SHRPX1%\%%~na.ini"
CALL "%GBC%\SHRPX1inject.bat"
pushd "%GBC%\net\%LNCH%\%SHRPX1%"
copy /b "x1cfg1.prt" + "x1cfg2.ini" + "x1cfg3.prt" + "x1cfg4.ini" + "x1cfg5.prt" + "x1cfg6.ini" + "x1cfg7.prt" "%GBG%\%GAM%\%CONS%\%SHRPX1%\%CSTM%\x1turbo.cfg"
popd
)
popd
:skp