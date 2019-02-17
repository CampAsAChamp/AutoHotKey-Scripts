#CommentFlag //
#InstallKeybdHook

// Author: Nick Schneider
// Description: Addes Some Pok3r functionality and other easier shortcuts closer to the home row

// =========================
// Pok3r Layout Marcos
// =========================

#Persistent
SetCapsLockState, AlwaysOff

// Shift + CapsLock: Toggles CapsLock
+CapsLock::CapsLock

// Capslock + jkli (left, down, up, right)

Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}


// Capslock + uon (-, _, {, }, home, end)
CapsLock & v:: Send, {rshift down}{V}{rshift up}

CapsLock & g:: Send, {rshift down}{[}{rshift up}

CapsLock & h:: Send, {rshift down}{]}{rshift up}

CapsLock & t:: Send, {rshift down}{{}{rshift up}

CapsLock & y:: Send, {rshift down}{}}{rshift up}

CapsLock & m:: Send, {rshift down}{-}{rshift up}

Capslock & n::SendInput {Blind}{- Down}
Capslock & n up::SendInput {Blind}{- Up}

Capslock & u::SendInput {Blind}{Home Down}
Capslock & u up::SendInput {Blind}{Home Up}

Capslock & o::SendInput {Blind}{End Down}
Capslock & o up::SendInput {Blind}{End Up}


// Make Capslock & Backspace equivalent to delete
Capslock & BS::SendInput {Del Down}
Capslock & BS up::SendInput {Del Up}



// Make Capslock & Enter equivalent to Control+Enter
//Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}


// Make Capslock & Space equivalent to Control+Space
//Capslock & Space::SendInput {Ctrl down}{Space}{Ctrl up}

  
// Make Capslock & p equivalent to PrintScreen
Capslock & p::SendInput {PrintScreen}


// Make CapsLock & , the previous media key
CapsLock & q::SendInput {Media_Prev}


// Make CapsLock & . the play/pause media key
CapsLock & w::SendInput {Media_Play_Pause}
CapsLock & e::SendInput {Media_Next}



// Make Win Key + Capslock work like Capslock
#Capslock:
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return
