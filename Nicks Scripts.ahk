; This script modified from the original: http://www.autohotkey.com/docs/scripts/EasyWindowDrag.htm
; by The How-To Geek
; http:;www.howtogeek.com 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ALT RESIZING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Alt & LButton::
CoordMode, Mouse  ; Switch to screen/absolute coordinates.
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
if EWD_WinState = 0  ; Only if the window isn't maximized 
    SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
return

EWD_WatchMouse:
GetKeyState, EWD_LButtonState, LButton, P
if EWD_LButtonState = U  ; Button has been released, so drag is complete.
{
    SetTimer, EWD_WatchMouse, off
    return
}
GetKeyState, EWD_EscapeState, Escape, P
if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
{
    SetTimer, EWD_WatchMouse, off
    WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
    return
}
; Otherwise, reposition the window to match the change in mouse coordinates
; caused by the user having dragged the mouse:
CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
SetWinDelay, -1   ; Makes the below move faster/smoother.
WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
EWD_MouseStartY := EWD_MouseY
return

; alt-rmouse resize
; linux ftw!
!RButton::
    CoordMode, Mouse, Relative
    MouseGetPos, inWinX, inWinY, WinId
    if WinId =
        return
    WinGetPos, winX, winY, winW, winH, ahk_id %WinId%
    halfWinW = %winW%
    EnvDiv, halfWinW, 2
    halfWinH = %winH%
    EnvDiv, halfWinH, 2
    if inWinX < %halfWinW%
        MousePosX = left
    else
        MousePosX = right
    if inWinY < %halfWinH%
        MousePosY = up
    else
        MousePosY = down
    CoordMode, Mouse, Screen
    MouseGetPos, OLDmouseX, OLDmouseY, WinId
    SetWinDelay, 5 
    Loop {
        GetKeyState, state, ALT, P
        if state = U
            break
        GetKeyState, state, RButton, P
        if state = U
            break
        MouseGetPos, newMouseX, newMouseY 
        if newMouseX < %OLDmouseX% 
        { 
            Xdistance = %OLDmouseX% 
            EnvSub, Xdistance, %newMouseX%
            if MousePosX = left ; mouse is on left side of window 
            {
                EnvSub, winX, %Xdistance%
                EnvAdd, winW, %Xdistance%
            }
            else
            {
                EnvSub, winW, %Xdistance%
            }
        } 
        else if newMouseX > %OLDmouseX% 
        { 
            ; mouse was moved to the right 
            Xdistance = %newMouseX% 
            EnvSub, Xdistance, %OLDmouseX%    
            if MousePosX = left ; mouse is on left side of window
            {
                EnvSub, winW, %Xdistance%
                EnvAdd, winX, %Xdistance% 
            }
            else
            {
                EnvAdd, winW, %Xdistance%
            }
        }
        OLDmouseX = %newMouseX% 
        if newMouseY < %OLDmouseY% 
        { 
            Ydistance = %OLDmouseY% 
            EnvSub, Ydistance, %newMouseY%    
            if MousePosY = up ; mouse is on upper side of windows
            {
                EnvSub, winY, %Ydistance%
                EnvAdd, winH, %Ydistance%
            }
            else
            {
                EnvSub, winH, %Ydistance%
            }
        } 
        else if newMouseY > %OLDmouseY% 
        { 
            Ydistance = %newMouseY% 
            EnvSub, Ydistance, %OLDmouseY%    
            if MousePosY = up ; mouse is on upper side of windows
            {
                EnvAdd, winY, %Ydistance%
                EnvSub, winH, %Ydistance%
            }
            else
            {
                EnvAdd, winH, %Ydistance%
            }
        } 
        OLDmouseY = %newMouseY%
        WinMove, ahk_id %WinID%,,%winX%,%winY%,%winW%,%winH% 
    }
return






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;POKER LAYOUT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; =========================
; Pok3r Layout Marcos
; =========================

#Persistent
SetCapsLockState, AlwaysOff


; Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}


; Capslock + uon (-, home, end)

Capslock & n::SendInput {Blind}{- Down}
Capslock & n up::SendInput {Blind}{- Up}

Capslock & u::SendInput {Blind}{Home Down}
Capslock & u up::SendInput {Blind}{Home Up}

Capslock & o::SendInput {Blind}{End Down}
Capslock & o up::SendInput {Blind}{End Up}


; Make Capslock & Backspace equivalent to delete
Capslock & BS::SendInput {Del Down}
Capslock & BS up::SendInput {Del Up}

; Make Capslock & m equivalent to WinKey+m (show Desktop)
Capslock & m::SendInput {LWin Down}{m}{LWin UP}


; Make Capslock & Enter equivalent to Control+Enter
Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}


; Make Capslock & Space equivalent to Control+Space
Capslock & Space::SendInput {Ctrl down}{Space}{Ctrl up}

  
; Make Capslock & p equivalent to PrintScreen
Capslock & p::SendInput {PrintScreen}


; Make CapsLock & y open the Windows Calculator
CapsLock & y::Run calc.exe


; Make CapsLock & , the previous media key
CapsLock & ,::SendInput {Media_Prev}


; Make CapsLock & . the play/pause media key
CapsLock & .::SendInput {Media_Play_Pause}


; Make CapsLock & ? the next media key
CapsLock & ?::SendInput {Media_Next}


; Make Win Key + Capslock work like Capslock
#Capslock:
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

