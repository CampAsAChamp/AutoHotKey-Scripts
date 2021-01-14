#NoEnv
SendMode Input  
SetWorkingDir %A_ScriptDir%  

MsgBox, Press F12 to toggle on and off! `n`nRapid Fire Mod created by TryForMy!

F12::Suspend, Toggle ; Add toggle here.


~LButton:: ; Works on MB1 Down Function
	Loop
	{
	if GetKeyState("LButton", "P")
	{
	SendInput {LButton DownTemp}
	Sleep 14
	SendInput {LButton Up}
	Sleep 14
	}
	else
	break
	}

Return
