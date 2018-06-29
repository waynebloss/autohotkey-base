; ### Application Hot Keys ###

GroupAdd EscWindowClose,Calculator

; ### Global Hot Keys

; ## Notepad            [Ctrl + Alt + N]
^!n::
Run notepad
; - Using NotepadReplacer instead of pointing to an individual program - 
;   https://www.binaryfortress.com/NotepadReplacer/
; Run "C:\Program Files (x86)\Notepad++\notepad++.exe", %UserProfile%\Desktop
; Run "C:\Program Files\Sublime Text 3\sublime_text.exe", C:\Program Files\Sublime Text 3
; Run "C:\Program Files\Microsoft VS Code\Code.exe", C:\Program Files\Microsoft VS Code
return

; ## Calculator         [Ctrl + Alt + C]
^!c::
Run calc1
return

; ## Web Browser        [Ctrl + Alt + M]
^!m::
; Run "C:\scripts\chrome.bat"
Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe", C:\Program Files (x86)\Google\Chrome\Application
return

; ### Group Definitions ###

; ## EscWindowClose
; - Closes a window when the user to presses the `Esc` key.
; - Usage: GroupAdd EscWindowClose,TitleOfTheWindow
#IfWinActive ahk_group EscWindowClose
Escape::
#IfWinActive
WinClose
return

; ### Examples ###

; ## Code to enable "Middle-click taskbar item closes it":
; - Using 7+ Taskbar Tweaker instead, https://rammichael.com/7-taskbar-tweaker
;
;ShouldActivateMButton() {
;   MouseGetPos, xpos, ypos, , ControlUnderMouse
;   return ControlUnderMouse = "MSTaskListWClass1"
;}
; 
;#If ShouldActivateMButton()
;MButton::
;    MouseClick, Right
;    Sleep, 200
;    Send, {Up}
;    Send, {Enter}
;    return
; 