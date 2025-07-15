#NoEnv
#SingleInstance force
DetectHiddenWindows, On
SetControlDelay -1

; ==========================
; === DEFINE HOTKEYS =======
; ==========================

; --- Normal keys ---
BindKey("~1", "1")
BindKey("~2", "2")
BindKey("~3", "3")
BindKey("~4", "4")
BindKey("~5", "5")
BindKey("~6", "6")
BindKey("~7", "7")
BindKey("~8", "8")
BindKey("~9", "9")
BindKey("~0", "0")
BindKey("~-", "-")
BindKey("~=", "=")

BindKey("~q", "q")
BindKey("~e", "e")
BindKey("~r", "r")
BindKey("~g", "g")
BindKey("~f", "f")
BindKey("~x", "x")
BindKey("~c", "c")
BindKey("~z", "z")
BindKey("~t", "t")
BindKey("~l", "l")
BindKey("~space", "{space}")
BindKey("~[", "[")
BindKey("~]", "]")

; --- Shift-modified keys ---
BindShiftKey("~+r", "r")
BindShiftKey("~+d", "d")
BindShiftKey("~+1", "1")
BindShiftKey("~+2", "2")
BindShiftKey("~+3", "3")
BindShiftKey("~+z", "z")

; --- Alt-modified keys ---
BindAltKey("~!1", "1")
BindAltKey("~!2", "2")
BindAltKey("~!3", "3")

; --- Ctrl-modified keys (optional) ---
;BindCtrlKey("~^e", "e")
;BindCtrlKey("~^r", "r")
;BindCtrlKey("~^d", "d")
;BindCtrlKey("~^f", "f")
;BindCtrlKey("~^c", "c")

; ==========================
; === BINDING FUNCTIONS ====
; ==========================

BindKey(hotkey, key) {
	fn := Func("SendWowKey").Bind(key, 0)
	Hotkey, %hotkey%, % fn
}

BindShiftKey(hotkey, key) {
	fn := Func("SendWowKey").Bind(key, 1)
	Hotkey, %hotkey%, % fn
}

BindAltKey(hotkey, key) {
	fn := Func("SendWowKey").Bind(key, 2)
	Hotkey, %hotkey%, % fn
}

BindCtrlKey(hotkey, key) {
	fn := Func("SendWowKey").Bind(key, 3)
	Hotkey, %hotkey%, % fn
}

; ==========================
; === MAIN SEND FUNCTION ===
; ==========================

SendWowKey(k, s) {
	KeyWait, %k%
	IfWinActive, OMB
	{
		WinGet, wowid, List, OMB
		Loop, %wowid%
		{
			this_id := wowid%A_Index%
			IfWinActive, ahk_id %this_id%
				continue

			if (s = 1)
				ControlSend,, {Shift Down}%k%{Shift Up}, ahk_id %this_id%
			else if (s = 2)
				ControlSend,, {Alt Down}%k%{Alt Up}, ahk_id %this_id%
			else if (s = 3)
				ControlSend,, {Ctrl Down}%k%{Ctrl Up}, ahk_id %this_id%
			else
				ControlSend,, %k%, ahk_id %this_id%
		}
	}
	return
}

; ==========================
; === UTILITIES ============
; ==========================

\::Suspend
;!r::Reload
;!q::ExitApp
