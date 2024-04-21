MsgBox Format("You are using AutoHotkey v{1} {2}-bit.", A_AhkVersion, A_PtrSize*8)

result := MsgBox("This one requires parentheses.",, "OKCancel")
MsgBox "This one doesn't. The result was " result "."

t := "column 1`tcolumn 2`nvalue 1`tvalue 2"
Loop Parse t, "`n"
{
    rowtext := A_LoopField
    rownum := A_Index  ; Save this for use in the second loop, below.
    Loop Parse rowtext, "`t"
    {
        MsgBox rownum ":" A_Index " = " A_LoopField
    }
}

SetTimer () => MsgBox("Hello!"), -1000  ; Says hello after 1 second.
