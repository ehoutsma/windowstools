#SingleInstance Force

SetCapsLockState, AlwaysOff

#If GetKeyState("CapsLock", "P")
	*h::Left
	*j::Down
	*k::Up
	*l::Right
	*a::Left
	*s::Down
	*w::Up
	*d::Right
	*z::Volume_Down
	*x::Volume_Up
	*c::Volume_Mute
	*e::Media_Play_Pause
	*t::Media_Next
	*r::Media_Prev
	*p::
	If (WinExist("ahk_exe KeePassXC.exe") && WinActive("ahk_exe KeePassXC.exe"))
		WinMinimize
	Else
	{
		Run C:\Program Files\KeePassXC\KeePassXC.exe
		WinActivate, ahk_exe KeePassXC.exe
	}
	Return
#If

#IfWinActive, ahk_class PPTFrameClass
	^+v::
		Send, {Alt down}R
		SetKeyDelay, 100
		Send, V
		SetKeyDelay, 100
		Send, T{Alt up}
	return