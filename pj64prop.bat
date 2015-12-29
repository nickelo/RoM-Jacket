"%GBC%\wbox.exe" "RJ_GUI" "Select the Plugin Type" "NRage;Jabo" /DB=1
if %ERRORLEVEL%==1 goto :NRAGE
if %ERRORLEVEL%==2 goto :JABO
goto ::QUITOUT
:NRAGE
call "%GBC%\NRage.bat">>"%GBC%\logs\Nrage.log"
goto ::QUITOUT
:JABO
call "%GBC%\Jabo.bat">>"%GBC%\logs\Jabo.log"
goto ::QUITOUT