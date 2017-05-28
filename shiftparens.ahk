$LShift::
$RShift::
  Key := SubStr(A_ThisHotkey,2)
  Send, {%Key% Down}
  KeyWait, %Key%
Send, {%Key% Up}
  If ( A_PriorHotkey == A_ThisHotkey )
       SendRaw, % InStr(Key,"L") ? "(" : ")"
Return