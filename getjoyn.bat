:JOYOEM
if not exist "JoystickOEMName.dll" "%SEVENZIP%" e -y "%GBC%\JOYOEMN.zip" -o"%GBC%" "JoystickOEMName.dll"
del /q joyoemnames.ini
"%GBC%\getjoy.exe" 
set urlNthL=1
set JOY1NAME=
for /f "delims=" %%a in ('Readline.exe "%GBC%\joyoemnames.ini" /L:%urlNthL%') do set JOY1NAME=%%~a

:JOYOEMCONT
set urlNthL=2
set JOY1NAME=
for /f "delims=" %%a in ('Readline.exe "%GBC%\joyoemnames.ini" /L:%urlNthL%') do set JOY1NAME=%%~a

:JOY2NAME
