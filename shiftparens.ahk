~LShift::
	KeyWait, LShift
	If (A_TimeSinceThisHotkey < 300 and A_PriorKey = "LShift") {
		Send, (
	}
return

~RShift::
	KeyWait, RShift
	If (A_TimeSinceThisHotkey < 300 and A_PriorKey = "RShift") {
		Send, )
	}
return