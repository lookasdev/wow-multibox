DetectHiddenWindows, On ;this for background sending
SetControlDelay -1

;NULL normal
;1 shift
;2 alt
;3 ctrl

;~v::sendWowKey("v")
;return
;~b::sendWowKey("b")
;return

~1::sendWowKey("1")
return
~2::sendWowKey("2")
return
~3::sendWowKey("3")
return
~4::sendWowKey("4")
return
~5::sendWowKey("5")
return
~6::sendWowKey("6")
return
~7::sendWowKey("7")
return
~8::sendWowKey("8")
return
~9::sendWowKey("9")
return
~0::sendWowKey("0")
return
~-::sendWowKey("-")
return
~=::sendWowKey("=")
return

~q::sendWowKey("q")
return
~e::sendWowKey("e")
return
~r::sendWowKey("r")
return
~f::sendWowKey("f")
return
~x::sendWowKey("x")
return
~c::sendWowKey("c")
return
~+r::sendWowKey("r", 1)
return
~+d::sendWowKey("d", 1)
return

;~+space::sendWowKey("space", 1)
;return

~+1::sendWowKey("1", 1)
return
~+2::sendWowKey("2", 1)
return
~+3::sendWowKey("3", 1)
return

~!1::sendWowKey("1", 2)
return
~!2::sendWowKey("2", 2)
return
~!3::sendWowKey("3", 2)
return
~^e::sendWowKey("e", 3)
return
~^r::sendWowKey("r", 3)
return
~^d::sendWowKey("d", 3)
return
~^f::sendWowKey("f", 3)
return
~^c::sendWowKey("c", 3)
return

~z::sendWowKey("z")
return
~t::sendWowKey("t")
return

~space::sendWowKey("{space}")
return

~[::sendWowKey("[")
return
~]::sendWowKey("]")
return

~!l::sendWowKey("l", 2)
return

sendWowKey(k, s = 0)
{
	KeyWait %k%
	IfWinActive, WOB
	{
		WinGet, wowid, List, WOB
		Loop, %wowid%
		{
			this_id := wowid%A_Index%
			IfWinActive, ahk_id %this_id%
				continue				
			if s = 1
				ControlSend,, {shift down}%k%{shift up}, ahk_id %this_id%
			else if s = 2
				ControlSend,, {alt down}%k%{alt up}, ahk_id %this_id%
			else if s = 3
				ControlSend,, {ctrl down}%k%{ctrl up}, ahk_id %this_id%
			else
				ControlSend,, %k%, ahk_id %this_id%
		}
	}
	return
}

\::Suspend 
;!r::Reload 
;!q::ExitApp