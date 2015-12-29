#Singleinstance Force
#NoEnv
SetTitleMatchMode 2
DetectHiddenWindows, On
SendMode Input
SetWorkingDir %A_ScriptDir%
Run,cmd /c ditool.exe >dit.ini
sleep, 800
Send {Enter}
Blockinput off
exit