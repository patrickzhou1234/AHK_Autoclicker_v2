#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

global Lclickeron := false, Rclickeron := false
global i := 80, j := 60
game_title = Lunar Client 1.8.9 (v2.10.3-2336)

#If WinActive(game_title)
f::
Lclickeron := !Lclickeron
Gui +AlwaysOnTop -Caption +Border
Gui, Color, 0x05a8ff
Gui, Font, S20
ifequal Lclickeron, 0, Gui, Add, Text,, Left autoclicker turned off
ifequal Lclickeron, 1, Gui, Add, Text,, Left autoclicker turned on
Gui, Show, x0 y0 NA
Sleep, 1000
Gui, Destroy
Return

g::
Rclickeron := !Rclickeron
Gui +AlwaysOnTop -Caption +Border
Gui, Color, 0x05a8ff
Gui, Font, S20
ifequal Rclickeron, 0, Gui, Add, Text,, Right autoclicker turned off
ifequal Rclickeron, 1, Gui, Add, Text,, Right autoclicker turned on
Gui, Show, x0 y0 NA
Sleep, 1000
Gui, Destroy
Return

*RButton::
if (Rclickeron) {
	While GetKeyState("RButton","P")
	{
		MouseClick, right
		Random, SleepAmount, j, i
		if (i>40.1) {
			i-=0.1
		}
		if (j>20.1) {
			j-=0.1
		}
		Sleep, %SleepAmount%
	}
	i := 80
	j := 60
} else {
	Send {RButton down}
}
return

*RButton up::
if (!Rclickeron) {
	Send {RButton up}
}
Return

*LButton::
if (Lclickeron) {
	While GetKeyState("LButton","P")
	{
		MouseClick, left
		Random, SleepAmount, j, i
		if (i>40.1) {
			i-=0.1
		}
		if (j>20.1) {
			j-=0.1
		}
		Sleep, %SleepAmount%
	}
	i := 80
	j := 60
} else {
	Send {LButton down}
}
return

*LButton up::
if (!Lclickeron) {
	Send {LButton up}
}
Return
#If