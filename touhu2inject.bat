if "%CD%"=="%GBG%\%GAM%\%CONS%\%CSTCONS%" exit /b
for %%A in ("%TOUHLNK%") do set Shortcut=%%~A
echo set WshShell = WScript.CreateObject("WScript.Shell")>DecodeShortCut.vbs
echo set Lnk = WshShell.CreateShortcut(WScript.Arguments.Unnamed(0))>>DecodeShortCut.vbs
echo wscript.Echo Lnk.TargetPath>>DecodeShortCut.vbs
set vbscript=cscript //nologo DecodeShortCut.vbs
For /f "delims=" %%T in ( ' %vbscript% "%Shortcut%" ' ) do set target=%%T
del DecodeShortCut.vbs
pushd "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%"
"%GBC%\fart.exe" "*.bat" "REM [REG]" "REG ADD \"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers\" /f /v \"%target%\" /t REG_SZ /d \"WINXPSP3 RUNASADMIN\""
"%GBC%\fart.exe" "*.bat" "REM [LNK]" "start /w \"\"  \"^%%GAMNAM%%.lnk\""
popd