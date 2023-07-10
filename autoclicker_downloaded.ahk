game_title = Lunar Client 1.8.9 (v2.7.2-2324)

#If WinActive(game_title)
LButton::
ControlGet, MHWND, Hwnd,,, %game_title%
Random, SleepAmount, 50, 70
SetTimer, RepeatClick, %SleepAmount%
Gosub, RepeatClick
while GetKeyState("LButton", "P")
{
    
}
SetTimer, RepeatClick, Off
Return
#If

#If WinActive(game_title)
RButton::
ControlGet, MHWND, Hwnd,,, %game_title%
Random, SleepAmount, 40, 60
SetTimer, RepeatClick2, %SleepAmount%
Gosub, RepeatClick2
while GetKeyState("RButton", "P")
{
    
}
SetTimer, RepeatClick2, Off
Return
#If

RepeatClick:
SetControlDelay -1
ControlClick,, ahk_id %MHWND%,,,, NA
Return

RepeatClick2:
SetControlDelay -1
ControlClick,, ahk_id %MHWND%,,Right,, NA
Return