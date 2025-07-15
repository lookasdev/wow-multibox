SetKeyDelay, 75, 50
SetControlDelay, -1
SetTitleMatchMode, 2

+]::
; --- Simulate Ctrl+1
Send, ^1
Sleep, 200
Send, username1
Sleep, 100
Send, {Tab}
Sleep, 100
Send, password1
Sleep, 100
Send, {Enter}
Sleep, 500 ; wait before next account

; --- Simulate Ctrl+2
Send, ^2
Sleep, 200
Send, username2
Sleep, 100
Send, {Tab}
Sleep, 100
Send, password2
Sleep, 100
Send, {Enter}
Sleep, 500

; --- Simulate Ctrl+3
Send, ^3
Sleep, 200
Send, username3
Sleep, 100
Send, {Tab}
Sleep, 100
Send, password3
Sleep, 100
Send, {Enter}
Sleep, 500

; --- Simulate Ctrl+4
Send, ^4
Sleep, 200
Send, username4
Sleep, 100
Send, {Tab}
Sleep, 100
Send, password4
Sleep, 100
Send, {Enter}
Sleep, 500

; --- Simulate Ctrl+5
Send, ^5
Sleep, 200
Send, username5
Sleep, 100
Send, {Tab}
Sleep, 100
Send, password5
Sleep, 100
Send, {Enter}
return
