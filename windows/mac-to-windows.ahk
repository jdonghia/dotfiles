LWin::LCtrl

#NoEnv ; Recommended for performance and compatibility.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; === Remap Ctrl+Space to Win+Space ===
; This hotkey sends the "Windows Key + Space" combination
; when you press "Ctrl + Space".

^Space::Send, #{Space}
