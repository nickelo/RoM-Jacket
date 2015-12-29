	;
	; JoyDetector 1.0
	; Author:	MisterB
	;
	; Script Function:
	;	Detects additions and removals of USB Hid jotsticks / gamepads, then automatically 
	; loads Xpadder profiles based on the order in the which they were connected
	;
	; IMPORTANT TROUBLESHOOTING INFORMATION:
	; If HID events are not being detected, make sure you uninstall all USB/HID/Game devices
	; in the Device manager, and restart. You may need to plug in each of the game controllers
	; at least one to reinitialize the drivers before this script starts detecting them
	; It is a pain, but it appears to work.
	;----------------------------------------------------------------------------
	#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
	SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
	SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.

	logFile := A_ScriptDir . "\JoyDetector.log"
	FileDelete, %logFile%

	; Establish the loop for monitoring joystick status
	#SingleInstance Force
	#Persistent
	SetTimer, Main, 50
	Return


	Main:
	settingsDir := A_ScriptDir . "\Settings\"
	settingsFile := checkFile(A_ScriptDir . "\Settings\Settings.ini")
	xpadderIni := A_ScriptDir . "\Utilities\Xpadder\xpadder.ini"

	; Monitor the hidusb count - which includes joysticks
	prevHidCount = %hidCount%
	RegRead, hidCount, HKLM, System\CurrentControlSet\services\HidUsb\Enum, Count

	; Monitor HyperLaunch to determine when it is running
	; If it is running, get the system, rom, and emulator names
	prevHyperLaunchPid = %hyperLaunchPid%
	Process, Exist, HyperLaunch.exe
	hyperLaunchPid = %ErrorLevel%
	If (prevHyperLaunchPid <> hyperLaunchPid) {
	If (hyperLaunchPid <> 0) {
	IniRead, systemName, %settingsFile%, HyperLaunch, Last_System
	IniRead, romName, %settingsFile%, HyperLaunch, Last_Rom	
	IniRead, emuName, %settingsDir%%systemName%.ini, exe info, exe
	} Else {
	systemName := ""
	romName := ""
	emuName := ""
	}
	}

	; If there are HID or HyperLaunch changes, process them and load
	; the correct Xpadder profile
	If (hidCount <> prevHidCount) {
	UpdateJoysticks()
	LoadXpadderProfiles()
	} Else If (hyperLaunchPid <> prevHyperLaunchPid) {
	LoadXpadderProfiles()
	} Else {
	Return
	}


	;
	; Iterates through all connected joysticks / gamepads, gathering information
	; on the order in which they were connected, device type, etc.
	;
	UpdateJoysticks() {
	Global

	; Reset the joystick data
	Loop, 4 {
	; OEM name of the device
	joyName%A_Index% := ""

	; Number of the device, as listed in "Game Controllers"
	joyControllerNum%A_Index% := "" 

	; Number of the device, based on the order in which it was connected
	joyPortNum%A_Index% := ""

	; Hid identifier for the device
	joyHidId%A_Index% := ""

	; XPadder ID for the device
	joyXpadderId%A_Index% := ""
	}

	; Iterate through all HID devices
	hidIndex := -1
	joyPortNum := 0
	Loop {
	joyName := ""
	joyContNum := ""

	; Continue the loop while there are HIDs remaining
	hidIndex += 1
	RegRead, hidIdentifier, HKLM, System\CurrentControlSet\services\HidUsb\Enum, %hidIndex%
	If (ErrorLevel = 1) {
	Break
	}

	; Parse the HID identifier to get the VID&PID string for additional lookups
	StringGetPos, startPos, hidIdentifier, \
	startPos +=2
	StringMid, hidIdentifier, hidIdentifier, %startPos%, 17

	; Is this HID a joystick? If so, get the name and the connection number
	RegRead, joyName, HKCU, System\CurrentControlSet\Control\MediaProperties\P rivateProperties\Joystick\OEM\%hidIdentifier%, OEMName
	If (ErrorLevel = 1 or joyName = "USB Receiver" or joyName = "USB Human Interface Device") {
	; Not a joystick - move to next HID
	Continue 
	} Else {
	; Get the number of the joystick, based on order of connection
	joyPortNum += 1
	}

	; Get the Joystick number, based on DirectInput / Game Controllers Control Panel
	Loop, HKCU, SYSTEM\CurrentControlSet\Control\MediaResources\Jo ystick\DINPUT.DLL\CurrentJoystickSettings
	{
	RegRead, joyIdentifier, HKCU, SYSTEM\CurrentControlSet\Control\MediaResources\Jo ystick\DINPUT.DLL\CurrentJoystickSettings, %A_LoopRegName%
	; Find this device in the list, then parse out its number (1 or 2 digits)
	If (joyIdentifier == hidIdentifier) {
	StringMid, joyControllerNum, A_LoopRegName, 9, 2
	If joyControllerNum Is Not Number
	StringMid, joyControllerNum, A_LoopRegName, 9, 1
	Break
	}
	}

	; Add this to the list of joysticks
	Loop, 4 {
	If (joyName%A_Index% = "") {
	joyName%A_Index% := joyName
	joyControllerNum%A_Index% := joyControllerNum
	joyPortNum%A_Index% := joyPortNum
	joyHidId%A_Index% := hidIdentifier
	joyXpadderId%A_Index% := GetXpadderControllerId(hidIdentifier)
	Break
	}
	}	
	}

	; Display the joystick data
	msg:= "Joystick event:"
	Loop, 4 {
	msg:= msg . "`nDetected Joystick " . A_Index . ":`nName: " . joyName%A_Index% . "`nController #: " . joyControllerNum%A_Index% . "`nPort #: " . joyPortNum%A_Index% . "`nHID: " . joyHidId%A_Index% . "`nXID: " . joyXpadderId%A_Index%
	}
	Log(msg)
	Return
	}


	;
	; Determine which Xpadder profile to assign to each connected joystick / gamepad.
	; Tries to find the best available profile in the "Keymapper Profiles" folder, 
	; then calls Xpadder to load them.
	;
	LoadXpadderProfiles() {
	Global

	keymapper := "xpadder"
	; Load the Hyperspin settings file, and get the paths to xpadder and its profiles
	keymapperFullPath := IniReadCheck(settingsFile, "HyperLaunch", "Keymapper_Path", A_Space)
	keymapperProfilePath := IniReadCheck(settingsFile, "HyperLaunch", "Keymapper_Profiles_Path", A_ScriptDir . "\Keymapper Profiles\")
	; If the A_ScriptDir variable (not its value) is present in the ini file, replace with the actual script directory name
	IfInString, keymapperProfilePath, `%A_ScriptDir`%
	{
	StringReplace, keymapperProfilePath, keymapperProfilePath, `%A_ScriptDir`%, %A_ScriptDir%
	IniWrite, %keymapperProfilePath%, %settingsFile%, HyperLaunch, Keymapper_Profiles_Path
	}	

	; Define the basic path to each of the possible profile types
	SplitPath, keymapperFullPath, keymapperExe, keymapperPath, keymapperExt ; splitting pathname into variables
	hyperspinProfile = %keymapperProfilePath%HyperSpin ; profile while not in an emu and in HyperSpin
	defaultProfile = %keymapperProfilePath%Default ; default profile for all systems, loaded when there is no system or rom specific profile
	systemProfile = %keymapperProfilePath%%systemName%\%systemName% ; profile for a specific system, loaded when no rom specific profile is found
	romProfile = %keymapperProfilePath%%systemName%\%romName% ; rom specific profile
	blankProfile = %keymapperProfilePath%%systemName%\Blank ; rom specific profile
	;	hyperspinProfile := hyperspinProfile . ".xpadderprofile", defaultProfile := defaultProfile . ".xpadderprofile", systemProfile := systemProfile . ".xpadderprofile", romProfile := romProfile . ".xpadderprofile", blankProfile := blankProfile . ".xpadderprofile"

	; Determine which profile type to use and define fallbacks
	Process, Exist, hyperspin.exe
	hyperspinPid = %ErrorLevel%
	Process, Exist, hyperlaunch.exe
	hyperlaunchPid = %ErrorLevel%

	; If Hyperlaunch is running, profile search order is: Rom, System, Default
	If (hyperlaunchPid > 0) 
	{
	arPreferredProfiles = %romProfile%|%systemProfile%|%defaultProfile%|%bla nkProfile%
	}
	; If Hyperspin is running, profile search order is: Hyperspin, Default
	Else If (hyperspinPid > 0) 
	{
	arPreferredProfiles = %hyperspinProfile%|%defaultProfile%|%blankProfile%
	}
	; If nothing is running, profile search order is: Default
	Else 
	{
	arPreferredProfiles = %defaultProfile%|%blankProfile%
	}

	; For each of the 4 profiles...
	Loop, 4 
	{
	profileNum := A_Index
	Log("Looking for profile" . profileNum)
	; Set up the profile path components
	playerLabel:= " [p" . A_Index . "]"
	joyName:= " [" . joyName%A_Index% . "]"

	; 
	Loop, Parse, arPreferredProfiles, | 
	{
	profilePath:= A_LoopField

	; First look for the most detailed profile name:
	; Profile [JoyName] [PlayerNum]
	profile:= profilePath . joyName . playerLabel . ".xpadderprofile"
	Log("Searching for: " . profile)
	If (FileExist(profile)) 
	{
	Log("Found: " . profile)
	profile%profileNum% := profile
	break
	}
	; If not found, try
	; Profile [JoyName]
	profile:= profilePath . joyName . ".xpadderprofile"
	Log("Searching for: " . profile)
	If (FileExist(profile)) 
	{
	Log("Found: " . profile)
	profile%profileNum% := profile
	break
	}
	; If not found, try
	; Profile
	profile:= profilePath . ".xpadderprofile"
	Log("Searching for: " . profile)
	If (FileExist(profile)) 
	{
	Log("Found: " . profile)
	profile%profileNum% := profile
	break
	}
	}	
	}

	RunXpadder(profile1,profile2,profile3,profile4)

	; Xpadder will steal focus from the emulator if we change controller during a game
	; This will try to restore focus to the pid of the last emulator launched
	Process, Exist, %emuName%
	emuPid = %ErrorLevel%
	Sleep, 1000	; 1 second is best, shorter creates problems
	WinActivate, ahk_pid %emuPid%
	WinMaximize, ahk_pid %emuPid%

	Return
	}


	;
	; Runs Xpadder with the provided profiles
	; This function manipulates the Xpadder ini file to ensure that the joysticks / gamepads
	; are assigned profiles based on the order in which they were plugged in.
	; XPADDER NORMALLY LOADS BASED ON THE WINDOWS CONTROLLER ORDER
	; MANUAL MAINPULATION OF INI NEEDED TO EXPLICITLY ASSIGN THE ORDER
	;
	RunXpadder(profile1,profile2="",profile3="",profile4="") {
	Global

	; Close XPadder if it is open
	Process, Close, xpadder.exe

	; Clean up the XPadder ini file and remove the cached controller info
	; When XPadder restarts, this script will then will repopulate the controller 
	; list based on the order in which they were plugged in
	IniDelete, %xpadderIni%, Controllers

	Loop, 4 {
	name := joyName%A_Index%
	id := joyXpadderId%A_Index%
	IniWrite, %name%, %xpadderIni%, Controllers, Controller%A_Index%Name
	IniWrite, %id%, %xpadderIni%, Controllers, Controller%A_Index%ID
	IniWrite, controllers\%name%.xpaddercontroller, %xpadderIni%, Controllers, Controller%A_Index%File
	}

	Log("Run, " . keymapperExe . " """ . profile1 . """ """ . profile2 . """ """ . profile3 . """ """ . profile4 . """ /M, " . keymapperPath)
	Run, %keymapperExe% "%profile1%" "%profile2%" "%profile3%" "%profile4%" /M, %keymapperPath%, , Hide
	}


	;
	; Converts the HID ID into the decimal format stored in the
	; XPadder ini file
	;
	GetXpadderControllerId(HidId) {
	Hex1 := "0x" . SubStr(HidId, 5, 2)
	Hex2 := "0x" . SubStr(HidId, 7, 2)
	Hex3 := "0x" . SubStr(HidId, 14, 2)
	Hex4 := "0x" . SubStr(HidId, 16, 2)
	SetFormat, IntegerFast, D
	Dec1 := Hex1 + 0
	Dec2 := Hex2 + 0
	Dec3 := Hex3 + 0
	Dec4 := Hex4 + 0
	XpadderId := Dec1 . "," . Dec2 . "," . Dec3 . "," . Dec4
	Return XpadderId
	}


	;
	; The following functions are utilities 'borrowed' from the
	; HyperLaunch source code
	;


	CheckFile(file,msg="",timeout=6){
	IfNotExist, %file%
	{
	If msg
	ScriptError(msg, timeout)
	Else
	ScriptError("Cannot find " . file, timeout)
	}
	Return %file%
	}

	ScriptError(error,timeout=6){
	MsgBox,48,Error,%error%,%timeout%
	Log(error)
	ExitApp
	}

	Log(text,state="") {
	FormatTime, logTime,, hh:mm:ss tt |%A_Space%%A_Space%
	Global logFile
	If state
	FileAppend, %text%`n, %logFile%
	Else
	FileAppend, %logTime%%text%`n, %logFile%
	}

	IniReadCheck(file,section,key,defaultvalue="") {
	IniRead, inivar, %file%, %section%, %key%
	If ( inivar = "ERROR" ) {
	IniWrite, %defaultvalue%, %file%, %section%, %key%
	Return defaultvalue
	}
	Return iniVar
	}
	ghutch92
	04-10-2013, 06:32 AM
	Nice. Here this might help.



	;#########################
	; GetJoyName(port[,Vid][,Pid])
	; port = 0-15
	; Vid = Vendor ID in hex without the 0x prefix
	; Pid = Product ID in hex without the 0x prefix
	; Vid and Pid are set by this function, you do not need to know their values.
	; Returns OemName for joystick
	;#########################
	GetJoyName(port,ByRef Vid = "", ByRef Pid = "") {
	VarSetCapacity(joybank,1024,0)
	VarSetCapacity(joy_State, 512)
	Vid := "", Pid := "" ; erase values for new controller
	joy_Error := DllCall("winmm\joyGetPosEx", "ptr", port, "ptr", &joy_State)
	If (joy_Error = 167)
	{
	joy_State := ""
	VarSetCapacity(joy_State, 512)
	joy_Error := DllCall("winmm\joyGetPosEx", "ptr", port, "ptr", &joy_State)
	;If joy_Error = 167
	;Log("The joystick in port " . port . " is disconnected")
	}
	If (joy_Error = 0) ;an error value means joystick is not connected
	{
	i:=0
	Loop, 1024
	{
	;get driver information
	err :=dllcall("winmm.dll\joyGetDevCapsA",Int,port,UInt,&joybank,UInt,i)
	i++
	; a successful dllcall returns a 0
	If (err = 0)
	{
	;converting decimal values to hex since windows uses the hex value more often
	offset = 0
	Loop, 2 
	{
	SetFormat, IntegerFast, hex
	ret := NumGet(&joybank,offset,"UShort")
	ret .= ""
	SetFormat, IntegerFast, d
	; remove the 0x we don't need it and padding it with 0's to have a width of four
	; advice: leave these two lines out if using this function in other scripts
	StringTrimLeft,ret,ret,2
	ID%A_Index% := SubStr("0000" . ret,-3)
	offset := offset+2
	}
	Vid := ID1, Pid := ID2
	}
	}
	}
	If !Vid OR !Pid OR joy_Error
	joy_name := ""
	Else
	{
	regFolder := "VID_" . Vid . "&PID_" . Pid
	RegRead, joy_name, HKEY_CURRENT_USER, System\CurrentControlSet\Control\MediaProperties\P rivateProperties\Joystick\OEM\%regFolder%, OEMName
	If ErrorLevel
	RegRead, joy_name, HKEY_LOCAL_MACHINE, SYSTEM\CurrentControlSet\Control\MediaProperties\P rivateProperties\Joystick\OEM\%regFolder%, OEMName
	}
	Return %joy_name%