#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

global Lclickeron := false, Rclickeron := false
global i := 80, j := 60
game_title = Lunar Client 1.8.9 (v2.7.2-2324)

#If WinActive(game_title)
f::
Lclickeron := !Lclickeron
Gui +AlwaysOnTop -Caption +Border
Gui, Font, S10
ifequal Lclickeron, 0, Gui, Add, Text,, Left autoclicker currently set to false
ifequal Lclickeron, 1, Gui, Add, Text,, Left autoclicker currently set to true
Gui, Show, NA
Sleep, 1000
Gui, Destroy
Return

g::
Rclickeron := !Rclickeron
Gui +AlwaysOnTop -Caption +Border
Gui, Font, S10
ifequal Rclickeron, 0, Gui, Add, Text,, Right autoclicker currently set to false
ifequal Rclickeron, 1, Gui, Add, Text,, Right autoclicker currently set to true
Gui, Show, NA
Sleep, 1000
Gui, Destroy
Return

RButton::
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
	Click, Right
}
return

LButton::
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
	Click, Left
}
return
#If