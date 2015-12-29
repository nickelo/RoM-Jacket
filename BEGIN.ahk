#NoEnv
#NoTrayicon
#Singleinstance force
DetectHiddenWindows, On
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
Autotrim, off
sleep, 6000
WinWaitActive RJ_GUI
 WinActivate
Loop
{
IfWinExist, ahk_class WindowClass_0  
   WinSet, AlwaysOnTop, on 
sleep, 5000
;Tooltip % A_Index
ifWinNotExist, ROM-JACKET
{
Process, Close, BEGIN.exe
}
}
