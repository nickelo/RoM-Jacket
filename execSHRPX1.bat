"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%XTURB%\X1.exe"
for /d %%g IN (*) DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat">>"%GBC%\logs\CreateGamSubDir.log"
CALL "%GBC%\SHRPX1exeject.bat"
pushd "%GBC%\net\%EXECT%\%SHRPX1%"
copy /b "x1cfg1.prt" + "x1cfg2.ini" + "x1cfg3.prt" + "x1cfg4.ini" + "x1cfg5.prt" + "x1cfg6.ini" + "x1cfg7.prt" "x1turbo.cfg"
popd
)
exit /b
:addto
SET /A ADDTO+=1
if %ADDTO% GEQ 2 set FNDMORE=1