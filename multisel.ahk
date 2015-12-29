;;;;;Originally Composed by Maestr0 in #ahk on freednode;;;;;
;;;;;modified for RoM-Jacket;;;;;
#Persistent
#NoEnv
SetBatchLines -1
list_txt = %1%
output_txt = %2%
gosub GUI
return
Gui:
Gui, +AlwaysOnTop
Gui, Add, Button,  xp w90 yp gButton_OK, Confirm
Gui, Add, Listview, xp yp+30 -E0x200 R5 w200 vMyList, select
Gui +Resize	
Gosub LV_populate
Gui, Show, h420, Select
return
GuiSize:
if A_EventInfo = 1
{
return
}
GuiControl, Move, MyList, % "W" . (A_GuiWidth - 10) . " H" . (A_GuiHeight - 40)
return
Button_OK:
ControlGet, Selected, List, Selected, SysListView321
FileDelete, %output_txt%
FileAppend, %Selected%, %output_txt%
GuiClose:
GuiEscape:
ExitApp
return
LV_populate:
IfExist %list_txt%
{
FileRead, list, %list_txt%
Loop, parse, list, `r`n
{
entry := A_LoopField
if !entry
continue
LV_Add("",entry)
}
}
return